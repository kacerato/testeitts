package n8;

import com.itsmagic.engine.Core.Components.JCompiler.JavaMetaInfo;
import t8.g;

public class C14363b extends C14362a {
    @Override
    public boolean a(boolean compiled, String code, String[] lines, JavaMetaInfo javaMetaInfo) {
        for (int i10 = 0; i10 < lines.length; i10++) {
            String str = lines[i10];
            if (str.contains("import java.net.Socket;") || str.contains("java.net.Socket")) {
                g gVar = new g();
                gVar.f84383c = i10;
                gVar.f84382b = "Very important information about sockets.";
                gVar.f84381a = "Sockets block the current thread from running, this will freeze ITsMagic completely.\nRemember to start the socket on an AsyncTask;\n\nnew AsyncTask(new AsyncRunnable() {\n        public Object onBackground(Object input) {\n            Socket socket = new Socket( OPTIONS );\n            return null;\n        }\n\n        public void onEngine(Object result) { RUN WHEN SOCKET IS CLOSED }\n}";
                javaMetaInfo.f72514d.add(gVar);
            }
        }
        return compiled;
    }
}
