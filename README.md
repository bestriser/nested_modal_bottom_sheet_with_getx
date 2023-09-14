# nested_modal_bottom_sheet_with_getx

GetXの公式ドキュメントの[Route管理 > ネスト構造のナビゲーション](https://github.com/jonataslaw/getx/blob/master/documentation/ja_JP/route_management.md#%E3%83%8D%E3%82%B9%E3%83%88%E6%A7%8B%E9%80%A0%E3%81%AE%E3%83%8A%E3%83%93%E3%82%B2%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3
)を参考にして<br>
`Get.bottomSheet()`の中で画面遷移するサンプルを作成しました。

## 補足
`Get.bottomSheet()`の中で画面遷移を行う時のメソッドについて<br>
`Get.to()`を使用すると`onGenerateRoute()`が反応しなかったので<br>
`Get.to()`ではなく、`Get.toNamed()`を使用するのがベストだとは思いますが<br>
`Get.to()`でも問題なく、`Get.bottomSheet()`の中で画面遷移する事はできました。

## 実装結果
https://github.com/bestriser/nested_modal_bottom_sheet_with_getx/assets/55462291/09ee8eb4-ea61-42d1-97f6-d1d6bb7f55b7
