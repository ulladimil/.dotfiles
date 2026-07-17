local ls = require('luasnip')
local s = ls.snippet
local t = ls.text_node

ls.add_snippets('typescriptreact', {
  s('mycomp', {
    t({
      "import {useState, useMemo, useEffect, useRef} from 'react'",
      "import cn from 'classnames'",
      "",
      "interface Props {",
      "}",
      "",
      "export default function MyComponent(props: Props) {",
      "  const {className} = props",
      "",
      "  return (",
      "    <div",
      "      className={cn('my-component', className)}",
      "    >",
      "    </div>",
      "  )",
      "}"
    }),
  }),
})
