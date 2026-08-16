package A3;

import android.content.Context;
import b9.C3856c;
import com.google.gson.Gson;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.u;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.v;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import k0.i;
import org.luaj.vm2.Globals;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Varargs;
import org.luaj.vm2.lib.VarArgFunction;

@i
public class a extends v {

    public static final long f287l = 15000;

    public static final Gson f286k = new Gson();

    public static final AtomicBoolean f288m = new AtomicBoolean(false);

    public class C0009a implements u {
        @Override
        public String a(String text) {
            try {
                String J10 = a.J(text);
                if (J10 != null && !J10.trim().isEmpty()) {
                    return a.H(J10);
                }
                return "ERROR: code cannot be empty";
            } catch (Exception e10) {
                return "ERROR: " + e10.getMessage();
            }
        }
    }

    public class b implements Runnable {

        public final String f289b;

        public final String[] f290c;

        public final boolean[] f291d;

        public final CountDownLatch f292e;

        public b(final String val$code, final String[] val$result, final boolean[] val$success, final CountDownLatch val$latch) {
            this.f289b = val$code;
            this.f290c = val$result;
            this.f291d = val$success;
            this.f292e = val$latch;
        }

        @Override
        public void run() {
            try {
                Globals g10 = C3856c.g();
                StringBuilder sb2 = new StringBuilder();
                a.M(g10, sb2);
                a.L(g10);
                this.f290c[0] = a.K(g10.load(this.f289b).invoke(), sb2);
                this.f291d[0] = true;
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    public class c extends VarArgFunction {

        public final StringBuilder f293a;

        public c(final StringBuilder val$printBuffer) {
            this.f293a = val$printBuffer;
        }

        @Override
        public Varargs invoke(Varargs args) {
            int narg = args.narg();
            for (int i10 = 1; i10 <= narg; i10++) {
                if (this.f293a.length() > 0) {
                    this.f293a.append("\n");
                }
                this.f293a.append(args.arg(i10).tojstring());
            }
            return LuaValue.NIL;
        }
    }

    public static final class d {

        public final boolean f294a;

        public final String f295b;

        public d(boolean z10, String str, C0009a c0009a) {
            this(z10, str);
        }

        public d(boolean success, String result) {
            this.f294a = success;
            this.f295b = result;
        }
    }

    public static final class e {

        public String f296a;
    }

    public a() {
        super("lua.exec", "Executes Lua code inside the live engine context to inspect or modify scenes, game objects, and components. In practice, it can be used to change almost any runtime game, scene, object, or component state that the engine exposes. The API available to Lua is built from the JavaRuntime classes and can be explored with the jr.classes, jr.methods, jr.fields, and jr.doc tools. Verify the exposed API first; do not guess names, signatures, or behavior.", new C0009a());
        b("code", "Lua source code to execute inside the live engine context for inspection or broad runtime modifications.", true);
        A(g.LUA_CODING);
    }

    public static String H(String code) throws InterruptedException {
        if (f288m.get()) {
            return I(code).f295b;
        }
        d I10 = I(code);
        return I10.f294a ? I10.f295b : I10.f295b;
    }

    public static d I(String code) throws InterruptedException {
        String[] strArr = {"ERROR: execution failed"};
        boolean z10 = false;
        boolean[] zArr = {false};
        CountDownLatch countDownLatch = new CountDownLatch(1);
        K8.a.I(new b(code, strArr, zArr, countDownLatch));
        C0009a c0009a = null;
        return !countDownLatch.await(15000L, TimeUnit.MILLISECONDS) ? new d(z10, "ERROR: lua execution timed out", c0009a) : new d(zArr[0], strArr[0], c0009a);
    }

    public static String J(String text) {
        if (text == null) {
            return null;
        }
        String trim = text.trim();
        if (!trim.startsWith("{")) {
            return text;
        }
        e eVar = (e) f286k.fromJson(trim, e.class);
        if (eVar != null) {
            return eVar.f296a;
        }
        return null;
    }

    public static String K(Varargs returned, StringBuilder printBuffer) {
        StringBuilder sb2 = new StringBuilder();
        if (printBuffer.length() > 0) {
            sb2.append((CharSequence) printBuffer);
        }
        if (returned != null && returned.narg() > 0) {
            if (sb2.length() > 0) {
                sb2.append("\n");
            }
            if (returned.narg() == 1) {
                sb2.append(returned.arg1().tojstring());
            } else {
                for (int i10 = 1; i10 <= returned.narg(); i10++) {
                    if (i10 > 1) {
                        sb2.append("\n");
                    }
                    sb2.append(returned.arg(i10).tojstring());
                }
            }
        }
        return sb2.length() == 0 ? "OK" : sb2.toString();
    }

    public static void L(Globals globals) {
    }

    public static void M(Globals globals, final StringBuilder printBuffer) {
        globals.set(Context.PRINT_SERVICE, new c(printBuffer));
    }
}
