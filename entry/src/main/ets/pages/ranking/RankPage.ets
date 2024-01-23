import { Style, WEIGHT } from '../../common/constants/Constants';
import { RankData } from '../../viewmodel/RankData';
import { RankViewModel } from '../../viewmodel/RankViewModel';
import { RankItemComponent } from './RankItemComponent';


let rankModel = new RankViewModel();

@Entry
@Component
struct RankPage {
  @State dataSource1: RankData[] = [];

  aboutToAppear() {
    this.dataSource1 = rankModel.loadRankDataSource1()
  }

  aboutToDisappear() {

  }

  build() {
    Column() {
      this.RankList(Style.CONTENT_WIDTH)
    }.height(WEIGHT).width(WEIGHT)
  }

  @Builder
  RankList(widthValue: Length) {
    Column() {
      List() {
        ForEach(this.dataSource1, (item: RankData, index?: number) => {
          ListItem() {
            RankItemComponent({ index: (Number(index) + 1), name: item.name, vote: item.vote

            })
          }
        }, (item: RankData) => JSON.stringify(item))
      }.width(WEIGHT)
      .height(Style.LIST_HEIGHT)
      .divider({ strokeWidth: Style.STROKE_WIDTH })
    }
    .padding({
      left: Style.RANK_PADDING,
      right: Style.RANK_PADDING
    })
    .borderRadius(Style.BORDER_RADIUS)
    .width(widthValue)
    .alignItems(HorizontalAlign.Center)
    .backgroundColor(Color.White)
  }
}