# deno-antlr4-template

```
deno task build
```

```
deno test
```

##

```
v center top
    v
        {catch}
    h
        v left
            {name_kr}
            h
                {name_self} | {name_alt}
        {flag}
    {map}
```
```
[{catch}]
[- .gap(0)
    [<
        {name_kr}
        [-
            {nema_self} | {name_alt}
        ]
    ]
    {flag}
]
```
```
|
    {catch}
- [gap:0]
    |< [text:lg]
        {name_kr}
        - [text:sm]
            {name_self}
            |
            {name_alt}
    {flag}
```
```pug
v {catch}
h [gap:0]
    v [left, text:lg]
        {name_kr}
        h [text:sm]
            {name_self}
            |
            {name_alt}
    {flag}
```
```xml
<v>{catch}</v>
<h gap(0)>
    <v left text(large)>
        {name_kr}
        <h>
            {name_self}
            |
            {name_alt}
        </h>
    </v>
    {flag}
</h>
```