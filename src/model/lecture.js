'use strict';

import {
  courseServiceClientFactory, } from '../common/upland_service';
import { quotaServiceClientFactory } from '../common/tutor_service';


class LectureManager {

  _createClient() {
    return courseServiceClientFactory.createClient();
  }

  async getCourseLectureDownloadInfo(grade, studyYear, version, subjectId) {
    const client = this._createClient();
    return await client.invoke('getCourseLectureDownloadInfo', grade, studyYear, version, subjectId);
  }

  async getCanDownloadSubjects(userName) {
    const client = quotaServiceClientFactory.createClient();
    return await client.invoke('getStudentRemainServiceSubjects', userName);
  }

  async getCourseLessonLectureDownloadInfo(courseId) {
    const client = this._createClient();
    return await client.invoke('getCourseLessonLectureDownloadInfo', courseId);
  }

  async getLectureByCourse(saleCourseId) {
    const client = this._createClient();
    return await client.invoke('getLectureDownloadInfoByCourse', saleCourseId);
  }

  async getLectureByLesson(lessonId) {
    const client = this._createClient();
    return await client.invoke('getLectureDownloadInfoByLesson', lessonId);
  }
}


export { LectureManager };
