package K6;

import android.provider.CallLog;
import android.provider.Telephony;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.util.List;

public final class l {

    public static final List<String> f10915a = new a();

    public static final List<String> f10916b = new b();

    public class a extends SteppedArrayList<String> {
        public a() {
            add("byte");
            add("short");
            add("int");
            add("long");
            add(TypedValues.Custom.S_FLOAT);
            add("double");
            add("char");
            add(TypedValues.Custom.S_BOOLEAN);
        }
    }

    public class b extends SteppedArrayList<String> {
        public b() {
            add("if");
            add("else");
            add("switch");
            add("case");
            add("default");
            add("for");
            add("while");
            add("do");
            add("break");
            add("continue");
            add("return");
            add("class");
            add("interface");
            add("enum");
            add("extends");
            add("implements");
            add(Telephony.Sms.Intents.EXTRA_PACKAGE_NAME);
            add("import");
            add("abstract");
            add("final");
            add("static");
            add("transient");
            add("volatile");
            add("synchronized");
            add("native");
            add("strictfp");
            add("public");
            add("protected");
            add("private");
            add("void");
            add("null");
            add("true");
            add("false");
            add("this");
            add("super");
            add(CallLog.Calls.NEW);
            add("instanceof");
            add("try");
            add("catch");
            add("finally");
            add("throw");
            add("throws");
            add("assert");
        }
    }

    public final void a(List<f> out) {
        for (String str : f10916b) {
            f fVar = new f(str, str);
            fVar.f10887b = str;
            fVar.f10891f = "keyword";
            fVar.f10889d = str;
            fVar.f10890e = "keyword";
            fVar.f10899n = R.drawable.letter_e;
            fVar.f10898m = true;
            out.add(fVar);
        }
    }

    public final void b(List<f> out) {
        for (String str : f10915a) {
            f fVar = new f(str, str);
            fVar.f10887b = str;
            fVar.f10891f = "primitive";
            fVar.f10889d = str;
            fVar.f10890e = "primitive";
            fVar.f10899n = R.drawable.letter_q;
            fVar.f10898m = true;
            out.add(fVar);
        }
    }

    public List<f> c() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        b(steppedArrayList);
        a(steppedArrayList);
        return steppedArrayList;
    }
}
