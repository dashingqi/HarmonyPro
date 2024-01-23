import { rankData1 } from '../model/DataModel';
import { RankData } from './RankData';

export class RankViewModel {
  loadRankDataSource1(): RankData[] {
    return rankData1;
  }
}
