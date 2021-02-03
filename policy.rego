package demo.opa

default allow = false

allow {
    startswith(input.path, "/secret")
    token.payload.roles[_] == "privileged-user"
}

# Token verification is required
token = {"payload": payload} {
  [header, payload, signature] := io.jwt.decode(input.token)
}
