class Script extends EngineVn{
    // clothes karina outdoor
    Actors karina_outdoor_angry;
    Actors karina_outdoor_blush;
    Actors karina_outdoor_disgusted;
    Actors karina_outdoor_angrytalk;
    Actors karina_outdoor_normal;
    Actors karina_outdoor_normaltalk;


    // clothes karina school
    Actors karina_school_angry;
    Actors karina_school_blush;

    Actors karina_school_angrypout;
    Actors karina_school_huh;
    Actors karina_school_disgusted;
    Actors karina_school_angrytalk;
    Actors karina_school_normal;
    Actors karina_school_normaltalk;


    Actors tedy_school_angrytalk;
    Actors tedy_school_normal;
    Actors tedy_school_normaltalk;
    Script(){
        super();
        setupChara();
        setupScene();
        start();
    }
    void setupChara(){
        karina_school_angrypout = new Actors("karina","school","angrypout", color(#FFFF00));
        karina_school_blush = new Actors("karina","school","blush", color(#FFFF00));
        karina_school_angrytalk = new Actors("karina","school","angrytalk", color(#FFFF00));
        karina_school_disgusted = new Actors("karina","school","disgusted", color(#FFFF00));
        karina_school_huh = new Actors("karina","school","huh", color(#FFFF00));
        karina_school_blush = new Actors("karina","school","blush", color(#FFFF00));
        karina_school_normaltalk = new Actors("karina","school","normaltalk",color(#FFFF00));

        tedy_school_normaltalk = new Actors("tedy","school","normaltalk", color(#5e9de6));
        tedy_school_angrytalk = new Actors("tedy","school","angrytalk", color(#5e9de6));
    }
    void setupScene(){
    
        bedroomScene = new bedroom();
        bedroomScene.addActor(tedy_school_normaltalk,(width/2)-50, (height/2));

        classroomScene = new classroom();
        classroomScene.addActor(tedy_school_normaltalk,(width/2)-50, (height/2));

        classroomScene.addActor(karina_school_blush, (width/2)-50, (height/2));
        classroomScene.addActor(karina_school_normaltalk, (width/2)-50, (height/2));


        FrontSchoolScene = new FrontSchool();
        FrontSchoolScene.addActor(tedy_school_normaltalk,(width/2), (height/2));
        FrontSchoolScene.addActor(tedy_school_angrytalk,(width/2)-300, (height/2));

        FrontSchoolScene.addActor(karina_school_normaltalk,(width/2)-50, (height/2));
        FrontSchoolScene.addActor(karina_school_angrypout,(width/2)-50, (height/2));
        FrontSchoolScene.addActor(karina_school_angrytalk,(width/2)-50, (height/2));
        FrontSchoolScene.addActor(karina_school_huh,(width/2)-50, (height/2));
        FrontSchoolScene.addActor(karina_school_disgusted,(width/2)-50, (height/2));
    }
    void start(){
    gotoScene(bedroomScene);
    }
    void gameplay(){
        if(dialog.currScene == bedroomScene){
            switch (currScene.counter) {
                case 0:
                speak("Di suatu pagi cerah anto masih tidur di karenakan bermain Valorant semalaman bersama dengan tedy");
                break;
                case 1:
                hasPlayed = false;
                if(!hasPlayed){
                alarm.play();
                hasPlayed = true;
                }
                speak("kringgg..... kringgg....");
                break;
                case 2:
                speak("mendengar Alarm antopun terbangun dari tidurnya");
                break;
                case 3:
                alarm.close();
                speak("Hoooaaaaam!!");
                case 4:
                speak("ini jam  berapa sih?");   
                break;
                case 5:
                speak("melihat jam dihp");
                break;
                case 6:
                speak("masih jam 7 ternyata");
                dialog.choiceBlock = true;
                btnChoice1.setLabel("Lanjut Tidur");
                btnChoice2.setLabel("Langsung ke sekolah");
                btnChoice1.setselectedChoice(7);
                btnChoice2.setselectedChoice(30);
                break;
                case 7:
                speak("ahh tidur ajadah");
                break;
                case 8:
                speak("aku mau bolos ajadah hari ini");
                break;
                case 9:
                speak("dan anto pun melanjutkan tidur");
                break;
                case 10:
                speak("10 jam kemudian");
                break;
                case 11:
                hasPlayed = false;
                if(!hasPlayed){
                ringtone_hp.play();
                hasPlayed = true;
                }
                speak("suara ringtone hp");
                break;
                case 12:
                speak("siapa sih yg nelpon ini");
                speak("mengangkat telpon");
                break;
                case 13:
                ringtone_hp.close();
                speak("halo...");
                break;
                case 14:
                speak(tedy_school_normaltalk,"halo anto");
                tedy_school_normaltalk.setSpoken(false);
                break;
                case 15:
                speak("halo tedy, ada apa??");
                break;
                case 16:
                speak(tedy_school_normaltalk,"Kenapa kamu ngak ke sekolah cok");
                break;
                case 17:
                tedy_school_normaltalk.setSpoken(false);
                speak("malas cok..., ngantuk banget cok tadi pagi gara gara valorant");
                break;
                case 18:
                speak(tedy_school_normaltalk,"coba kamu kesekolah ada info bagus");
                break;
                case 19:
                tedy_school_normaltalk.setSpoken(false);
                speak("info apa cok???");
                break;
                case 20:
                speak(tedy_school_normaltalk,"cewek yg lo deketin jadian sama Rasidan cokkkk");
                break;
                case 21:
                tedy_school_normaltalk.setSpoken(false);
                speak("bangke!!!!");
                break;
                case 22:
                speak("si buaya dapatin dia ");
                break;
                case 23:
                speak(tedy_school_normaltalk,"kamu gapapakan anto??");
                break;
                case 24:
                tedy_school_normaltalk.setSpoken(false);
                speak("aku matiin dulu yah");
                break;
                case 25:
                speak("akhirnya anto nangis di pojokkan");
                break;
                case 26:
                hasPlayed = false;
                if(!hasPlayed){
                sadending.play();
                hasPlayed = true;
                }
                speak("yahh kamu dapat bad ending");
                break;
                case 27:
                speak("kamu sih milih si anto tidur");
                speak("ngak dapat si karina kan");
                break;
                case 28:
                speak("NT");
                break;
                case 29:
                sadending.close();
                TheEnd = true;
                break;
                case 30:
                speak("lebih baik kesekolah lah");
                break;
                case 31:
                speak("dan antopun bergegas kesekolah");
                break;
                case 32:
                route = 1;        
                gotoScene(FrontSchoolScene);
                break;
            }
        }else if (dialog.currScene == classroomScene) {
                dialog.finished = false;
                switch (currScene.counter) {
                    case 0:
                    speak1("Kelas");
                    speak("10:00 WITA");
                    break;
                    case 2:
                    speak(tedy_school_normaltalk,"gimana pelajaran tadi?");
                    break;
                    case 3:
                    speak("bingung cok!");
                    speak("pada ngak masuk diotak pelajaran");
                    break;
                    case 4:
                    speak(tedy_school_normaltalk,"eeh itu liat cok");
                    speak(tedy_school_normaltalk,"karina didekatin sama rasidan");
                    break;
                    case 5:
                    speak("eehh iya");
                    break;
                    case 6:
                    speak("beraninya si buaya itu ngambil tergetku");
                    speak("ngak bisa dibiarin");
                    break;
                    case 7:
                    speak(tedy_school_normaltalk,"yah kesana sudah coy");
                    break;
                    case 8:
                    speak("ok");
                    case 9:
                    tedy_school_normaltalk.setSpoken(false);
                    speak("dan si anto pun menuju ke meja si Karina ");
                    break;
                    case 10:
                    speak("ehh karina bisa minta tolong ngak");
                    break;
                    case 11:
                    speak(karina_school_normaltalk,"eeh ada apa");
                    break;
                    case 12:
                    karina_school_normaltalk.setSpoken(false);
                    speak("dan rasidanpun tidak jadi mendekati karina");
                    break;
                    case 13:
                    speak(karina_school_blush,"thank you yah dah motong");
                    break;
                    case 14:
                    speak("santai aja kok ");
                    break;
                    case 15:
                    karina_school_blush.setSpoken(false);
                    speak(karina_school_normaltalk,"sebenarnya aku gak suka sama rasidan itu dia buaya");
                    break;
                    case 16:
                    speak("iya memang rasidan itu buaya banget");
                    break;
                    case 17:
                    speak("ada kali tiap bulan ganti cewek");
                    break;
                    case 18:
                    speak(karina_school_normaltalk,"dan dia incar aku akhir akhir ini");
                    break;
                    case 19:
                    speak("dan pembicaraan mereka berlanjut sangat lama");
                    break;
                    case 20:
                    speak("yeeey kamu berhasil membuat anto pdkt sama karina");
                    break;
                    case 21:
                    hasPlayed = false;
                    if(!hasPlayed){
                        happyending.play();
                        hasPlayed = true;
                    }
                    speak("yeay kamu dapat happy ending");
                    break;
                    case 22:
                    happyending.close();
                    TheEnd = true;
                    break;
                }      
        }else if (dialog.currScene == FrontSchoolScene ) {
            dialog.finished = false;
        switch (currScene.counter) {
            case 1:
            speak1("Depan sekolah");
            speak("07:15 WITA");
            break;
            case 2:
            speak("hehhh.... heeeehh.. heeehh... ");            
            break;
            case 3:
            speak("akhirnya sampe juga");
            break;
            case 4:
            speak(tedy_school_normaltalk,"kenapa kamu terengah engah gitu?");
           
            break;
            case 5:
             tedy_school_normaltalk.setSpoken(false);
            speak("engak...");
            break;
            case 6:
            speak("aku kira aku telat cok");
            break;
            case 7:
            speak("karina datang dari depan");
            break;
            case 8:
            speak(karina_school_normaltalk,"ehhh ada anto ");
            break;
            case 9:
            speak(karina_school_normaltalk,"Kamu kenapa bekeringatan gitu");
            dialog.choiceBlock = true;
            btnChoice1.setLabel("bersikap cool");
            btnChoice2.setLabel("bersikap santai");
            btnChoice1.setselectedChoice(10);
            btnChoice2.setselectedChoice(17);
            break;
            case 10:
            speak("hrmm.. ");
            break;
            case 11:
            speak("aku gak papa");
            break;
            case 12:
            karina_school_normaltalk.setSpoken(false);
            hasPlayed = false;
                if(!hasPlayed){
                bell.play();
                hasPlayed = true;
                }
            speak("suara bell");
            break;
            case 13:
            bell.close(); 
            speak(karina_school_normaltalk, "ehh itu dah mau ditutup pagarnya ayo masuk");
            break;
            case 14: 
            speak("hrrm... iya");
            karina_school_normaltalk.setSpoken(false);
            break;
            case 15:
            speak("dan mereka pun masuk ke sekolah");
            break;
            case 16:
            gotoScene(classroomScene);
            break;
            case 17:
            speak("ohh");
            break;
            case 18:
            speak("ngak aku habis buru ini kukira telat");
            break;
            case 19:
            speak(karina_school_angrypout, "pasti gara gara main valorant sama tedy kan");
            break;
            case 20:
            speak(tedy_school_angrytalk,"enak.. aja, aku main bangun ini tepat waktu aja");
            break;
            case 21:
            karina_school_angrypout.setSpoken(false);
            tedy_school_angrytalk.setSpoken(false);
            speak("jangan betengkar dong");
            break;
            case 22:
             hasPlayed = false;
                if(!hasPlayed){
                println(hasPlayed);
                bell.play();
                hasPlayed = true;
                }
            speak("suara bell");
            break;
            case 23:
            bell.close();
            speak(karina_school_normaltalk,"ayo masuk dah bunyi bell tuh");
            break;
            case 24:
            dialog.choiceBlock = true;
            btnChoice1.setLabel("Ajak bolos");
            btnChoice2.setLabel("masuk Kelas");
            btnChoice1.setselectedChoice(25);
            btnChoice2.setselectedChoice(33);
            break;
            case 25:
            speak("kau mau ikut aku jalan jalan?");
            break;
            case 26:
            karina_school_normaltalk.setSpoken(false);
            speak(karina_school_huh, "kau mau aku ikut bolos ??");
            break;
            case 27:
            tedy_school_normaltalk.setSpoken(false);
            speak(karina_school_disgusted, "ngak mau ihh");
            break;
            case 28:
            karina_school_disgusted.setSpoken(false);
            speak("dan karina pun pergi");
            break;
            case 29:
            hasPlayed = false;
            if(!hasPlayed){
                sadending2.play();
                hasPlayed = true;
            }
            speak("yah dia pergi ");
            break;
            case 30:
            speak("kamu gimana sih ");
            speak("ajak dia bolos ");
            break;
            case 31:
            speak("NT bro");
            break;
            case 32:
            sadending2.close();
            TheEnd = true;
            break;
            case 33:
            dialog.choiceBlock = false;
            gotoScene(classroomScene);
            break;
        }
    }
}
}