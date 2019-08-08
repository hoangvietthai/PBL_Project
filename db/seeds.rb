
Typejob.create(name_job:"ビジネス")
Typejob.create(name_job:"IT")
Typejob.create(name_job:"スポーツ")
Typejob.create(name_job:"教育")
Typejob.create(name_job:"発送")



ApplicationRecord.reset_column_information
Rails.application.eager_load!
ActiveRecord::Base.descendants.each { |model| model.reset_column_information }

users_name = ["Dai", "Phan", "髙山", "拓海","Tu","Dang","Dan"]
major_name =  ["IT", "ビジネス", "教育", "スポーツ", "発送"]
address_name = ["東京","大阪","関東","北海道","九州","Ha Noi", "Ho Chi Minh"]
university_name =["東京大学","筑波大学","東北大学","北海道大学","芝浦工業大学","HUST"]
10.times do |n|
  email_name = "user-#{n+100}@gmail.com"
  name =  users_name.sample
  password = "111222"
  major   = major_name.sample
  address = address_name.sample
  university = university_name.sample
  pr = "IT技術やビジネスが好きです"
  type_user=1
  User.create!(
      name: name,
      address:  address,
      major: major,
      password: password,
      email: email_name,
      university: university,
      pr: pr,
      type_user:1
  )
end

User.create!(
    name: "Sun Asterisk",
    address:  "東京",
    password: "123456789",
    email: "user43155@gmail.com",
    major:"IT",
    type_user:2
)

User.create!(
    name: "Co-Well",
    address:  "東京",
    password: "123456789",
    email: "user125@gmail.com",
    major:"IT",
    type_user:2
)
User.create!(
    name: "グーグル合同会社",
    address:  "東京",
    password: "88888888",
    email: "alphabet@gmail.com",
    major:"IT",
    type_user:2
)
User.create!(
    name: "株式会社Ｒｅｇｒｉｔ　Ｐａｒｔｎｅｒｓ",
    address:  "東京",
    password: "123456789",
    email: "user-1@gmail.com",
    major:"IT",
    type_user:2
)
User.create!(
    name: "Ｔｗｉｔｔｅｒ　Ｊａｐａｎ株式会社",
    address:  "東京",
    password: "123456789",
    email: "user55@gmail.com",
    major:"IT",
    type_user:2
)
User.create!(
    name: "ＮＴＴ株式会社",
    address:  "東京",
    password: "123456789",
    email: "anh2121@gmail.com",
    major:"IT",
    type_user:2
)
User.create!(
    name: "ソニービ株式会社",
    address:  "東京",
    password: "123456789",
    email: "sony@gmail.com",
    major:"IT",
    type_user:2
)
User.create!(
    name: "株式会社ナガセ　東進ビジネススクール",
    address:  "東京",
    password: "123456789",
    email: "user1244345@gmail.com",
    major:"ビジネス",
    type_user:2
)
User.create!(
    name: "エスペリアイン 日本橋箱崎",
    address:  "東京",
    password: "123456789",
    email: "user005@gmail.com",
    major:"ビジネス",
    type_user:2
)
User.create!(
    name: "SBIビジネスサポート株式会社",
    address:  "東京",
    password: "123456789",
    email: "user006@gmail.com",
    major:"ビジネス",
    type_user:2
)
User.create!(
    name: "ＮＴＴ株式会社",
    address:  "東京",
    password: "123456789",
    email: "NTT@gmail.com",
    major:"IT",
    type_user:2
)
User.create!(
    name: "アシスト・ジャパン株式会社",
    address:  "東京",
    password: "123456789",
    email: "user1225@gmail.com",
    major:"ビジネス",
    type_user:2
)
User.create!(
    name: "Admin",
    address:  "東京",
    password: "123456789",
    email: "admin@gmail.com",
    major:"IT",
    type_user:0
)



