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

    var ruFirstPrince = "1. Примите реальность и работайте с ней \n \n 1.1. Будьте гиперреалистом \n \n а. Мечты + реальность + целеустремленность = успех. \n \n \n 1.2. Любой благоприятный результат основан на истине – или, точнее, на объективном представлении о реальности. \n \n \n 1.3. Будьте абсолютно непредубежденным и предельно прозрачным.\n \n а. Абсолютная непредубежденность и предельная прозрачность неоценимы для быстрого обучения и эффективных изменений. \n\n b. Не позволяйте страху, что подумают о вас другие, становиться у вас на пути. \n \n c. Принцип абсолютной честности и предельной прозрачности приводит к более осмысленной работе и значимым отношениям.» \n\n\n 1.4. Посмотрите на природу, чтобы понять реальность. \n\n а. Не зацикливайтесь на том, как, по вашему мнению, должны обстоять дела, потому что так вы упустите возможность изучить, как они обстоят на самом деле. \n\n b. Чтобы что-то считалось хорошим, оно должно соответствовать законам реальности и способствовать эволюции в целом; именно это в итоге вознаграждается. \n\n c. Эволюция – самая действенная сила во Вселенной; это единственный процесс, который продолжается непрерывно и стимулирует развитие всего сущего. \n\n d. Эволюция или смерть. \n\n\n 1.5. Эволюция – это величайшее достижение и самая большая награда.\n\n a. Стимулы отдельного человека должны соотноситься с целями группы \n\n b. Реальность оптимизируется в интересах системы, а не отдельных ее частей. \n \n b. Реальность оптимизируется в интересах системы, а не отдельных ее частей.\n\n c. Процесс адаптации с помощью быстрого метода проб и ошибок неизбежен.\n\n d. Осознайте, что вы одновременно всё и ничто, и решите, кем хотите быть.\n\n e. Кем вы станете, зависит от вашей картины мира.\n\n\n 1.6. Усвойте уроки природы.\n\n a. Стремитесь к максимальному развитию.\n\n b. Помните: без боли нет результата. \n\n c. Фундаментальный закон природы: чтобы стать сильнее, нужно выйти за привычные границы, а это может причинить боль. \n\n\n 1.7. Боль + анализ = прогресс. \n\n a. Идите навстречу боли, а не избегайте ее.» \n\n b. Принимайте жесткость, идущую из лучших побуждений. \n\n\n 1.8. Анализируйте последствия второго и третьего порядка. \n\n\n 1.9. Несите ответственность за результат. \n\n\n 1.10. Взгляните на механизм с более высокого уровня.\n\n a. Воспринимайте себя как механизм, действующий внутри другого механизма, и помните, что у вас есть возможность менять свои механизмы для получения лучших результатов.\n\n b. Сравнив результат с целью, можно определить, как изменить механизм. \n\n c. Проведите различие между собой в роли разработчика механизма и собой в роли исполнителя. \n\n d. Самая серьезная ошибка, которую совершает подавляющее большинство людей, – оценивать себя и других необъективно, а это ведет к тому, что они снова и снова сталкиваются со слабостями – своими и чужими. \n\n e. Успешные люди объективно оценивают себя и ситуацию и управляют ею, меняя реальность. \n\n f. Один из самых важных навыков, который вам необходимо развить, – это спрашивать совета у людей, компетентных в областях, в которых вы не сильны. Это поможет вам не сделать неправильные шаги.\n\n  g. Оценивать себя объективно – задача не из простых, а потому вам следует полагаться на то, что говорят окружающие, и другие факты. \n\n h. Если вы лишены предубеждений и полны целеустремленности, то добьетесь практически всего, что захотите."

    var enFirstPrince = "first prince eng eng "

    var ruSecondPrince = "2. Сделайте «Пять шагов», чтобы получить то, что хотите от жизни \n\n\n 2.1. Ставьте перед собой четкие цели.\n\n a. Определите приоритеты: вы в состоянии получить почти все, что хотите, но вы не можете получить абсолютно все.\n\n b. Не путайте цели и желания.\n\n c. Решите, чего вы действительно хотите добиться в жизни, примирив свои цели и желания.\n\n d. Не путайте успех с его внешними атрибутами.\n\n e. Никогда не отказывайтесь от цели из-за того, что считаете ее недостижимой.\n\n f. Помните, что большие ожидания создают большие возможности.\n\n g. Практически ничто не сможет помешать вам добиться успеха, если вы обладаете:\n\n а) гибкостью, \n\n б) персональной ответственностью.\n\n h. Понимание, как вести себя в случае неудачи, не менее важно, чем знание, как двигаться вперед.\n\n\n 2.2. Определите проблемы, стоящие у вас на пути, и не миритесь с ними.\n\n a. Воспринимайте болезненные проблемы как шанс что-то улучшить.\n\n b. Не избегайте проблем из-за того, что их корни кроются в суровой и неприглядной реальности.\n\n c. Точно определяйте стоящие перед вами проблемы.\n\n d. Не путайте источник проблемы и саму проблему.\n\n e. Различайте серьезные и незначительные проблемы.\n\n f. Разобравшись, в чем проблема, не миритесь с ней.\n\n\n 2.3. Анализируйте проблему, чтобы определить ее причину.\n\n a. Прежде чем искать решение проблемы, сосредоточьтесь на ее причине.\n\n b. Различайте непосредственные причины и исходные.\n\n c. Если вы будете знать, что представляет собой человек (включая вас), вы будете знать, чего от него ожидать»\n\n\n 2.4. Разработайте план.\n\n a. Проанализируйте прошлое, прежде чем двигаться вперед.\n\n b. Подумайте о своей проблеме как о результате, возникшем вследствие работы механизма.\n\n c. Помните, что к достижению целей ведет множество путей.\n\n d. Представьте свой план в виде сценария к фильму, в котором вы визуализируете, кто и что делает на протяжении определенного времени.\n\n e. Зафиксируйте план письменно, чтобы все могли с ним ознакомиться и отслеживать прогресс.\n\n f. Для разработки хорошего плана не требуется много времени.\n\n\n 2.5. Претворяйте план в жизнь.\n\n a. Люди, которые строят большие планы, но не претворяют их в жизнь, не добиваются ничего.\n\n b. Хорошие рабочие навыки сильно недооценены.\n\n c. Установите четкие критерии, чтобы знать, что вы выполняете план.\n\n\n 2.6. Слабости не важны, если вы нашли решение.\n\n a. Проанализируйте характер своих ошибок и определите, на каком из пяти этапов вы обычно терпите неудачу.\n\n b. У каждого есть хотя бы одно серьезное слабое место, которое мешает ему добиться успеха. Найдите свое и научитесь с ним справляться.\n\n\n 2.7. Понимание своих и чужих ментальных карт и смирение."
    
    var enSecondPrince = "second prince seco en en "

    var enFourPrince = "four prince en en"
    
    var ruFourPrince = " оценивают себя и ситуацию и управляют ею, меняя реальность. \n\n f. Один из самых важных навыков, который вам необходимо развить, – это спрашивать совета у людей, компетентных в областях, в которых вы не сильны. Это поможет вам не сде"

    var enFivePrince = "five en"
    
    var ruFivePrince = " Успешные люди объективно оценивают себя и ситуацию и управляют ею, меняя реальность"

    var ruThirdPrince = "c.Процесс адаптации с помощью быстрого метода проб и ошибок неизбежен.Процесс адаптации с помощью быстрого метода проб Процесс адаптации с помощью быстрого метода проб Процесс адаптации с помощью быстрого метода проб"
 
    var enThirdPrince = "eng third prince eng third prince eng third prince eng third prince eng third prince"
    
    
    var body: some View {
        
       
        VStack {
            HStack {
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
            
        }
            
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
            content = ruFirstPrince
        } else if currentNumber == 1 && enLanguage {
            content = enFirstPrince
        } else if currentNumber == 2 && ruLanguage {
            content = ruSecondPrince
        } else if currentNumber == 2 && enLanguage {
            content = enSecondPrince
        } else if currentNumber == 3 && ruLanguage {
            content = ruThirdPrince
        } else if currentNumber == 3 && enLanguage {
            content = enThirdPrince
        } else if currentNumber == 4 && ruLanguage {
            content = ruFourPrince
        } else if currentNumber == 4 && enLanguage {
            content = enFourPrince
        } else if currentNumber == 5 && ruLanguage {
            content = ruFivePrince
        } else if currentNumber == 5 && enLanguage {
            content = enFivePrince
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
