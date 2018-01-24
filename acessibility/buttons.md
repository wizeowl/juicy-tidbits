#CSS Button accessibility tricks

#### Make content visually hidden, but accessible to screen readers

```css
.visuallyHidden {
  border: 0;
  clip: rect(0 0 0 0);
  height: 1px;
  margin: -1px;
  overflow: hidden;
  padding: 0;
  position: absolute;
  width : 1px;
}
```

#### Divs 
Use the attributes role="button" and tabindex="0"(keep the tabbing order) on divs which are styled a serve as buttons

#### SVGs
######1 Add a title tag
######2 Add a labelledby="svgtitle" to the svg root and and id="svgtitle" to the title
```html
<svg labelledby="svgtitle" ...>
  <title id="svgtitle">...</title>
</svg>
``` 