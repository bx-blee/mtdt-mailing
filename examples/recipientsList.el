
'(
  (b:mtdt:recipients|curSet
   :to `((b:email|oorr :addr "first.last@example.com"))
   :bcc `((b:email|oorr :addr "forBcc@example.com"))
   )
 (b:mtdt:recipients|curSet
    :to `((b:email|oorr :addr "second.last@example.com"))
    :cc `((b:email|oorr :addr "forCc@example.com"))
    )
 )
