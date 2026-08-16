package n8;

import com.itsmagic.engine.Core.Components.JCompiler.JavaMetaInfo;

public class C14365d extends C14362a {
    @Override
    public boolean a(boolean compiled, String code, String[] lines, JavaMetaInfo javaMetaInfo) {
        for (int i10 = 0; i10 < lines.length; i10++) {
            String str = lines[i10];
            if (str.contains("import java.util.Timer;") || str.contains("java.util.Timer") || str.contains("import java.util.TimerTask;") || str.contains("java.util.TimerTask")) {
                t8.d dVar = new t8.d();
                dVar.f84383c = i10;
                dVar.f84382b = "Don't use java.util.Timer and java.util.TimerTask";
                dVar.f84381a = "Java Timer and TimerTask is not synced with game framerate.\nThis will create deep-bugs that are difficult to find the cause of.\n\nCreate a timer using Math.bySecond in your component:\npublic float timer = 0; // global scope\n\nrepeat(){ // the component method\n    timer += Math.bySecond( 1 ); // 1 means \"1 second in 1 second\".\n\n     if(timer >= 5){\n          // 5 seconds have passed;\n          timer = 0;\n     }\n}";
                javaMetaInfo.f72514d.add(dVar);
                compiled = false;
            }
        }
        return compiled;
    }
}
