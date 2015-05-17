# SwiftLogging
Objective-Cで使っていたLOGやLOG_METHODといったマクロをSwiftでも同様に使いたかったので作りました。
## 準備
#### 1.XcodeのBuild Settings
Xcodeから使用するプロジェクト名を選択し、TARGETSで該当ターゲットを選択します。
さらにBuild Settingsを選択し、Swift CompilerのOther Swift FlagsでDebug = -DDEBUGとなるようにしてください。
#### 2.GlobalConstants.swift追加
ファイル名は何でも良いのですが、ここではGlobalConstants.swiftというファイルを作成し、下記のような定義を追加します。
```swift:GlobalConstants.swift
#if DEBUG
    func LOG(msg:Any) {
        println(msg)
    }
    func LOG_METHOD(funcName:String = __FUNCTION__,lineNum:Int = __LINE__ ){
        println("\(funcName)","\(lineNum)")
    }
    
#else
    func LOG(msg:Any) {}
    func LOG_METHOD() {}
#endif
```
これで、Build ConfigurationがDebugに設定しているときだけ、任意の場所にLOG()やLOG_METHOD()を記述しておくとコンソールにログが出力されます。

## 使い方

``` swift
    override func viewDidLoad() {
        super.viewDidLoad()
        LOG_METHOD() // メソッド名と行数を出力します
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        LOG_METHOD() // メソッド名と行数を出力します
        LOG(animated) // 任意のパラメータを出力します
    }
```

コンソールにこのように出力されます。
``` Bash:コンソール出力
(viewDidLoad(), 14)
(viewDidAppear, 20)
false
```

Objective-Cで使っていたLOG,LOG_METHODと同じように使えると思います。


