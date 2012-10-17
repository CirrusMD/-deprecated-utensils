
# Dismiss
Describe this

## Usage Example

<!--~ markup/dismiss.html.haml -->
```haml
.notification.fade.in
  %p <strong>Notification!</strong> This is the default notification
  %a.close(href="#" data-bindable="dismiss") &times;

.notification.fade.in#dismiss_href
  %p <strong>Notifcation Href!</strong> This is the default notification
  %a.close(href="#dismiss_href" data-bindable="dismiss") &times;

.notification.fade.in#dismiss_target
  %p <strong>Notifcation Target!</strong> With a delay
  %a.close(href="#" data-target="#dismiss_target" data-bindable="dismiss" data-delay="500") &times;

.notification.fade.in#dismiss_nested
  %p <strong>Notifcation Nested!</strong> This is the default notification
  %p
    %a.close(href="#" data-bindable="dismiss") &times;

%a#dismiss_alone(href="#" data-bindable="dismiss") Close Me

%section#dismiss_cya.fade.in
  %p<
    This whole thing should fade out,
    %a(href="#" data-bindable="dismiss" data-parents="#dismiss_cya") when you click this link
```
<!-- end -->
