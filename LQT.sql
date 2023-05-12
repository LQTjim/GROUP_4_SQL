--- 會員查表 join sex level role :
SELECT
    m.`sid`,
    m.`email`,
    m.`name`,
    m.`mobile`,
    m.`birth`,
    m.`address`,
    ms.`name` AS `sex`,
    ml.tier,
    m.`hero_icon`,
    mr.role,
    m.`created_at`,
    CASE
        m.`active`
        WHEN 1 THEN '已啟用'
        WHEN 0 THEN '未啟用'
        ELSE '未知啟用狀態'
    END AS `active`
FROM
    `member` m
    JOIN `member_sex` ms ON m.sex_sid = ms.sid
    JOIN `member_level` ml ON m.`member_level_sid` = ml.sid
    JOIN `member_role` mr ON m.`role_sid` = mr.sid
ORDER BY
    `m`.`created_at` ASC --健身器材查表
SELECT
    ed.sid,
    ed.price,
    en.equipment_name,
    en.description,
    en.description,
    en.category_id,
    ed.stocks,
    ed.picture,
    ed.added_time,
    ec.color_name,
    es.size
FROM
    `equipment_detail` ed
    JOIN `equipment_name` en ON ed.`equipment_id` = en.sid
    JOIN `equipment_color` ec ON ed.color_id = ec.sid
    JOIN `equipment_size` es ON es.sid = ed.size_id