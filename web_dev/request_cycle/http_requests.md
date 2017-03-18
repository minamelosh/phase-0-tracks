What are some common HTTP status codes?
10.1 Informational 1xx
10.1.1 100 Continue
10.1.2 101 Switching Protocols
10.2 Successful 2xx
10.2.1 200 OK
10.2.2 201 Created
10.2.3 202 Accepted

What is the difference between a GET request and a POST request? When might each be used?
-GET is usually intended to retrieve some data, and is expected to be idempotent (repeating the query does not have any side-effects) and can only send limited amounts of parameter data to the server
-GET may be used arbitrarily by robots or crawlers, which should not need to consider the side effects that a request should cause
-POST submits data to be processed (e.g., from an HTML form) to the identified resource. The data is included in the body of the request. This may result in the creation of a new resource or the updates of existing resources or both.
-POST also lets you send much more information (as URLs are limited in length, for all practical purposes), and lets you send just about any type of data (file upload forms, for example, can't use GET -- they have to use POST plus a special content type/encoding
-POST connotes that the request will change something. That's why you sometimes see your browser asking you if you want to resubmit form data when you hit the "back" button

**essentially GET is used to retrieve remote data, and POST is used to insert/update remote data**

Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
HTTP cookie is a small piece of data sent from a website and stored on the user's computer by the user's web browser while the user is browsing. Cookies were designed to be a reliable mechanism for websites to remember stateful information (such as items added in the shopping cart in an online store) or to record the user's browsing activity (including clicking particular buttons, logging in, or recording which pages were visited in the past).
