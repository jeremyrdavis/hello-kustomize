    DROP SCHEMA IF EXISTS web CASCADE ;
    CREATE SCHEMA web AUTHORIZATION hippo;
    
    DROP SCHEMA IF EXISTS ai CASCADE ;
    CREATE SCHEMA ai AUTHORIZATION hippo;
    
    DROP SCHEMA IF EXISTS cqrs CASCADE ;
    CREATE SCHEMA cqrs AUTHORIZATION hippo;
    
    DROP SCHEMA IF EXISTS greetings CASCADE ;
    CREATE SCHEMA greetings AUTHORIZATION hippo;

    create sequence web.GreetingSubmission_SEQ start with 1 increment by 50;

    create table web.GreetingSubmission (
          id bigint not null,
          submittedAt timestamp(6) with time zone,
          author varchar(255),
          sourceSystem varchar(255) check (sourceSystem in ('REST_API')),
          text varchar(255),
          primary key (id)
      );

      drop sequence if exists Greeting_SEQ;
      create sequence Greeting_SEQ start with 1 increment by 50;
      create table Greeting (
        id bigint not null,
        author varchar(255),
        text varchar(255),
        primary key (id)
    );