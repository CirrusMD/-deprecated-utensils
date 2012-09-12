
# Decal
Decals are used to <span class="decal important">POP</span> information in a block of text.
They are typically used with inline elements. The default color is
equivalent to the `$inverse` status color and `$standard` is not
available.

```sass
@import utensils/components/decal/decal
```

## Usage Example

```haml
%span.decal Default
%span.decal.info Info
%span.decal.important Important
%span.decal.success Success
%span.decal.warning Warning
%span.decal.danger Danger
%span.decal.primary Primary
```

## Style Settings
To override the default settings, set the variable and it's value
within your `config.sass` file or before `decal.sass` is loaded.

Variable       | Default  | Description
-------------- | -------- | -------------------------------------------
`$decal-radii` | `$radii` | The `border-radius` of a decal
