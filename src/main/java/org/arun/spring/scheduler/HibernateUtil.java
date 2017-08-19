package org.arun.spring.scheduler;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

	public static SessionFactory getSessionFactory() {
		// create configuration using hibernate API
		Configuration configuration = new Configuration();
		configuration.setProperty("connection.driver_class", "com.mysql.jdbc.Driver");
		configuration.setProperty("hibernate.connection.url",
				"jdbc:mysql://localhost:3306/kw?autoreconnect=true&zeroDateTimeBehavior=convertToNull&jdbcCompliantTruncation=false");
		configuration.setProperty("hibernate.connection.username", "root");
		configuration.setProperty("hibernate.connection.password", "root");
		configuration.setProperty("hibernate.dialect", "org.hibernate.dialect.MySQLDialect");
		configuration.setProperty("show_sql", "false");
		configuration.setProperty("hibernate.jdbc.use_streams_for_binary", "false");
		configuration.setProperty("hibernate.dbcp.testOnBorrow", "true");
		configuration.setProperty("hibernate.dbcp.validationQuery", "SELECT 1 FROM DUAL");
		configuration.setProperty("hibernate.dbcp.testOnReturn", "false");
		configuration.setProperty("hibernate.dbcp.maxWait", "2000");
		configuration.setProperty("hibernate.dbcp.testWhileIdle", "true");
		configuration.setProperty("hibernate.dbcp.minEvictableIdleTimeMillis", "1800000");
		configuration.setProperty("hibernate.dbcp.timeBetweenEvictionRunsMillis", "300000");
		configuration.setProperty("hibernate.dbcp.numTestsPerEvictionRun", "5");
		configuration.setProperty("hibernate.dbcp.removeAbandoned", "true");
		configuration.setProperty("hibernate.dbcp.removeAbandonedTimeout", "90");
		configuration.setProperty("hibernate.dbcp.logAbandoned", "true");
		return configuration.buildSessionFactory();
	}

}
