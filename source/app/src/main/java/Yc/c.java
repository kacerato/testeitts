package Yc;

import android.app.Activity;
import java.io.File;
import jd.C13823b;
import v5.C15805a;

public abstract class c {

    public class a implements C15805a.i {

        public final g f29960a;

        public a(final g val$eventListener) {
            this.f29960a = val$eventListener;
        }

        @Override
        public void a(File file, String inProjectPath) {
            if (file == null || !file.exists()) {
                this.f29960a.b(null);
            } else {
                this.f29960a.b(new C13823b(inProjectPath));
            }
        }
    }

    public class b implements Xc.a {

        public final g f29961a;

        public final Activity f29962b;

        public final String f29963c;

        public b(final g val$eventListener, final Activity val$activity, final String val$pathExample) {
            this.f29961a = val$eventListener;
            this.f29962b = val$activity;
            this.f29963c = val$pathExample;
        }

        @Override
        public String a() {
            return Tc.b.u(this.f29963c);
        }

        @Override
        public String b() {
            return Tc.b.w(this.f29963c, true);
        }

        @Override
        public String c() {
            String t10 = Tc.b.t(this.f29963c);
            return t10.startsWith(".") ? t10.substring(1) : t10;
        }

        @Override
        public void onSelected(String absolutePath) {
            if (absolutePath == null || absolutePath.isEmpty()) {
                this.f29961a.b(null);
                return;
            }
            g gVar = this.f29961a;
            StringBuilder sb2 = new StringBuilder();
            com.itsmagic.engine.Core.Components.ProjectController.a aVar = W7.b.f27302b;
            sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f29962b));
            sb2.append("/");
            gVar.b(new C13823b(absolutePath.replace(sb2.toString(), "")));
        }
    }

    public static void a(String formatAllowed, g eventListener) {
        if (eventListener != null) {
            C15805a.x1(formatAllowed, new a(eventListener));
        }
    }

    public static void b(String pathExample, Activity activity, g eventListener) {
        if (activity == null || eventListener == null) {
            return;
        }
        Xc.b.v(activity, new b(eventListener, activity, pathExample));
    }
}
