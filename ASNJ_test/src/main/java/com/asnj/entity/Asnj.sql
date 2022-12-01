select * from tb_member;
select * from tb_disease;
select * from tb_question_board;
show tables;

select * from tb_disease where disease_crops="고추";

insert into tb_question_board(ques_user_id, ques_title, ques_time, ques_content, ques_img)
value()

select * from tb_disease where disease_name='갈색점무늬병 (褐色斑點病)' and disease_crops='고추';

select * from tb_disease where disease_pk=45;
insert into tb_question_board (mem_pk, ques_user_id, ques_title, ques_content) values(2, 'test', '문의사항 test', '문의사항 게시판 내용');
