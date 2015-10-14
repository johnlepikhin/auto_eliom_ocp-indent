{
  open Approx_tokens
}

let location = ("shared"|"client"|"server")

rule lexer = parse
  | "{" location "{" { LINE_DIRECTIVE }

{
  let _ = IndentExtend.register "eliom" ~lexer ()
}
