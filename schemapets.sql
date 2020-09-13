create table if not exists `pet`
(
    
    `id` int(11) AUTO_INCREMENT not null,
    `mascota_id` int(11) not null,
    `nombre` varchar(255) not null,
    `nivel` int(11) not null,
    `experiencia` int(11) not null,
    `vidamax` int(11) not null,
    `vida` int(11) not null,
    `activa` bit,
    `player_id` int(11) not null,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARACTER SET=utf8;



select * from pet
INSERT INTO `pet` (`mascota_id`, `nombre`, `nivel`,`experiencia`,`vidamax`,`vida`,`activa`,`player_id`) VALUES ('1','','1','0','150','150',1,'4');

select * from player_storage