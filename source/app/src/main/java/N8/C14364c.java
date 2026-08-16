package n8;

import com.itsmagic.engine.Core.Components.JCompiler.JavaMetaInfo;

public class C14364c extends C14362a {
    @Override
    public boolean a(boolean compiled, String code, String[] lines, JavaMetaInfo javaMetaInfo) {
        for (int i10 = 0; i10 < lines.length; i10++) {
            String str = lines[i10];
            if (str.contains("import java.lang.Thread;") || str.contains("lang.Thread")) {
                t8.d dVar = new t8.d();
                dVar.f84383c = i10;
                dVar.f84382b = "Don't use java.lang.Thread";
                dVar.f84381a = "Use ITsMagic Thread, they can be controlled by ITsMagic.\nIf you use java.lang.Thread, you will suffer from several crashes in ITsMagic..";
                javaMetaInfo.f72514d.add(dVar);
                compiled = false;
            }
        }
        return compiled;
    }
}
