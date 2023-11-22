-- INSERT
insert into author(id, name, email, role) values(1, "kim", 123123, "123");
insert into author(id, name, email, pwd) values(2, "kim", 123123, "123");
insert into author(id, name, email) values(3, "kim", 123123, "123");
insert into author(id, name, email) values(4, "kim", 123123, "123");
insert into author(id, name, email) values(5, "kim", 123123, "123");


insert into post(id, title, contents, author_id) values(1, "kim1", "1111", 2);
insert into post(id, title, contents, author_id) values(2, "kim1", "1111", 2);
insert into post(id, title, contents) values(1, "kim1", "1111");
insert into post(id, title, contents) values(1, "kim1", "1111");
insert into post(id, title, contents, author_id) values(1, "kim1", "1111", 5);



-- SELECT



-- UPDATE
update author set email="abc@naver.com", name="abc" where id=2;


-- DELEATE
update post set author_id = null where author_id = 2;
delete from post where author_id = 2;
