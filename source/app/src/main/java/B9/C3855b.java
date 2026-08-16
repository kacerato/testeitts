package b9;

import C5.b;
import D5.h;
import JAVARuntime.Runnable;
import P8.g;
import P8.k;
import P8.l;
import P8.q;
import android.accounts.AccountManager;
import android.content.Context;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import b9.C3855b;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.function.Function;
import org.luaj.vm2.Globals;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.lib.jse.CoerceJavaToLua;
import org.luaj.vm2.lib.jse.CoerceLuaToJava;
import t6.j;

public class C3855b {

    public class a implements h {

        public final Globals f33015a;

        public final String f33016b;

        public final f f33017c;

        public class C0885a implements Runnable {

            public final Variable f33018b;

            public C0885a(final Variable val$variable) {
                this.f33018b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = j.J1() ? j.S1("LuaClassInspector - set number") : null;
                try {
                    a aVar = a.this;
                    aVar.f33015a.set(aVar.f33016b, this.f33018b.float_value);
                } finally {
                    j.P1(S12);
                }
            }
        }

        public a(final Globals val$globals, final String val$name, final f val$attribute) {
            this.f33015a = val$globals;
            this.f33016b = val$name;
            this.f33017c = val$attribute;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f33017c.c().toString() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new C0885a(variable));
            }
        }
    }

    public class C0886b implements h {

        public final Globals f33020a;

        public final String f33021b;

        public final f f33022c;

        public class a implements Runnable {

            public final Variable f33023b;

            public a(final Variable val$variable) {
                this.f33023b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = j.J1() ? j.S1("LuaClassInspector - set string") : null;
                try {
                    C0886b c0886b = C0886b.this;
                    c0886b.f33020a.set(c0886b.f33021b, this.f33023b.str_value);
                } finally {
                    j.P1(S12);
                }
            }
        }

        public C0886b(final Globals val$globals, final String val$name, final f val$attribute) {
            this.f33020a = val$globals;
            this.f33021b = val$name;
            this.f33022c = val$attribute;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f33022c.c().toString() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class c implements h {

        public final Globals f33025a;

        public final String f33026b;

        public final f f33027c;

        public class a implements Runnable {

            public final Variable f33028b;

            public a(final Variable val$variable) {
                this.f33028b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = j.J1() ? j.S1("LuaClassInspector - set boolean") : null;
                try {
                    c cVar = c.this;
                    cVar.f33025a.set(cVar.f33026b, this.f33028b.booolean_value.booleanValue() ? LuaValue.TRUE : LuaValue.FALSE);
                    j.P1(S12);
                } catch (Throwable th2) {
                    j.P1(S12);
                    throw th2;
                }
            }
        }

        public c(final Globals val$globals, final String val$name, final f val$attribute) {
            this.f33025a = val$globals;
            this.f33026b = val$name;
            this.f33027c = val$attribute;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f33027c.c().toString() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class d implements k {

        public final LuaValue f33030a;

        public final l f33031b;

        public final f f33032c;

        public d(final LuaValue val$value, final l val$aClass, final f val$attribute) {
            this.f33030a = val$value;
            this.f33031b = val$aClass;
            this.f33032c = val$attribute;
        }

        @Override
        public void a() {
        }

        @Override
        public Object getValue() {
            return CoerceLuaToJava.coerce(this.f33030a, this.f33031b.f21164a.getCls());
        }

        @Override
        public void setValue(Object value) {
            this.f33032c.e(CoerceJavaToLua.coerce(value));
        }
    }

    public static class e {

        public static final int[] f33033a;

        static {
            int[] iArr = new int[Variable.a.values().length];
            f33033a = iArr;
            try {
                iArr[Variable.a.Float.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33033a[Variable.a.String.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33033a[Variable.a.Boolean.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static class f {

        public String f33034a;

        public Globals f33035b;

        public f(String name, Globals globals) {
            this.f33034a = name;
            this.f33035b = globals;
        }

        public String b() {
            return this.f33034a;
        }

        public LuaValue c() {
            return this.f33035b.get(this.f33034a);
        }

        public void d(String name) {
            this.f33034a = name;
        }

        public void e(LuaValue object) {
            this.f33035b.set(this.f33034a, object);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0033. Please report as an issue. */
    public static List<C5.b> b(List<Ac.b> publicVars, LuaValue luaValue, Context context, Globals globals, GameObject gameObject) {
        List<f> list;
        LinkedList linkedList = new LinkedList();
        if (luaValue != null) {
            List<f> d10 = d(publicVars, luaValue, globals);
            int i10 = 0;
            while (i10 < d10.size()) {
                f fVar = d10.get(i10);
                String b10 = fVar.b();
                LuaValue c10 = fVar.c();
                String c11 = c(c10);
                c11.hashCode();
                char c12 = '\uffff';
                switch (c11.hashCode()) {
                    case -1034364087:
                        if (c11.equals("number")) {
                            c12 = 0;
                            break;
                        }
                        break;
                    case -891985903:
                        if (c11.equals(TypedValues.Custom.S_STRING)) {
                            c12 = 1;
                            break;
                        }
                        break;
                    case 64711720:
                        if (c11.equals(TypedValues.Custom.S_BOOLEAN)) {
                            c12 = 2;
                            break;
                        }
                        break;
                }
                switch (c12) {
                    case 0:
                        list = d10;
                        linkedList.add(new C5.b(new a(globals, b10, fVar), b10, b.a.SLFloat));
                        break;
                    case 1:
                        list = d10;
                        linkedList.add(new C5.b(new C0886b(globals, b10, fVar), b10, b.a.SLString));
                        break;
                    case 2:
                        list = d10;
                        linkedList.add(new C5.b(new c(globals, b10, fVar), b10, b.a.SLBoolean));
                        break;
                    default:
                        q qVar = new q(gameObject);
                        l[] b11 = g.b();
                        int length = b11.length;
                        int i11 = 0;
                        while (true) {
                            if (i11 >= length) {
                                list = d10;
                                System.out.println("Unsupported lua inspector type:" + c11);
                                break;
                            } else {
                                l lVar = b11[i11];
                                if (lVar.f21164a.getFullName().equals(c11)) {
                                    try {
                                        list = d10;
                                        try {
                                            C5.b inspector = lVar.f21164a.getInspector(context, new d(c10, lVar, fVar), b10, qVar);
                                            if (inspector != null) {
                                                linkedList.add(inspector);
                                                break;
                                            }
                                        } catch (Error e10) {
                                            e = e10;
                                            e.printStackTrace();
                                            i11++;
                                            d10 = list;
                                        } catch (Exception e11) {
                                            e = e11;
                                            e.printStackTrace();
                                            i11++;
                                            d10 = list;
                                        }
                                    } catch (Error | Exception e12) {
                                        e = e12;
                                        list = d10;
                                    }
                                } else {
                                    list = d10;
                                }
                                i11++;
                                d10 = list;
                            }
                        }
                        break;
                }
                i10++;
                d10 = list;
            }
        }
        return linkedList;
    }

    public static String c(LuaValue value) {
        String lowerCase = value.typename().toLowerCase(Locale.ROOT);
        return lowerCase.equals(AccountManager.KEY_USERDATA) ? value.toString() : lowerCase;
    }

    public static List<f> d(final List<Ac.b> publicVars, LuaValue object, Globals globals) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        LuaValue luaValue = globals.get("_G");
        LuaValue luaValue2 = LuaValue.NIL;
        while (true) {
            luaValue2 = luaValue.next(luaValue2).arg1();
            if (luaValue2.isnil()) {
                Collections.sort(steppedArrayList, Comparator.comparing(new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        Integer e10;
                        e10 = C3855b.e(List.this, (C3855b.f) obj);
                        return e10;
                    }
                }));
                return steppedArrayList;
            }
            String luaValue3 = luaValue2.toString();
            if (luaValue3 != null && !luaValue3.isEmpty()) {
                int i10 = 0;
                while (true) {
                    if (i10 >= publicVars.size()) {
                        break;
                    }
                    if (publicVars.get(i10).X(luaValue3)) {
                        steppedArrayList.add(new f(luaValue2.toString(), globals));
                        break;
                    }
                    i10++;
                }
            }
        }
    }

    public static Integer e(List list, f fVar) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (((Ac.b) list.get(i10)).X(fVar.f33034a)) {
                return Integer.valueOf(i10);
            }
        }
        return -1;
    }

    public static void f(List<Ac.b> publicVars, List<Variable> variables, LuaValue luaValue, GameObject gameObject, Globals globals) {
        List<f> d10 = d(publicVars, luaValue, globals);
        for (int i10 = 0; i10 < d10.size(); i10++) {
            f fVar = d10.get(i10);
            String b10 = fVar.b();
            c(fVar.c());
            int i11 = 0;
            while (true) {
                if (i11 < variables.size()) {
                    Variable variable = variables.get(i11);
                    if (variable.name.equals(b10)) {
                        q qVar = new q(gameObject);
                        l[] b11 = g.b();
                        int length = b11.length;
                        int i12 = 0;
                        while (true) {
                            if (i12 >= length) {
                                int i13 = e.f33033a[variable.type.ordinal()];
                                if (i13 == 1) {
                                    globals.set(b10, variable.float_value);
                                } else if (i13 == 2) {
                                    globals.set(b10, variable.str_value);
                                } else if (i13 == 3) {
                                    globals.set(b10, variable.booolean_value.booleanValue() ? LuaValue.TRUE : LuaValue.FALSE);
                                }
                            } else {
                                l lVar = b11[i12];
                                if (lVar.f21164a.getFullName().equals(variable.genericStorePackage)) {
                                    try {
                                        globals.set(b10, CoerceJavaToLua.coerce(lVar.f21164a.restore(variable, qVar)));
                                        break;
                                    } catch (Error | Exception e10) {
                                        e10.printStackTrace();
                                    }
                                }
                                i12++;
                            }
                        }
                    } else {
                        i11++;
                    }
                }
            }
        }
    }

    public static void g(List<Ac.b> publicVars, List<Variable> variables, LuaValue luaValue, Globals globals) {
        f(publicVars, variables, luaValue, null, globals);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0038. Please report as an issue. */
    public static List<Variable> h(List<Ac.b> publicVars, LuaValue luaValue, GameObject gameObject, Globals globals) {
        boolean z10;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        List<f> d10 = d(publicVars, luaValue, globals);
        for (int i10 = 0; i10 < d10.size(); i10++) {
            f fVar = d10.get(i10);
            String b10 = fVar.b();
            LuaValue c10 = fVar.c();
            String c11 = c(c10);
            Variable variable = new Variable();
            variable.name = b10;
            c11.hashCode();
            char c12 = '\uffff';
            switch (c11.hashCode()) {
                case -1034364087:
                    if (c11.equals("number")) {
                        c12 = 0;
                        break;
                    }
                    break;
                case -891985903:
                    if (c11.equals(TypedValues.Custom.S_STRING)) {
                        c12 = 1;
                        break;
                    }
                    break;
                case 64711720:
                    if (c11.equals(TypedValues.Custom.S_BOOLEAN)) {
                        c12 = 2;
                        break;
                    }
                    break;
            }
            switch (c12) {
                case 0:
                    variable.type = Variable.a.Float;
                    variable.float_value = c10.tofloat();
                    break;
                case 1:
                    variable.type = Variable.a.String;
                    variable.str_value = c10.toString();
                    break;
                case 2:
                    variable.type = Variable.a.Boolean;
                    variable.booolean_value = Boolean.valueOf(c10.toboolean());
                    break;
                default:
                    q qVar = new q(gameObject);
                    l[] b11 = g.b();
                    int length = b11.length;
                    Variable variable2 = variable;
                    int i11 = 0;
                    while (true) {
                        if (i11 < length) {
                            l lVar = b11[i11];
                            if (lVar.f21164a.getFullName().equals(c11)) {
                                try {
                                    variable2 = lVar.f21164a.save(b10, CoerceLuaToJava.coerce(c10, lVar.f21164a.getCls()), qVar);
                                    if (variable2 != null) {
                                        variable2.genericStorePackage = lVar.f21164a.getFullName();
                                    }
                                    z10 = true;
                                    variable = variable2;
                                } catch (Error | Exception e10) {
                                    e10.printStackTrace();
                                }
                            }
                            i11++;
                        } else {
                            variable = variable2;
                            z10 = false;
                        }
                    }
                    if (!z10) {
                        System.out.println("Unsupported lua inspector type:" + c11);
                        variable = null;
                        break;
                    }
                    break;
            }
            if (variable != null) {
                steppedArrayList.add(variable);
            }
        }
        return steppedArrayList;
    }

    public static List<Variable> i(List<Ac.b> publicVars, LuaValue LuaValue, Globals globals) {
        return h(publicVars, LuaValue, null, globals);
    }
}
