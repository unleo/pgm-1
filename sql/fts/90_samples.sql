
SELECT test(:'TEST'); -- BOT

SELECT to_tsvector(
  const_search()
, 'дрель bosch с коррозионностойкий сверлом') @@ plainto_tsquery(const_search(), 'дрель бош нерж') as true; -- EOT

SELECT to_tsvector(
  const_search()
, 'бензопила husqvarna с нержавеющей цепью') @@ plainto_tsquery(const_search(), 'пила хускварна нерж') as true; -- EOT

SELECT to_tsvector(
  const_search()
, 'клапан запорный корозийностойкий') @@ plainto_tsquery(const_search(), 'вентиль нержавеющий') as true; -- EOT
