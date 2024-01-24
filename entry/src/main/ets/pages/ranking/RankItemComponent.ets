import { FontSize, FontWeight, ItemStyle, WEIGHT } from '../../common/constants/Constants';

@Component
export struct RankItemComponent {
  index?: number
  @Prop vote: string = ''
  private name?: Resource
  @State isChange: boolean = false

  build() {
    // 横向摆放
    Row() {
      Column() {
        // 如果是原形文本
        if (this.isRenderCircleText()) {
          if (this.index !== undefined) {
            this.CircleText(this.index)
          }
        } else {
          Text(this.index?.toString())
            .lineHeight(ItemStyle.TEXT_LAYOUT_SIZE)
            .textAlign(TextAlign.Center)
            .width(ItemStyle.TEXT_LAYOUT_SIZE)
            .fontWeight(FontWeight.BOLD)
            .fontSize(FontSize.SMALL)
        }
      }.width(ItemStyle.LAYOUT_WEIGHT_LEFT)
      .alignItems(HorizontalAlign.Start)

      Text(this.name)
        .width(ItemStyle.LAYOUT_WEIGHT_CENTER)
        .fontWeight(FontWeight.BOLDER)
        .fontSize(FontSize.MIDDLE)
        .fontColor(this.isChange ? ItemStyle.COLOR_BLUE : ItemStyle.COLOR_BLACK)

      Text(this.vote)
        .width(ItemStyle.LAYOUT_WEIGHT_RIGHT)
        .fontWeight(FontWeight.BOLDER)
        .fontSize(FontSize.SMALL)
        .fontColor(this.isChange ? ItemStyle.COLOR_BLUE : ItemStyle.COLOR_BLACK)
    }
    .height(ItemStyle.BAR_HEIGHT)
    .width(WEIGHT)
    .onClick(() => {
      this.isChange = !this.isChange
    })
  }

  @Builder
  CircleText(index: number) {
    Row() {
      Text(index.toString())
        .fontWeight(FontWeight.BOLDER)
        .fontSize(FontSize.SMALL)
        .fontColor(Color.White);
    }.justifyContent(FlexAlign.Center)
    .borderRadius(ItemStyle.CIRCLE_TEXT_BORDER_RADIUS)
    .size({
      width: ItemStyle.CIRCLE_TEXT_SIZE, height: ItemStyle.CIRCLE_TEXT_SIZE
    }).backgroundColor($r('app.color.circle_text_background'))
  }

  /**
   * 是否是原形文本
   * @returns
   */
  isRenderCircleText(): boolean {
    return this.index == 1 || this.index == 2 || this.index == 3
  }
}