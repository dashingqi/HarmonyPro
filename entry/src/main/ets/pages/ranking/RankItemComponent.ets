import { FontSize, FontWeight, ItemStyle, WEIGHT } from '../../common/constants/Constants';

@Component
export struct RankItemComponent {
  index?: number
  vote: string = ''
  private name?: Resource

  build() {
    // 横向摆放
    Row() {
      Column() {
        Text(this.index?.toString())
          .lineHeight(ItemStyle.TEXT_LAYOUT_SIZE)
          .textAlign(TextAlign.Center)
          .width(ItemStyle.TEXT_LAYOUT_SIZE)
          .fontWeight(FontWeight.BOLD)
          .fontSize(FontSize.SMALL)
      }.width(ItemStyle.LAYOUT_WEIGHT_LEFT)
      .alignItems(HorizontalAlign.Start)

      Text(this.name)
        .width(ItemStyle.LAYOUT_WEIGHT_CENTER)
        .fontWeight(FontWeight.BOLDER)
        .fontSize(FontSize.MIDDLE)
        .fontColor(ItemStyle.COLOR_BLACK)

      Text(this.vote)
        .width(ItemStyle.LAYOUT_WEIGHT_RIGHT)
        .fontWeight(FontWeight.BOLDER)
        .fontSize(FontSize.SMALL)
        .fontColor(ItemStyle.COLOR_BLACK)
    }
    .height(ItemStyle.BAR_HEIGHT)
    .width(WEIGHT)
  }
}