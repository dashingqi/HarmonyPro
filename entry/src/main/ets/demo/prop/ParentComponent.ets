import { CountDownComponent } from './CountDownComponent';

@Entry
@Component
struct ParentComponent {
  @State countDownStartValue: number = 10;
  build() {
    Column() {
      Text(`Grant ${this.countDownStartValue} nuggets to play`)
      // 父组件的数据源的修改会同步给子组件
      Button(`+1 - Nuggets in New Game`).onClick(() => {
        this.countDownStartValue += 1;
      })

      // 父组件的修改会同步给子组件
      Button(`-1 -Buggets in New Game`).onClick(() => {
        this.countDownStartValue -= 1;
      })

      CountDownComponent({ count: this.countDownStartValue, costOfOneAttempt: 2 })
    }
  }
}