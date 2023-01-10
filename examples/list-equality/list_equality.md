# Filler values of a list

You can use `==` and `!=` on lists to check the deep equality of two lists: two lists are deep equal if they have the same members in the same order. Deep equality only works for `anydata` lists. `===` and `!==` check for the exact equality, which matches the references of the lists.

::: code list_equality.bal :::

::: out list_equality.out :::

## Related links
- [Tuples - Ballerina by example](/learn/by-example/tuples)
- [Arrays - Ballerina by example](/learn/by-example/arrays)
- [List sub typing - Ballerina by example](/learn/by-example/list-subtyping)

[comment]: # (Add equality expression link)