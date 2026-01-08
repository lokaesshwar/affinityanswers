-- Q2(a) How many types of Acacia plants are present?

SELECT
    COUNT(DISTINCT species) AS acacia_count
FROM taxonomy
WHERE species LIKE 'Acacia%';

-- Answer:
-- acacia_count = 326


-- Q2(b) Which type of wheat has the longest DNA sequence?

SELECT
    t.species,
    MAX(r.length) AS max_len
FROM taxonomy t
JOIN rfamseq r
    ON t.ncbi_id = r.ncbi_id
WHERE t.species LIKE 'Triticum%'
GROUP BY t.species
ORDER BY max_len DESC
LIMIT 1;

-- Answer:
-- species = Triticum durum (durum wheat)
-- max_len = 836514780


-- Q2(c) Pagination query
-- Families with DNA sequence length > 1,000,000
-- Page size: 15
-- Page number: 9 (OFFSET = 120)

SELECT
    f.rfam_acc,
    f.rfam_id,
    MAX(rs.length) AS max_len
FROM family f
JOIN full_region fr
    ON f.rfam_acc = fr.rfam_acc
JOIN rfamseq rs
    ON fr.rfamseq_acc = rs.rfamseq_acc
GROUP BY f.rfam_acc, f.rfam_id
HAVING max_len > 1000000
ORDER BY max_len DESC
LIMIT 15 OFFSET 120;

-- Answer (sample from page 9):
-- RF04338  Plastid-psbJ-2   836514780
-- RF03926  MIR1435          836514780
-- RF00097  snoR71           836514780
-- RF04355  Plastid-atpF     836514780
-- RF04110  MIR5084          836514780
-- RF01300  snoU49           836514780
-- RF01292  snoR2            836514780
-- RF00445  MIR399           836514780
-- RF04251  MIR5070          836514780
-- RF00012  U3               836514780
-- RF04331  Plastid-clpP     836514780
-- RF00482  snoF1_F2         836514780
-- RF01284  snoR8a           836514780
-- RF00504  Glycine          836514780
-- RF00361  snoZ119          836514780