Job.create!(
    title: "少数精鋭のプログラマー集団とともにスキルＵＰ！未経験スタート大歓迎！産業に欠かせない技術を身につけてください",
    user_id:0,
    company_id:11,
    deadline:Time.now+100000,
    describe:"自動車製造の現場で使われる｢試験機用ソフトウェア｣の開発を行い､大手メーカーとお取引を続けている当社｡従業員9名ながらも業績は安定｡定着率が非常に高く創業以来､離職した人はなんとゼロなんです！今回､これからの当社を考えて新人を育成することに！未経験ОＫ！授業で少しプログラミングをやったことがある程度の知識があれば大丈夫｡イチから丁寧に育成していきます｡",
    salary:  "250,000 日本円 /月",
    address:  "東京",
    typejob_id:2
)
Job.create!(
    title: "【警備】［日給2万円～!!］8月末にオープニング案件も★週払いOK/まず短期お試しStartも♪",
    user_id:0,
    company_id:11,
    deadline:Time.now+100000,
    describe:"【施設内警備】
マンション/商業/観光施設や
大型量販店の出入り口で
来館者のチェックや誘導をおまかせ！

【イベント警備】
LIVEやスポーツ、TV、マラソン、
アニメイベントなどのレア案件も◎
関東圏内で行われる各種イベントをご用意！

上記ほか、大手ブランドや大型家電量販店の
施設警備や大学警備、駅警備、
『涼しい室内で座ってできる』
モニター監視の案件も♪",
    salary:  "日給2万500円 + 交全給
昇給あり
精勤ボーナスあり
（MAX月2万5千円支給）

研修手当てあり
2万9550円支給(食事代含む)
※法定研修4日間（30時間）",
    address:  "東京",
    typejob_id:2
)

Job.create!(
    title: "【アプリ・Webテスター】高時給1,375円スタート♪簡単お仕事！未経験◎快適オフィスワーク",
    user_id:0,
    company_id:11,
    deadline:Time.now+100000,
    describe:"お仕事は...
▼スマホアプリやWebサイトを操作
▼不具合（バグ）を発見！
▼パソコン上で報告♪
未経験OK◎
昇給&社員登用あり★",
    salary:  "時給1,375円～＋交通費",
    address:  "東京",
    typejob_id:2
)

Job.create!(
    title: "【ビジネス英語学習アドバイザー】英語の経験・資格が活かせる！女性活躍中の職場です◎",
    user_id:0,
    company_id:11,
    deadline:Time.now+100000,
    describe:"・プログラムの修正・開発
・テストデータの作成
・プログラムテスト（動作確認）

自社内にてシステム開発、
Webアプリケーション開発をお任せします!
適性、希望に応じて、最適なプロジェクトに抜擢します☆

「何かしらのシステム開発をしていた」
「今まで独学で勉強をしていた!」
という方は経験を活かし、さらにスキルUP◎

「未経験でもやる気がある!」
「ブランクがあるが、再チャレンジしたい」そんな方も歓迎!",
    salary:  "月給20～30万円＋交通費全額支給
",
    address:  "東京",
    typejob_id:1
)

Job.create!(
    title: "【事務】＼注目!!／働きやすさ100点満点★16時まで!ブランクOK!大手ニッセイの安心感!",
    user_id:0,
    company_id:12,
    deadline:Time.now+100000,
    describe:"私たちニッセイ・ビジネス・サービスは、
日本生命100%出資の人材サービス会社です。

日本生命のお仕事の内容や職場の雰囲気など
具体的にお知らせすることができます。

お仕事をスタートするにあたって
・家庭と両立できる？
・子供が急に熱を出したときに休める？
・ブランクがあるけど大丈夫かな？

等の、色々な疑問や不安に
私たちキャリアアドバイザーが
誠意をもってお答えします。

まずは登録説明会にお越しください。
皆様のご来社を心よりお待ちしております。",
    salary:  "月給20～30万円＋交通費全額支給
",
    address:  "東京",
    typejob_id:1
)

