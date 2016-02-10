# -collectionView-tableview-

功能: 单击 增加数据源 高度自适应

思路: 按钮 按钮动作 -- 数据源增加  --- 刷新数据 -- 高度判断 

高度自适应: 判断数据源count > 4 ? height += lines* 80 : 150;

