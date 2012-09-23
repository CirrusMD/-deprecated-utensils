
# Drop
Describe this

```sass
@import utensils/components/drop/drop
```

```html
data-bindable="drop"
```

## Usage Example

<!--~ markup/drop.html.haml -->
```haml
%h5(style="margin-bottom:1em;") Drops in Navigation

%nav
  %ul.nav.inline
    %li.drop(data-bindable="drop")<
      %a(href="#") Drop nav 1 <span class="caret"></span>
      %ul.nav.menu(data-bindable="togglable-group")
        %li<
          %a(href="#") Subnav 1-1
        %li<
          %a(href="#") Subnav 1-2
        %li<
          %a(href="#") Subnav 1-3
    %li.drop(data-bindable="drop")<
      %a(href="#") Drop nav 2 <span class="caret"></span>
      %ul.nav.menu(data-bindable="togglable-group")
        %li<
          %a(href="#") Subnav 2-1
        %li<
          %a(href="#") Subnav 2-2
        %li<
          %a(href="#") Subnav 2-3


%h5(style="margin-bottom:1em; margin-top:2em;") Drops in Button Toolbar

%section.button-toolbar
  %nav.button-group
    %ul.nav
      %li.drop(data-bindable="drop")<
        %a(href="#") Drop <span class="caret"></span>
        %ul.nav.menu
          %li<
            %a(href="#") Subnav 1
          %li<
            %a(href="#") Subnav 2
          %li<
            %a(href="#") Subnav 3

  %nav.button-group(data-bindable="togglable-group")
    %a.btn.drop(href="#" data-bindable="drop") Drop 2 <span class="caret"></span>
    %ul.menu
      %li<
        %a(href="#") Drop 2 Subnav 1
      %li<
        %a(href="#") Drop 2 Subnav 2
      %li<
        %a(href="#") Drop 2 Subnav 3

  %nav.button-group
    %button.btn Action
    %button.btn.drop(data-bindable="drop") <span class="caret"></span>
    %ul.menu(data-bindable="togglable-group")
      %li<
        %a(href="#") Drop 2 Subnav 1
      %li<
        %a(href="#") Drop 2 Subnav 2
      %li<
        %a(href="#") Drop 2 Subnav 3
```
<!-- end -->

## Todo
- Tests
- Document
