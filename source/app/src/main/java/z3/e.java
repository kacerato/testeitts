package z3;

import Ic.C2636o;
import JAVARuntime.JRDoc_EN;
import JAVARuntime.JRDoc_PT;
import android.content.Context;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import b3.s;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.u;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.v;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import java.lang.reflect.Method;
import java.util.Locale;

public class e extends v {

    public class a implements u {
        @Override
        public String a(String text) {
            try {
                c H10 = e.H(text);
                if (H10 == null) {
                    return "ERROR: invalid argument. Use javaruntime.[ClassName].[methodName]";
                }
                Class<?> cls = Class.forName("JAVARuntime." + H10.f130623a);
                Method F10 = e.F(cls, H10.f130624b);
                return F10 == null ? "ERROR: method not found" : e.G(F10, cls);
            } catch (Exception e10) {
                return "ERROR: " + e10.getMessage();
            }
        }
    }

    public class b implements C2636o.a {

        public final String f130621a;

        public final String[] f130622b;

        public b(final String val$mtdName, final String[] val$info) {
            this.f130621a = val$mtdName;
            this.f130622b = val$info;
        }

        @Override
        public boolean a(String line) {
            String str;
            if (!line.startsWith(this.f130621a)) {
                return true;
            }
            int indexOf = line.indexOf(s.f32937c);
            String[] strArr = this.f130622b;
            if (indexOf >= 0) {
                str = "gen. by AI: " + line.substring(indexOf + 1);
            } else {
                str = "gen. by AI: " + line;
            }
            strArr[0] = str;
            return false;
        }
    }

    public static final class c {

        public final String f130623a;

        public final String f130624b;

        public c(String str, String str2, a aVar) {
            this(str, str2);
        }

        public c(String className, String methodName) {
            this.f130623a = className;
            this.f130624b = methodName;
        }
    }

    public e() {
        super("jr.doc", "Returns documentation for a JAVARuntime API method.", new a());
        b(TypedValues.AttributesType.S_TARGET, "JAVARuntime method target, e.g. javaruntime.Vector3.setX.", true);
        B(TypedValues.AttributesType.S_TARGET);
        A(com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.JAVA_CODING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.LUA_CODING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.EXPLAIN, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.PLANNING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.NORMAL);
    }

    public static Method F(Class<?> cls, String methodName) {
        for (Method method : cls.getDeclaredMethods()) {
            if (method.getName().equalsIgnoreCase(methodName)) {
                return method;
            }
        }
        return null;
    }

    public static String G(Method method, Class cls) {
        String[] strArr = {null};
        JRDoc_EN jRDoc_EN = (JRDoc_EN) method.getAnnotation(JRDoc_EN.class);
        JRDoc_PT jRDoc_PT = (JRDoc_PT) method.getAnnotation(JRDoc_PT.class);
        if (jRDoc_PT != null && Lang.o().equals("pt-br")) {
            strArr[0] = jRDoc_PT.value();
        } else if (jRDoc_EN != null) {
            strArr[0] = jRDoc_EN.value();
        }
        String str = strArr[0];
        if (str == null || str.trim().isEmpty()) {
            String str2 = cls.getSimpleName() + "." + method.getName();
            String str3 = Lang.o().equals("pt-br") ? "pt" : "en";
            Context t10 = N7.c.t();
            if (t10 == null) {
                return "ERROR: no context available";
            }
            try {
                C2636o.i(t10.getAssets().open("Editor/Doc/" + str3 + ".txt"), new b(str2, strArr));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        String str4 = strArr[0];
        return (str4 == null || str4.trim().isEmpty()) ? "ERROR: documentation not found" : strArr[0];
    }

    public static c H(String text) {
        String trim;
        int lastIndexOf;
        a aVar = null;
        if (text == null) {
            return null;
        }
        String trim2 = text.trim();
        if (trim2.toLowerCase(Locale.ROOT).startsWith("javaruntime.") && (lastIndexOf = (trim = trim2.substring(12).trim()).lastIndexOf(46)) > 0 && lastIndexOf < trim.length() - 1) {
            String trim3 = trim.substring(0, lastIndexOf).trim();
            String trim4 = trim.substring(lastIndexOf + 1).trim();
            if (!trim3.isEmpty() && !trim4.isEmpty()) {
                return new c(trim3, trim4, aVar);
            }
        }
        return null;
    }
}
