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
    `m`.`created_at` ASC