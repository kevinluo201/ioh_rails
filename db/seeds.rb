# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Role::Roles.each do |role|
  role = Role.create(name: role)
end

# only for development
if Rails.env.development?
  user = User.new(email: 'test@ioh.tw', password: '123456',
                  password_confirmation: '123456',
                  name: '鄭芷薇', english_name: 'Chih-Wei Cheng')
  user.roles << [Role.speaker, Role.regular]
  user.skip_confirmation!
  user.save!

  about = About.new(user: user)
  about.bio = 'Chih-Wei Cheng 鄭芷薇，現就讀高雄醫學大學藥學系臨床藥學碩士班，預計於 2017 年取得碩士學位。2011 年畢業於國立鳳新高級中學，以指定考試方式時錄取高雄醫學大學醫學檢驗生物技術學系，在升大二的暑假，參加校內轉系考試，進入高雄醫學大學藥學系就讀。2015 年畢業於高雄醫學大學藥學系，並且通過專門職業及技術人員高等考試取得藥師資格，同年錄取高雄醫學大學藥學系臨床藥學碩士班。
大學期間積極參與課外活動，有多次活動參與經驗，培養執行計畫、團隊合作與表達溝通的能力。對於臨床藥學十分有興趣，在校修習臨床藥學模組。2014  年 7 月積極爭取到前往美國南加州大學（University of Southern California Clinical Pharmacy And Therapeutic Program）研習的機會，接受了實證醫學、臨床藥物治療學等課程內容。2014 年 8 月於台灣諾和諾德藥品股份有限公司暑期實習，接觸銷售行銷、臨床試驗。2015 年於財團法人彰化基督教醫院完成 640 小時藥學教育實習。'
  about.save!

  about = About.new(user: user)
  about.bio = ''
  about.save!

  talker = Talker.create!(user: user)
  talk = Talk.new(talker: talker)
  talk.part1 = 'https://ioh.present.me/embed/870/400/40456-39640-37291-37291-34277-31995-37165-33463-34183-part-1'
  talk.context = <<-END.gsub(/^\s+\|/, '')
  | <p><span style="color: #993300;"><strong>多元學習的教育</strong></span></p>
  | <p>畢業於高雄醫學大學藥學系的鄭芷薇，目前就讀高醫臨床藥學碩士班，將在講座中介紹系上課程設計。芷薇強調藥學系的出路非常廣，不是只能當藥師。高醫是個小而美的學校，晚上總是充滿許多在運動的同學，因此學生間更戲稱自己是在讀運動大學！又因為是醫學大學，課業非常繁忙，學校的圖書館總是人滿為患。學校會有許多跨校跨機構的醫學研究計畫，在海外更有許多姊妹校，並與國外不少學校簽訂雙聯學制。高醫也設有國際醫療服務團，每年會到不同的國家，包括馬拉威、索羅門、印度、印尼等地服務當地的居民。而高醫不僅僅重視醫學專業知識，更安排學生進行書院教育，學習人文、藝術、音樂等課程。</p>
  | <p><span style="color: #993300;"><strong>藥劑師</strong><strong> VS </strong><strong>藥師</strong></span></p>
  | <p>講座中，芷薇特別強調藥師正名運動，早期的藥劑師以技術方面調劑為主，而現行法定名稱為「藥師」，業務範圍多了處方評估、藥歷整合、用藥諮詢與教育、藥事照護等，為民眾的用藥安全把關，不再拘限於調劑。高醫藥學系課程是以四年為主，畢業後參加國家考試取得藥師執照後進入職場，但也有人選擇繼續進修，攻讀研究所。大一課程以藥學基礎為主；大二為藥學基礎延伸，三年級則會增加臨床課程，系上為了讓學生多元發展，規定至少要修完一個學程或模組才能畢業，例如臨床藥學、工業藥學、創新醫藥科技管理、商業管理；到了大四，許多學生會申請成為預研生，在大四即先修研究所的課程來縮減日後念研究所需花的時間。</p>
  | <p><span style="color: #993300;"><strong>藥學相關的特別課程</strong></span></p>
  | <p>高醫有一項特別的讀書方式，即共筆。同學們會將上課的筆記、最新醫療資訊集結成一本筆記刊物，藉此可以為同學們省下更多時間。芷薇在講座中也介紹了許多令自己印象深刻的課程，如「藥物化學」能夠幫助學生了解藥學的成分及化學變化；「生物藥劑學」則是探討藥物在體內如何發生作用與排出；「藥用植物學」的教授會帶領學生上山採藥，將藥草帶回學校製作標本；「炮製學」將中藥做不同的加工處理，並用化學的方式萃取、加以分析。而 “Problem-based Learning（PBL）&#8221; 上課方式則是以問題為導向進行案例討論，透過與同學們討論、分析資料及檢驗數據找出病人的問題，並給予用藥上的建議。臨床技能則會訓練學生用藥諮詢的技巧，著重於特殊劑型藥物的使用方式，除此之外，也會在課程中安排學生到大醫院為病人進行團體衛生教育宣導。</p>
  | <p><span style="color: #993300;"><strong>多采多姿的實習生活</strong></span></p>
  | <p>高醫的實習管道非常多元，包括到藥廠、研究單位、政府等。而海外實習的選擇則有伊利諾大學、南加州大學與阿肯色醫學科學大學等。除了在醫院實習之外，芷薇也分別在藥局、台灣諾和諾德藥品公司實習。在實習期間，芷薇最喜歡業務部門的實習內容，因為可以親自拜訪客戶，了解其實際需求。此外，芷薇也到美國南加州大學見習，觀摩當地的藥學教育，與當地學生做臨床藥學及藥學發展的交流。芷薇不僅專注於課內學習，對課外活動也踴躍參與，參加了熱舞社及系上舉辦的各項活動。此外藥學生聯合會，依區域大小分為：世界、亞太及台灣區，為學生性組織，每年都會舉辦國際會議，芷薇也從中華民國藥學生聯合會的活動中獲得許多收穫。藥三週施巴擺攤則為藥學系特別的活動，目的為培養學生膽識、銷售及溝通技能。勇於嘗試的芷薇甚至還擔任學校月曆的模特兒，也為學校拍攝畢業歌曲 MV。</p>
  | <p><span style="color: #993300;"><strong>別讓「但是」阻饒你</strong></span></p>
  | <p>芷薇也分享了她的轉系心路歷程。芷薇提到為了準備轉系考，無可避免地縮減了與系上同學及朋友的相處時間。而轉系也會面臨學分抵免及人際問題。此時就要學習心理調適。經過大學四年忙碌充實的生活，不僅僅學到報告技巧，也學會了時間管理。芷薇鼓勵學弟妹，千萬別拒絕任何機會，面對新事物也許我們會害怕，但我們要勇於面對它，不要讓太多外部因素去干擾我們的選擇。</p>
  | <p>&nbsp;</p>
  END
  talk.save!

end

