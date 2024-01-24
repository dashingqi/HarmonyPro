/**
 * author: zhangqi
 * date: 2024/1/24 21:15
 */
@Component
export struct CountDownComponent {
  @Prop count: number;
  costOfOneAttempt: number = 1;

  build() {
    Column() {
      if (this.count > 0) {
        Text(`You have ${this.count} Nuggets left`)
      } else {
        Text('Game over!')
      }
      // @Prop装饰的变量不会同步给父组件
      Button('try again').onClick(() => {
        this.count -= this.costOfOneAttempt
      })
    }
  }
}