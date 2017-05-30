package org.arun.spring.scheduler;

import java.text.ParseException;
import org.quartz.CronTrigger;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.SchedulerFactory;
import org.quartz.impl.StdSchedulerFactory;

public class SchedulerDemo extends
		org.springframework.web.context.ContextLoaderListener {

	private static String cronCnsntfor10sec = "0 0 * * * ?";

	public SchedulerDemo() throws SchedulerException, ParseException {
		SchedulerFactory factory = new StdSchedulerFactory();
		Scheduler scheduler = factory.getScheduler();

		JobDetail detail = new JobDetail("Name", scheduler.DEFAULT_GROUP,
				MyJob.class);
		CronTrigger cronTrigger = new CronTrigger("Name",
				scheduler.DEFAULT_GROUP, cronCnsntfor10sec);

		scheduler.scheduleJob(detail, cronTrigger);
		scheduler.start();
	}

	

}