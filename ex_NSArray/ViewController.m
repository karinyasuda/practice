//
//  ViewController.m
//  ex_NSArray
//
//  Created by Karin on 2015/01/31.
//  Copyright (c) 2015年 Karin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//運勢ボタンとアクション接続して挿入したメソッド宣言
- (IBAction)choiceFortune:(UIButton *)sender;
//運勢ラベルとアウトレット接続して挿入すたプロパティ
@property (weak, nonatomic) IBOutlet UILabel *fortune;

@end




@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    
    // Dispose of any resources that can be recreated.
}



//運勢ボタンのタップで実行するメソッド
- (IBAction)choiceFortune:(UIButton *)sender {
    //配列を作る
    NSArray *fortuneList=@[@"吉",@"吉",@"吉",@"大吉",@"凶",@"大凶"];
    //配列から取り出す位置を乱数で決める
    int pos = arc4random()% fortuneList.count;
    //配列からストリングを取り出す
    NSString *fortuneString =fortuneList[pos];
    //取り出したストリングをラベルに表示する
    self.fortune.text=fortuneString;
}
@end
