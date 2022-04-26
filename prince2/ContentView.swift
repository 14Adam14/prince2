//
//  ContentView.swift
//  prince2
//
//  Created by user219374 on 4/9/22.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var content = "\n ЖИЗНЕННЫЕ ПРИНЦИПЫ \n \n \n  Решайте сами: \n \n \n 1) чего вы хотите \n \n \n 2) какова объективная реальность и \n \n \n 3) что вам делать, чтобы добиться пункта 1 с позиции пункта 2 \n \n \n и делайте это со смирением и непредубежденностью, чтобы придерживаться наилучшего способа мышления, доступного вам. \n \n Изучите закономерности обстоятельств, влияющих на вашу жизнь, чтобы понять причинно-следственные отношения, лежащие в их основе, и вывести принципы, которые помогут вам эффективно справляться с этими ситуациями"
    
    @State var firstCircleColor: Color = .black
    @State var secondCircleColor: Color = .black
    @State var thirdCircleColor: Color = .black
    @State var fourCircleColor: Color = .black
    @State var fiveCircleColor: Color = .black

    @State var enLanguage: Bool = false
    @State var ruLanguage: Bool = true
    
    @State var ruButtonColor: Color = .black
    @State var enButtonColor: Color = .black
    
    
    @State var currentNumber: Int = 1



    let principles = [

        "ruFirstPrince" : "1. Примите реальность и работайте с ней \n \n 1.1. Будьте гиперреалистом \n \n а. Мечты + реальность + целеустремленность = успех. \n \n \n 1.2. Любой благоприятный результат основан на истине – или, точнее, на объективном представлении о реальности. \n \n \n 1.3. Будьте абсолютно непредубежденным и предельно прозрачным.\n \n а. Абсолютная непредубежденность и предельная прозрачность неоценимы для быстрого обучения и эффективных изменений. \n\n b. Не позволяйте страху, что подумают о вас другие, становиться у вас на пути. \n \n c. Принцип абсолютной честности и предельной прозрачности приводит к более осмысленной работе и значимым отношениям.» \n\n\n 1.4. Посмотрите на природу, чтобы понять реальность. \n\n а. Не зацикливайтесь на том, как, по вашему мнению, должны обстоять дела, потому что так вы упустите возможность изучить, как они обстоят на самом деле. \n\n b. Чтобы что-то считалось хорошим, оно должно соответствовать законам реальности и способствовать эволюции в целом; именно это в итоге вознаграждается. \n\n c. Эволюция – самая действенная сила во Вселенной; это единственный процесс, который продолжается непрерывно и стимулирует развитие всего сущего. \n\n d. Эволюция или смерть. \n\n\n 1.5. Эволюция – это величайшее достижение и самая большая награда.\n\n a. Стимулы отдельного человека должны соотноситься с целями группы \n\n b. Реальность оптимизируется в интересах системы, а не отдельных ее частей. \n \n b. Реальность оптимизируется в интересах системы, а не отдельных ее частей.\n\n c. Процесс адаптации с помощью быстрого метода проб и ошибок неизбежен.\n\n d. Осознайте, что вы одновременно всё и ничто, и решите, кем хотите быть.\n\n e. Кем вы станете, зависит от вашей картины мира.\n\n\n 1.6. Усвойте уроки природы.\n\n a. Стремитесь к максимальному развитию.\n\n b. Помните: без боли нет результата. \n\n c. Фундаментальный закон природы: чтобы стать сильнее, нужно выйти за привычные границы, а это может причинить боль. \n\n\n 1.7. Боль + анализ = прогресс. \n\n a. Идите навстречу боли, а не избегайте ее.» \n\n b. Принимайте жесткость, идущую из лучших побуждений. \n\n\n 1.8. Анализируйте последствия второго и третьего порядка. \n\n\n 1.9. Несите ответственность за результат. \n\n\n 1.10. Взгляните на механизм с более высокого уровня.\n\n a. Воспринимайте себя как механизм, действующий внутри другого механизма, и помните, что у вас есть возможность менять свои механизмы для получения лучших результатов.\n\n b. Сравнив результат с целью, можно определить, как изменить механизм. \n\n c. Проведите различие между собой в роли разработчика механизма и собой в роли исполнителя. \n\n d. Самая серьезная ошибка, которую совершает подавляющее большинство людей, – оценивать себя и других необъективно, а это ведет к тому, что они снова и снова сталкиваются со слабостями – своими и чужими. \n\n e. Успешные люди объективно оценивают себя и ситуацию и управляют ею, меняя реальность. \n\n f. Один из самых важных навыков, который вам необходимо развить, – это спрашивать совета у людей, компетентных в областях, в которых вы не сильны. Это поможет вам не сделать неправильные шаги.\n\n  g. Оценивать себя объективно – задача не из простых, а потому вам следует полагаться на то, что говорят окружающие, и другие факты. \n\n h. Если вы лишены предубеждений и полны целеустремленности, то добьетесь практически всего, что захотите.",


        "ruSecondPrince" : "2. Сделайте «Пять шагов», чтобы получить то, что хотите от жизни \n \n\n 2.1. Ставьте перед собой четкие цели.\n \n a. Определите приоритеты: вы в состоянии получить почти все, что хотите, но вы не можете получить абсолютно все.\n \nb. Не путайте цели и желания.\n \n c. Решите, чего вы действительно хотите добиться в жизни, примирив свои цели и желания.\n \n d. Не путайте успех с его внешними атрибутами. \n \n e. Никогда не отказывайтесь от цели из-за того, что считаете ее недостижимой.\n \n f. Помните, что большие ожидания создают большие возможности.\n \n g. Практически ничто не сможет помешать вам добиться успеха, если вы обладаете:\n \n а) гибкостью,\n \n б) персональной ответственностью.\n \n h. Понимание, как вести себя в случае неудачи, не менее важно, чем знание, как двигаться вперед.\n \n\n \n 2.2. Определите проблемы, стоящие у вас на пути, и не миритесь с ними.\n \n a. Воспринимайте болезненные проблемы как шанс что-то улучшить.\n \n b. Не избегайте проблем из-за того, что их корни кроются в суровой и неприглядной реальности.\n \n c. Точно определяйте стоящие перед вами проблемы.\n \n d. Не путайте источник проблемы и саму проблему.\n \n e. Различайте серьезные и незначительные проблемы.\n \n f. Разобравшись, в чем проблема, не миритесь с ней.\n \n\n \n 2.3. Анализируйте проблему, чтобы определить ее причину.\n \n a. Прежде чем искать решение проблемы, сосредоточьтесь на ее причине.\n \n b. Различайте непосредственные причины и исходные.\n \n c. Если вы будете знать, что представляет собой человек (включая вас), вы будете знать, чего от него ожидать» \n \n \n \n 2.4. Разработайте план.\n \n a. Проанализируйте прошлое, прежде чем двигаться вперед.\n \n b. Подумайте о своей проблеме как о результате, возникшем вследствие работы механизма.\n \n c. Помните, что к достижению целей ведет множество путей.\n \n d. Представьте свой план в виде сценария к фильму, в котором вы визуализируете, кто и что делает на протяжении определенного времени.\n \n e. Зафиксируйте план письменно, чтобы все могли с ним ознакомиться и отслеживать прогресс.\n \n f. Для разработки хорошего плана не требуется много времени.\n \n \n \n 2.5. Претворяйте план в жизнь.\n \n a. Люди, которые строят большие планы, но не претворяют их в жизнь, не добиваются ничего.\n \n b. Хорошие рабочие навыки сильно недооценены.\n \n c. Установите четкие критерии, чтобы знать, что вы выполняете план.\n \n \n\n 2.6. Слабости не важны, если вы нашли решение.\n \n a. Проанализируйте характер своих ошибок и определите, на каком из пяти этапов вы обычно терпите неудачу.\n \n b. У каждого есть хотя бы одно серьезное слабое место, которое мешает ему добиться успеха. Найдите свое и научитесь с ним справляться.\n \n\n \n 2.7. Понимание своих и чужих ментальных карт и смирение.",


        "ruThirdPrince" : "3. Будьте абсолютно непредубежденным \n \n\n \n 3.1. Осознайте два мешающих вам барьера.\n \n \n a. Ваше эго как барьер.\n \n b. Два ваших «я» сражаются за контроль над вами. \n \n c. Ваша «слепая зона» как барьер.\n \n \n \n 3.2. Придерживайтесь принципа абсолютной непредубежденности.\n \n \n a. Признайте, что вы можете не знать лучшего возможного способа действий и что ваша способность справиться с тем, чего вы не знаете, важнее, чем то, что вы знаете.\n \n b. Процесс принятия решения состоит из двух этапов: сначала получите всю относящуюся к делу информацию, затем принимайте решение.\n \n c. Не волнуйтесь, что о вас подумают. Волнуйтесь, как достичь цели.\n \n d. Чтобы отдавать, нужно принимать.\n \n e. Чтобы увидеть ситуацию глазами другого человека, нужно на время воздержаться от критики. Только эмпатия поможет вам правильно оценить чужую точку зрения.\n \n f. Ищите лучшее решение, а не лучшее решение, на которое вы способны.\n \n g. Отдавайте себе отчет, пытаетесь вы дискутировать или понять точку зрения другого человека. Подумайте, что будет полезнее, оценив уровень компетентности (и свой, и чужой).\n \n \n \n 3.3. Научитесь искусству продуктивного несогласия.\n \n \n \n 3.4. Проверяйте свое мнение в общении с несколькими компетентными людьми, которым вы доверяете и которые готовы высказывать противоположную точку зрения.\n \n \n a. Планируйте худший сценарий, чтобы сделать его настолько хорошим, насколько это возможно.\n \n\n \n 3.5. Научитесь распознавать непредубежденных и предубежденных людей.\n \n \n \n 3.6. Узнайте, как достичь абсолютной непредубежденности.\n \n \n а. Воспринимайте боль как руководство для качественных размышлений.\n \n b. Сделайте непредубежденность привычкой.\n \n c. Определите свои «слепые зоны».» \n \n d. Если несколько компетентных людей утверждают, что вы ошибаетесь, а вы единственный, кто не разделяет это мнение, скорее всего, вы действительно ошибаетесь.\n \n e. Медитируйте.\n \n f. Опирайтесь на факты и стимулируйте к этому других.\n \n g. Делайте все, что в ваших силах, чтобы помочь другим повысить уровень непредубежденности.\n \n h. Используйте инструменты для принятия решений с учетом фактов и доказательств.\n \n i. Научитесь понимать, в какой момент лучше перестать настаивать на своем мнении.",


        "ruFourPrince" : "4. Примите тот факт, что люди «запрограммированы» по-разному\n \n\n \n 4.1. Поймите, какие преимущества вы получите, если будете знать, как «запрограммированы» вы и другие люди»a. Человек рождается с характеристиками, которые способны как помочь ему, так и помешать, в зависимости от их применения.\n \n\n \n4.2. Осмысленные работа и отношения – это не только выбор человека, это запрограммировано генетически.\n \n\n \n4.3. Узнайте, какие битвы идут у вас в голове и как их контролировать, чтобы получить желаемое.\n \n \n a. Ваше сознание и подсознание находятся в состоянии постоянного противоборства.\n \n b. Между чувствами и рациональным мышлением происходит непрекращающаяся борьба.\n \n c. Научитесь соотносить свои чувства и рациональное мышление.\n \n d. Выбирайте привычки с умом.\n \n e. Для формирования правильных привычек обучайте свое низшее «я» с добротой и настойчивостью»\n \n f. Узнайте, чем разнится мышление людей с доминирующим правым или левым полушарием.\n \n g. Узнайте, в какой степени мозг способен или не способен меняться.\n \n\n \n 4.4. Разберитесь, что представляете собой вы и другие.\n \n \n a. Интроверсия vs. экстраверсия.\n \n b. Интуиция vs. ощущение.\n \n c. Мышление vs. чувства.\n \n d. Планирование vs. восприятие.\n \n e. Созидатели vs. улучшатели vs. продвигатели vs. исполнители vs. адапторы.\n \n f. Концентрация на задачах vs. концентрация на целях.\n \n g. Оценка личностных качеств на рабочем месте (Workplace Personality Inventory).\n \n h. Лидер способен проделать путь от визуализации до воплощения в жизнь.»\n \n\n \n 4.5. Ключ к успеху в любом деле – правильные люди на своих местах.a. Управляйте собой и другими для достижения цели.",


        "ruFivePrince" : "5. Научитесь эффективно принимать решения\n \n\n \n 5.1. Наибольший вред эффективному процессу принятия решений наносят эмоции; процесс принятия решений состоит из двух этапов: сначала анализ, потом решение.\n \n\n \n 5.2. Составьте объективное представление о ситуации.\n \n \n a. Одно из самых важных решений, которое вы можете принять, – это к кому обращаться за информацией.\n \n b. Не верьте всему, что слышите.\n \n c. Вблизи все кажется больше.\n \n d. Новинки переоценены в сравнении с классикой.\n \n e. Не преувеличивайте важность точек.\n \n\n \n 5.3. Составьте представление о долгосрочном развитии ситуации.\n \n \n a. Одновременно оценивайте скорость изменений, уровень, на котором находится цель, и соотношение между ними.\n \n b. Позвольте себе быть не совсем точным.\n \n c. Руководствуйтесь правилом 80/20 и отдавайте себе отчет, что составляет 20 %.\n \n d. Не будьте перфекционистом.\n \n \n \n 5.4. Эффективно действуйте на разных уровнях.\n \n \n a. Используйте условные понятия «над чертой» и «под чертой», чтобы определить уровень, на котором ведется разговор.\n \n b. Решение должно приниматься на соответствующем уровне, но быть согласованным на всех.\n \n\n \n 5.5. Логика, рациональное мышление и здравый смысл – ваши лучшие инструменты для объективной оценки реальности и понимания, что с ней делать.\n \n\n \n 5.6. Принимайте решения на основе расчета ожидаемой выгоды.\n \n \n a. Всегда полезно повысить свою вероятность оказаться правым, независимо от того, каково положение дел сейчас.\n \n b. Знать, когда отказаться от «ставки», не менее важно, чем знать, когда «ставку» стоит сделать.\n \n c. Лучший выбор всегда тот, в котором больше «за», чем «против», а не тот, в котором нет «против».\n \n \n \n 5.7. Определяйте приоритеты, оценивая важность дополнительной информации по отношению к цене откладывания решения.\n \n \n a. В первую очередь следует делать то, что вы должны, а затем уже то, что вам нравится.\n \n b. Есть вероятность, что у вас не хватит времени на мелочи. Это лучше, чем когда времени не хватает на что-то важное.\n \n c. Не следует путать возможности и вероятность.\n \n\n \n 5.8. Упрощайте!\n \n\n \n 5.9. Следуйте принципам.\n \n\n \n 5.10. Соотносите свои решения с мнением компетентных людей.\n \n\n \n 5.11. Сформулируйте принципы в формате алгоритмов, чтобы компьютер принимал решения параллельно с вами.\n \n\n \n 5.12. Не стоит полагаться на искусственный интеллект, если у вас нет глубокого понимания процесса.»",




        "enFirstPrince" : "1 Embrace Reality and Deal with It 1.1 Be a hyperrealist.a. Dreams + Reality + Determination = A Successful Life.1.2 Truth-or, more precisely, an accurate understanding of realitys the essential foundation for any good outcome.1.3 Be radically open-minded and radically transparent.a. Radical open-mindedness and radical transparency areinvaluable for rapid learning and effective changeb. Don't let fears of what others think of you stand in your way:c Embracing radical truth and radical transparency will bringmore meaningful work and more meaningful relationships.1.4 Look to nature to learn how reality works.a. Don't get hung up on your views of how things (should) bebecause you will miss out on learning how they really are.b. To be good something must operate consistently with thelaws of reality and contribute to evolution of the whole; thatis what is most rewarded c. Evolution is the single greatest force in the universe; it is theonly thing that is permanent and it drives everything.d. Evolve o or die 1.5 Evolving is lite's greatest accomplishment and its greatest reward.a. The individual's incentives must be aligned with the group's goals.b. Reality is optimizing for the whole--not for you.c. Adaptation through rapid trial and error is invaluable.d. Realize that you are simultaneously everything and nothing-and decide what you want to be.e. What you will be will depend on the perspective you have.1.6 Understand nature's practical lessons.a. Maximize your evolution.b. Remember (no pain, no gain.)c. It is a fundamental law of nature that in order to gainstrength one has to push one's limits, which is painful.1.7 Pain + Reflection = Progress.a. Go to the pain rather than avoid it.b. Embrace tough love.1.8 Weigh second- and third-order consequences.1.9 Own your outcomes1.10 Look at the machine from the higher level.a. Think of yourself as a machine operating within a machineand know that you have the ability to alter your machines toproduce better outcomesomes with your goals, you canetermine bow to modify vour machine.c. Distinguish between you as the designer of your machineand you asa worker with your machine.d. The biggest mistake most people make is to not seethemselves and others objectively, which leads them tobump into their own and others' weaknesses again and again.e. Successful people are those who can go above themselves to seethings objectively and manage those things to shape change.. Asking others who are strong in areas where you are weak to helpyou is a great skill that you should develop no matter what, as it willhelp you develop guardrails that will prevent you from doing whatyou shouldn't be doing.9. Because it is difficult to see oneself objectively, you need torely on the input of others and the whole body of evidence.h. If you are open-minded enough and determined, you canget virtually anything you want.",

        "enSecondPrince" : "2 Use the 5-Step Process to Get What You WantOut tof Life2.1 Have clear goals.a. Prioritize: While you can have virtually anything you want,you can't have everything you want.Don't confuse goals with desires.want in life by reconciling yourcallRale and vour deDon't mistake the trappings of success for success itself.e. Never rule out a goal because you think it's unattainable.t. Remember that great expectations create great capabilities.Almost nothing can stop you from succeeding if you havea) flexibility and b) selfaccountability.h. Knowing how to deal well with your setbacks is as importantas knowing how to move forward.2.2 ldentify and don't tolerate problems.a. View painful problems as potential improvements that arescreamir at you.s beeause they are rooted inbarsh ealiete ak ntingBe specific in identifying your problems.d. Don't mistake a cause of a problem with the real problem.e. Distinguish big problems from small ones.. Once you identify a problem, don't tolerate it.2.3 Diagnose problems to get at their root causesa. Focus on the (what is) before deciding what to do about it.b. Distinguish proximate causes from root causes.c. Recognize that knowing what someone (including you) islike will tell you what you can expect from them.2.4Design a plara. Go back before you go forward.b. Think about your problem as a set of outcomes producedby a machinRemember that there are typically many paths to achisd. Think of your plan as being likea movie script in that youvisualize who will do what through timee. Write down your plan for everyone to see and to measureyour progress against.Recognize that it doesn't take a lot of time to design agood plan.2.5 Push through to completion.a. Great planners who don't execute their plans go nowhere.Good work habits are vastly underrated.rics to make certain that you arefollowing your plan.2.6 Remember that weaknesses don't matter it you find solutionsa. Look at the patterns of your mistakes and identify at whichstep in the 5-Step Process you typically fail.b. Everyone has at least one big thing that stands in the wayof their success; find yours and deal with it.2.7 Understand your own and others' mental maps and humility.",

        "enThirdPrince" : "3 Be Radically Open-Minded3.1 Recognize your two barriers.a. Understand your ego barrier.trol you.c. Understand wour blind t3.2 Proctice rgdical onen.mindedees, Sincerely believe that you might not know the best possiblepath and recognize that your ability to deal well with (notknowing) is more important than whatever it is you do know.Recognize that decision making is a two-step process:First take in all the relevant information, then decide.Don't worry about looking good; worry about achievingyour goal,d. Realize that you can't put out without taking in.Kecognize that to gain the perspective that comes fromiudement for a time-only by empathizing can you properlyevaluate another point of view.t. Remember that you're looking for the best answer, notsimply the best answer that you can come up with yourself.g. Be clear on whether you are arguing or seeking to understand,and think about which is most appropriate based on your andothers' believability.3.3 Appreciate the art of thoughttul disagreement3.4 Triangulate your view with believable people who are wilingto disagree.a. Plan for the worst-case scenario to make it as good aspossible3.5 Recognize the signs of closed-mindedness andpen-mindedness that you should watch out for.Understand how you can become radicaly open-minaed.3.6toward quality reflection.b. Make being onen-minded a habit.c. Get to know your blind spots.d. Ifa number of different believable people say you are doingsomething wrong and you are the only one who doesn't seeit that way, assume that you are probably biased.Meditate.e.. Be evidence-based and encourage others to be the same9. Do everything in your power to help others also beh. Use evidence-based decision-making tools.Know when it's best to stop fighting and have faith in yourdecision-making process.",

        "enFourPrince" : "4 Understand That People Are Wired Very Differently4.1 Understand the power that comes from knowing how youand others are wired.a. We are born with attributes that can both help us and hurtus, depending on their application.4.2 Meaningtul work and meaningtul relationships aren't justnice things we chose for ourselves-they are geneticallyprogrammed into us.4.3 Understand the great brain battles and how to control themto get what (you) want.a. Realize that the conscious mind is in a battle with thesubconscious mind.hnow that the most constant struggle is between feelingahinkinyour feelings andReconcileyour thinking,d. Choose your habits well,e. Train your (lower-level you) with kindness and persistenceto build the riht habits.Understand the differences between right-brained andleft-brained thinking.Understand how much the brain can and cannot change.4.4 Find out what you and ohers are like.a. Introversion vs. extroversion.b. Intuiting vs, sensingVs. .feelinge. Creators vs. refiners vs. advancers vs. executors vs. flexors.t. Focusing on tasks vs. focusing on goals.g. WPI characteristicsh. Shapers are people who can go from visualization toactualization.4.5 Getting the right people in the right roles in support of yourgoal is the key to succeeding at whatever you choose toaccomplish.a. Manage yourself and orchestrate others to get what you want.",

        "enFivePrince" : "5 Learn How to Make Decisions Effectively5.1Recoanize that 1) the biggest threat to good decision makingis hormtul emotions, and 2) decision mgking is a two-stepprocess (first learning and then deciding).5.2 Synthesize the situation at hand.a. One of the most important decisions you can make iswho you ask questions of.b. Don't believe everything you hear.c. Everything looks bigger up close.d. New is overvalued relative to great.e,Don't oversqueeze dots.5.3 Synthesize the situation through time.a. Keep in mind both the rates of change and the levels ofthings, and the relationships between them.b. Be imprecise.C. Remember the 80/20 Rule and know what the key20 percent iSd. Be an imperfectionist.5.4 Navigate levels effectively.a, Use the terms (above the line) and (below the line) toestablish which level a conversation is on.O Remember that decisions need to be made at theappropriate level, but they should also be consistentacross levels.5.5 Logic, reason, and common sense are your best tools forsynthesizing reality and understanding what to do about it.5.6 Make your decisions as expected value calculations.a. Raising the probability of being right is valuable no matterwhat your probability of being right already is.b Knowing when not to bet is as important as knowing whatbets are probably worth making.CThe best choices are the ones that have more pros than cons,not those that don't have any cons at all.5.7 Prioritize by weighing the value of additional informationagainst the cost of not deciding.a.All of your (must-dos) must be above the bar before youdo your (like-to-dos.)b. Chances are you won't have time to deal with theunimportant things, which is better than not havingtime to deal with the important things.CDon't mistake possibilities for probabilities.5.8 Simplify!5.9 Use principles.5.10 Believability weight your decision making.5.11 Convert your principles into algorithms and have thecomputer make decisions alongside you.5.12 Be cautious about trusting Al without havingdeep understanding."


    ]




    
    
    var body: some View {
       
      //  NavigationView {
       
        VStack {
            HStack {
                
//                NavigationLink() {
//                    MyOtherScreen()
//                } label: {
//                    Circle()
//                        .foregroundColor(Color(hue: 0.0, saturation: 0.172, brightness: 0.388))
//                        .frame(width:50, height:50)
//                        .overlay(content: {
//                                Text("ME")
//                                 .foregroundColor(.white)
//                                           })
//                }

             
                
                
                Circle()
                    .foregroundColor(ruButtonColor)
                    .frame(width:50, height:50, alignment: .bottom)
                    .overlay(content: {
                        Text("RU")
                            .foregroundColor(.white)
                    })
                    .onTapGesture {
                        ruLanguage = true
                        enLanguage = false
                        switchLangButtonCollor()
                        switchPrince()
                    }

                Circle()
                    .foregroundColor(enButtonColor)
                    .frame(width:50, height:50, alignment: .bottom)
                    .overlay(content: {
                        Text("EN")
                            .foregroundColor(.white)
                    })
                    .onTapGesture {
                        enLanguage = true
                        ruLanguage = false
                        switchLangButtonCollor()
                        switchPrince()
                    }
                
               

            }
            
            
            ScrollView {
                Text("\(content)")
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
            }
            .padding()
            
            
            HStack {
            
                Circle()
                    .foregroundColor(firstCircleColor)
                    .frame(width:60, height:60)
                    .overlay(content: {
                        Text("1")
                            .foregroundColor(.white)
                    })
                    .onTapGesture {
                        currentNumber = 1
                        switchButtonColor()
                        switchPrince()
                    }
                
                Circle()
                    .foregroundColor(secondCircleColor)
                    .frame(width:60, height:60)
                    .overlay(content: {
                        Text("2")
                            .foregroundColor(.white)
                    })
                    .onTapGesture {
                        currentNumber = 2
                        switchButtonColor()
                        switchPrince()
                    }

                Circle()
                    .foregroundColor(thirdCircleColor)
                    .frame(width:60, height:60)
                    .overlay(content: {
                        Text("3")
                            .foregroundColor(.white)
                    })
                    .onTapGesture {
                        currentNumber = 3
                        switchButtonColor()
                        switchPrince()
                    }

                Circle()
                    .foregroundColor(fourCircleColor)
                    .frame(width:60, height:60)
                    .overlay(content: {
                        Text("4")
                            .foregroundColor(.white)
                    })
                    .onTapGesture {
                        currentNumber = 4
                        switchButtonColor()
                        switchPrince()
                    }
                
                Circle()
                    .foregroundColor(fiveCircleColor)
                    .foregroundColor(.brown)
                    .frame(width:60, height:60)
                    .overlay(content: {
                        Text("5")
                            .foregroundColor(.white)
                    })
                    .onTapGesture {
                        currentNumber = 5
                        switchButtonColor()
                        switchPrince()
                    }

            }
            .padding()
            
        }
        
            
    //    }
        
    
    }
   
    
    
    func switchButtonColor() {
        if currentNumber == 1 {
            firstCircleColor = .brown
            secondCircleColor = .black
            thirdCircleColor = .black
            fourCircleColor = .black
            fiveCircleColor = .black
        } else if currentNumber == 2 {
            firstCircleColor = .black
            secondCircleColor = .brown
            thirdCircleColor = .black
            fourCircleColor = .black
            fiveCircleColor = .black
        } else if currentNumber == 3 {
            firstCircleColor = .black
            secondCircleColor = .black
            thirdCircleColor = .brown
            fourCircleColor = .black
            fiveCircleColor = .black
        } else if currentNumber == 4 {
            firstCircleColor = .black
            secondCircleColor = .black
            thirdCircleColor = .black
            fourCircleColor = .brown
            fiveCircleColor = .black
        } else if currentNumber == 5 {
            firstCircleColor = .black
            secondCircleColor = .black
            thirdCircleColor = .black
            fourCircleColor = .black
            fiveCircleColor = .brown
        }
        
    }
    
    
    
    func switchPrince() {
        
        if currentNumber == 1 && ruLanguage {
            content = principles["ruFirstPrince"] ?? "1"
        } else if currentNumber == 1 && enLanguage {
            content = principles["enFirstPrince"] ?? "1"
        } else if currentNumber == 2 && ruLanguage {
            content = principles["ruSecondPrince"] ?? "1"
        } else if currentNumber == 2 && enLanguage {
            content = principles["enSecondPrince"] ?? "1"
        } else if currentNumber == 3 && ruLanguage {
            content = principles["ruThirdPrince"] ?? "1"
        } else if currentNumber == 3 && enLanguage {
            content = principles["enThirdPrince"] ?? "1"
        } else if currentNumber == 4 && ruLanguage {
            content = principles["ruFourPrince"] ?? "1"
        } else if currentNumber == 4 && enLanguage {
            content = principles["enFourPrince"] ?? "1"
        } else if currentNumber == 5 && ruLanguage {
            content = principles["ruFivePrince"] ?? "1"
        } else if currentNumber == 5 && enLanguage {
            content = principles["enFivePrince"] ?? "1"
        }
        
    }
    
    func switchLangButtonCollor() {
        if ruLanguage {
            ruButtonColor = .brown
            enButtonColor = .black
        } else if enLanguage {
            enButtonColor = .brown
            ruButtonColor = .black
        }
    }
    
}

struct MyOtherScreen: View {
    
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack{
            ScrollView {
                
                Image("archetype_0")
                    .resizable()
                    .scaledToFit()
                
                Image("archetype_1")
                    .resizable()
                    .scaledToFit()
                
                Image("archetype_2")
                    .resizable()
                    .scaledToFit()
                
                Image("archetype_3")
                    .resizable()
                    .scaledToFit()
                
                Image("archetype_5")
                    .resizable()
                    .scaledToFit()
                
                Image("archetype_6")
                    .resizable()
                    .scaledToFit()
                
                Image("archetype_7")
                    .resizable()
                    .scaledToFit()
                
                Image("archetype_8")
                    .resizable()
                    .scaledToFit()
                
                Image("archetype_9")
                    .resizable()
                    .scaledToFit()
                
                Image("archetype_10")
                    .resizable()
                    .scaledToFit()
    
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
