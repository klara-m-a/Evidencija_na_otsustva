insert into Vidovi(vid_id, vid_otsustvo)
values(1, 'Boleduvanje');
insert into Vidovi(vid_id, vid_otsustvo)
values(2, 'Godisen odmor');
insert into Vidovi(vid_id, vid_otsustvo)
values(3, 'Opravdano');
insert into Vidovi(vid_id, vid_otsustvo)
values(4, 'Neopravdano');

insert into Firmi(f_id, f_ime, f_grad, f_email, f_telefon, f_edb, f_kontakt, f_username, f_password, f_valid)
values(1, 'MSoft', 'Kocani', 'msoft@email.com', '075555555', '4013990000000', 'Mile', 'msoft12', '111111', '2022.12.31');
insert into Firmi(f_id, f_ime, f_grad, f_email, f_telefon, f_edb, f_kontakt, f_username, f_password, f_valid)
values(2, 'SeverJug', 'Vinica', 'sever@email.com', '070555000', '4013992222222', 'Goce', 'sever15', '222222', '2023.12.31');

insert into Oddeli(oddel_id, oddel_naziv, f_id)
values(1, 'Knigovodstvo', 1);
insert into Oddeli(oddel_id, oddel_naziv, f_id)
values(2, 'Proizvodtsvo', 1);
insert into Oddeli(oddel_id, oddel_naziv, f_id)
values(3, 'Knigovodstvo', 2);
insert into Oddeli(oddel_id, oddel_naziv, f_id)
values(4, 'Trgovija', 2);

insert into Vraboteni(v_id, v_ime, v_prezime, v_mesto, v_telefon, v_embg, v_odmor, v_aktiven, f_id)
values(1, 'Klara', 'Manasieva', 'Kocani', '078888458', '2310987333333', 20 , 1 , 1);
insert into Vraboteni(v_id, v_ime, v_prezime, v_mesto, v_telefon, v_embg, v_odmor, v_aktiven, f_id)
values(2, 'Ana', 'Anova', null , null , '0606987666666', 22 , 1 , 1);
insert into Vraboteni(v_id, v_ime, v_prezime, v_mesto, v_telefon, v_embg, v_odmor, v_aktiven, f_id)
values(3, 'Simeon', 'Simeonov', 'Orizari' , null , '1212987222222', 18 , 1 , 1);
insert into Vraboteni(v_id, v_ime, v_prezime, v_mesto, v_telefon, v_embg, v_odmor, v_aktiven, f_id)
values(4, 'John', 'Naveed', 'London' , null , '0808987888888', 21 , 1 , 2);

insert into Otsustva(o_id, o_datum, o_casovi, o_opis, v_id, vid_id)
values(1, '2021-03-02', 5, null, 1, 3);
insert into Otsustva(o_id, o_datum, o_casovi, o_opis, v_id, vid_id)
values(2, '2021-03-05', 3, null, 1, 4);
insert into Otsustva(o_id, o_datum, o_casovi, o_opis, v_id, vid_id)
values(3, '2021-03-03', 8, 'Povreda', 3, 1);

insert into Vraboten_vo_oddel(vraboten_od, vraboten_do, v_id, oddel_id)
values('2020-05-01', null, 1, 1);
insert into Vraboten_vo_oddel(vraboten_od, vraboten_do, v_id, oddel_id)
values('2020-05-01', null, 4, 3);
insert into Vraboten_vo_oddel(vraboten_od, vraboten_do, v_id, oddel_id)
values('2020-08-01', null, 3, 2);
