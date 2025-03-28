local ls = require('luasnip')
local s = ls.snippet
local t = ls.text_node

ls.add_snippets('typescriptreact', {
  s('mycomp', {
    t({
      "import {type ComponentProps, useState, useMemo, useEffect, useRef} from 'react'",
      "import cn from 'classnames'",
      "",
      "interface Props extends ComponentProps<'div'> {",
      "}",
      "",
      "export default function MyComponent = (props: Props) => {",
      "  const {className, ...restProps} = props",
      "",
      "  return (",
      "    <div",
      "      {...restProps}",
      "      className={cn('my-component', className)}",
      "    >",
      "    </div>",
      "  )",
      "}"
    }),
  }),
})