Job.create!(
    title: "【受信Staff】登録制★未経験から高収入★<月収25万～も可>オシャレも出来て、安定もGET",
    user_id:0,
    company_id:12,
    deadline:Time.now+100000,
    describe:"当社は、コールセンター、事務ワーク、携帯販売などのお仕事に特化した、
人材派遣・人材紹介ビジネスを展開しています！

●フォロー体制も整っています！
　「ブランクがある」「経験が浅い…」
　そんな方も大歓迎！不安なことはコーディネーターに何でも話してください◎

●オシャレも自由に
　服・髪色・ネイルなど、いつもの格好でお仕事OKです♪
　仕事帰りのお買い物や友達とのご飯もラクラク！

●安心安定！待遇面もバッチリ！
　社会保険完備・有給休暇・昇給制度・その他手当など、
　働きやすさも整えています",
    salary:  "月給20～30万円＋交通費全額支給
",
    address:  "東京",
    typejob_id:1
)

Job.create!(
    title: "【試験監督】<登録制>単発★人気の語学検定試験！カンタン×高日給♪イベント案件多数アリ",
    user_id:0,
    company_id:12,
    deadline:Time.now+100000,
    describe:"バイト探しって案外大変…

アシストなら【応募ボタン】
1clickで完了◎
━━━━━━━━━━━━

■メンドくさがり屋な【大学生Aさん(10代)】なら
⇒1回の応募で案件メールが届くから、完全受け身でOK♪

■損したくない【フリーターBさん(20代)】なら
このLIVE気になるけど、定員大丈夫かな!?
⇒マイページで空き状況がわかるから
ムダな応募は一切なし♪♪

■慎重派の【専門学生Cさん(20代)】なら
急には決めきれないよ…汗
⇒仕事は後から決めるでOK◎
【応募ボタン】気軽にclick下さい♪",
    salary:  "月給20～30万円＋交通費全額支給
",
    address:  "東京",
    typejob_id:4

)

Job.create!(
    title: "【【『療育』スタッフの保育・教員】時給3000円～高時給！働きやすい環境を整えてます！",
    user_id:0,
    company_id:12,
    deadline:Time.now+100000,
    describe:"【主な業務内容】
教員・療育スタッフとして、
子どもたちを自立に導くため、
学習や運動支援、保育等をお願いします。

※通常学級での児童のサポート・特別支援

≪具体的には≫
・付添
・個別支援
・療育準備

勤務時間などで多少業務内容が異なる場合がありますが、
主な業務内容としましては上記の3点です！
",
    salary:  "月給20～30万円＋交通費全額支給
",
    address:  "東京",
    typejob_id:4

)

Job.create!(
    title: "【自習授業のサポート講師/完全1:1の個別指導講師】《まずは1日♪お試し短期OK》",
    user_id:0,
    company_id:11,
    deadline:Time.now+100000,
    describe:"学校と塾が手を組み、
小中高校内に個別指導室や
自習室を設けた革新的な[教育プログラム]です♪

生徒や保護者からも学校の先生からも
感謝の言葉をもらえるシステムです。

個人別カリキュラムで、
1人1人の生徒に対して
自学自習のサポートを行います！

また現場には正社員が常駐していますので、安心です。
困ったときはすぐにフォローできる環境です。

指導経験がない方はもちろん、
経験のある方も、安心して個別指導に取り組めます！",
    salary:  "月給20～30万円＋交通費全額支給
",
    address:  "東京",
    typejob_id:4

)

Job.create!(
    title: "【運動療育STAFF】子どものできた！を一緒にサポートしませんか？ 週1～OK！週3～大歓迎!!",
    user_id:0,
    company_id:12,
    deadline:Time.now+100000,
    describe:"教育に興味がある方や、
教師・保育士・幼稚園教諭を
目指している方も活躍中！

『福祉関連の大学に通っています。
学校で学ぶ事とは別に、
実体験でしか分からないことがあって、　　　
将来にすごく役立ちそうだと思っています。』
by学生さん",
    salary:  "月給20～30万円＋交通費全額支給
",
    address:  "東京",
    typejob_id:4

)


