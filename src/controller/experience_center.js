'use strict';

import joi from 'joi';
import _ from 'lodash';
import {fail, validate, processData, } from '../lib/api_helper';
import { log } from '../lib/log_helper';
import {getCurrentUserName} from '../middleware/auth';
import { handleServiceResult } from '../common/controller';
import {ExperienceManager} from '../model/experience_center';


async function getAllVideoController(ctx) {
  const manager = new ExperienceManager();
  const [code, videos] = await manager.getAllVideoInfo();
  if (code != 0) {
    return fail('获取视频列表失败');
  }
  else {
    if (videos.length <= 0) {
      return [];
    }
    let [mathVideos, physicalVideos, EnglishVideos, chemicalVideos] = [[],[],[],[]];
    _.map(videos, (video) => {
      if (video.subject === 2) {
        mathVideos.push(video);
      }
      if (video.subject === 3) {
        EnglishVideos.push(video);
      }
      if (video.subject === 4) {
        physicalVideos.push(video);
      }
      if (video.subject === 5) {
        chemicalVideos.push(video);
      }
    }
    );
    let videolist = mathVideos.concat(physicalVideos).concat(EnglishVideos).concat(chemicalVideos);
    let videoData = {
      c1: [],
      c2: [],
      c3: [],
      g1: [],
      g2: [],
      g3: [],
    };
    _.map(videolist, (video) => {
      if (video.grade === 7) {
        videoData.c1.push(video)
      }
      if (video.grade === 8) {
        videoData.c2.push(video)
      }
      if (video.grade === 9) {
        videoData.c3.push(video)
      }
      if (video.grade === 10) {
        videoData.g1.push(video)
      }
      if (video.grade === 11) {
        videoData.g2.push(video)
      }
      if (video.grade === 12) {
        videoData.g3.push(video)
      }
    }
    );
    return videoData
  }
}

async function addVideoPlayTimesController(ctx) {
  const videoId = ctx.request.body.videoId;
  const manager = new ExperienceManager();
  const [code, result] = await manager.addVideoPlayTimes(videoId);
  if (code != 0) {
    return fail('添加视频失败');
  }
  else {
    return result
  }
}

const videoSchema = {
  videoId: joi.number().integer().min(0),
  startTime: joi.string().isoDate(),
  playTime: joi.number().integer().min(0),
};

async function addUserPlayHistoryController(ctx) {
  const userName = getCurrentUserName(ctx);
  const parameter = validate(ctx.request.body, videoSchema);
  const videoId = parameter.videoId;
  const startTime = parameter.startTime;
  const playTime = parameter.playTime;
  const manager = new ExperienceManager();
  const [code, result] = await manager.addUserPlayHistory(userName, videoId, startTime, playTime);
  if (code != 0) {
    return fail('添加观看视频记录失败');
  }
  else {
    return result
  }
}

async function setUserExperienceController(ctx) {
  const userName = getCurrentUserName(ctx);
  if (userName == 'undefined') {
    return
  }
  const manager = new ExperienceManager();
  const [code, result] = await manager.setUserExperience(userName);
  if (code != 0) {
    return fail('设置用户已体验失败');
  }
  else {
    return result
  }
}

async function getProtectorInfoController(ctx) {
  const userName = getCurrentUserName(ctx);
  const manager = new ExperienceManager();
  const result = await manager.getProtectorInfo([userName]);
  const protector = handleServiceResult(result);
  return protector[0];
}

async function applyInteractionController(ctx) {
  const userName = getCurrentUserName(ctx);
  const manager = new ExperienceManager();
  const result = await manager.applyInteraction(userName);
  return handleServiceResult(result);
}

export {
  getAllVideoController,
  addVideoPlayTimesController,
  addUserPlayHistoryController,
  setUserExperienceController,
  getProtectorInfoController,
  applyInteractionController,
};
