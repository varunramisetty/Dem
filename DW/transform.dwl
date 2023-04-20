
%dw 2.0
output application/json
---
payload filter $.salary > 40000 map(items,index) -> {
    name: items.firstName ++ " "++ items.lastName,
    age: items.age,
    salary:items.salary
}