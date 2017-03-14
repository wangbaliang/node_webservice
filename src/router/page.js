'use strict';

import Router from 'koa-router';
import { csrf } from '../middleware/csrf';
import { needLogon, setUserLogonStatusOnView } from '../middleware/auth';
import { inviteCode } from '../middleware/invite_code';

import {
  downloadCourseLectureController,
  downloadLessonLectureController, } from '../controller/lecture';

import { authCodeController } from '../controller/sso';

import { alipayReturnController, alipayNotifyController,
  wxpayNotifyController, } from '../controller/payment';

import { setUserExperienceController } from '../controller/experience_center'

const router = new Router();

router.use(csrf());
router.use(inviteCode());
router.use(setUserLogonStatusOnView());

router.get('/', async (ctx) => {
  await ctx.render('index');
});

router.get('/login', async (ctx) => {
  await ctx.render('login');
});

router.get('/register', async (ctx) => {
  await ctx.render('register_one');
});

router.get('/about', async (ctx) => {
  await ctx.render('aboutus');
});


export { router };
