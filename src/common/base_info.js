'use strict';

import _ from 'lodash';
import {log} from '../lib/log_helper';
import {handleServiceResult} from './controller';
import {SeasonManager} from '../model/service_base_info';

export function getGradeType(grade) {
  // 不能用做判断学员的年级类型
  if (grade < 7) {
    return 0;
  }
  else if (grade < 10) {
    return 1;
  } else {
    return 2;
  }
}

export const SUBJECTS = {
  '': 0, 'chinese': 1, 'math': 2, 'english': 3, 'physics': 4,
  'chemistry': 5, 'biology': 6, 'history': 7, 'geography': 8, 'politics': 9,
  'artsSynthesis': 10, 'scienceSynthesis': 11, 'other': 12, 'science': 13
};

export const HANDOUT_SEMESTER = {
  '总复习': 14,
  '必修': 15, '选修1': 16, '选修2': 17, '选修3': 18, '选修4': 19, '选修5': 20, '第一册': 21,
  '第二册': 22, '第三册': 23, '第四册': 24, '第五册': 25
};
// export const SUBJECTS = ['', 'chinese', 'math', 'english', 'physics', 'chemistry',
//   'biology', 'history', 'geography', 'politics', 'artsSynthesis',
//   'scienceSynthesis', 'other', 'science'];

// 0: 由原账户课次转换来的卡  1: 购买的约课卡  2:通用约课卡X+1(没有学季和学科) 3:体验课卡
// export const CARD_TYPES = ['original', 'buy', 'common', 'experience'];

// export const SEASON_TYPES = ['', 'autumn', 'winter', 'spring', 'summer'];

// export const GRADE_TYPE = ['primary', 'junior', 'senior'];

async function _getSeasons(seasonIds) {
  _.remove(seasonIds, id => {
    return id <= 0
  });
  const manager = new SeasonManager();
  let seasons = await manager.getSeason(seasonIds);
  seasons = handleServiceResult(seasons);
  if (seasons.length === 0) {
    return seasons;
  }
  const fields = ['id', 'year', 'seasonType'];
  seasons = _.map(seasons, (item) => {
    return _.pick(item, fields);
  });
  return seasons;
}

export async function determineCardImage(cards) {
  let seasonIds = _.map(cards, item => {
    return item.seasonId;
  });
  let seasons = await _getSeasons(seasonIds);
  let seasonMap = new Map();
  if (seasons.length !== 0) {
    _.map(seasons, (item) => {
      seasonMap.set(item.id, item);
    });
  }
  cards = _.map(cards, (card) => {
    // let subject = SUBJECTS[card.subjectId] || '';
    let subject = card.subjectId || 0;
    let cardType = card.cardType;
    if (cardType === undefined) {
      return null;
    }
    let season = seasonMap.get(card.seasonId) || 0;
    let seasonType = season.seasonType || 0;
    let year = season.year || 0;
    let gradeType = card.gradeType;
    // let tempArr = [year, SEASON_TYPES[seasonType], subject, cardType];
    let tempArr = [seasonType, gradeType, subject, cardType];
    // _.remove(tempArr, (item) => {
    //   return ;
    // });
    card.image = '/image/rechargecard/' + tempArr.join('_') + '.jpg';
    card.year = year;
    card.seasonType = seasonType;
    return card;
  });
  _.remove(cards, card => {
    return !card;
  });
  return cards;
}

const _SUB_VERSION_RELATION = { //科目版本对应关系
  1: {   //初中
    2: {  //数学id
      1: '人教版',
      2: '北师版',
      3: '浙教版',
      4: '湘教版',
      5: '华师版',
      6: '冀教版',
      7: '沪科版',
      8: '苏科版',
      9: '青岛版',
      10: '京教版',
      20: '五四制鲁教版',
      21: '五四制人教版'
    },
    3: {
      1: '人教版',
      // 2: '北师版',
      // 6: '冀教版',
      // 10: '京教版',
      // 21: '五四制人教版',
      // 20: '五四制鲁教版',
      // 27: '五四制EEC版',
      28: '牛津译林版',
      29: '仁爱版',
      30: '外研版',
      // 31: '牛津深圳版',
      // 32: '上教版'
    },
    4: {  //物理id
      1: '人教版',
      2: '北师版',
      7: '沪科版',
      15: '教科版',
      16: '沪粤版',
      8: '苏科版',
      17: '北京课改版',
      22: '五四制鲁科版',
      23: '五四制教科版',
      21: '五四制人教版'
    },
    5: {  //化学id
      1: '人教版',
      25: '沪教版',
      26: '鲁教版',
      24: '粤教版',
      17: '北京课改版',
      22: '五四制鲁科版',
      21: '五四制人教版'
    }
  },
  2: {   //高中
    2: {
      13: '人教A版',
      14: '人教B版',
      2: '北师版',
      19: '苏教版',
      4: '湘教版'
    },
    3: {
      1: '人教版',
      2: '北师版',
      28: '牛津译林版',
      30: '外研版',
      33: '重大版'
    },
    4: {
      1: '人教版',
      7: '沪科版',
      15: '教科版',
      18: '鲁科版',
      24: '粤教版'
    },
    5: {
      1: '人教版',
      19: '苏教版',
      18: '鲁科版'
    }
  }
};

export function getPressName(gradeType, subjectId, textbookId = null) {
  let versionGrade = _SUB_VERSION_RELATION[gradeType];
  if (!versionGrade) {
    return null;
    // return inputNotValid('数据年级类型错误');
  }
  let versionSubject = versionGrade[subjectId];
  if (!versionSubject) {
    return null;
    // return inputNotValid('数据科目类型错误');
  }
  if (textbookId) {
    let pressName = versionSubject[textbookId];
    if (!pressName) {
      return null;
      // return inputNotValid('数据出版社类型错误');
    }
    return pressName;
  } else {
    return versionSubject;
  }
}

export const COMMON_FAIL_MSG = '操作失败，请您重试';
