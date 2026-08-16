package P8;

import C5.b;
import F5.c;
import JAVARuntime.Component;
import JAVARuntime.Group;
import JAVARuntime.Hide;
import JAVARuntime.InspectorMemory;
import JAVARuntime.Order;
import JAVARuntime.ReadOnly;
import JAVARuntime.ShowIf;
import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.Toast;
import com.google.gson.Gson;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.InspectorEditor;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import gb.InterfaceC13318f;
import java.io.PrintStream;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;

public class f {

    public static Gson f20940a = new Gson();

    public class A implements n {

        public final p f20941a;

        public final Field f20942b;

        public final Object f20943c;

        public final Class f20944d;

        public A(final p val$listener, final Field val$field, final Object val$instance, final Class val$classAddress) {
            this.f20941a = val$listener;
            this.f20942b = val$field;
            this.f20943c = val$instance;
            this.f20944d = val$classAddress;
        }

        @Override
        public void a(Object value) {
            p pVar = this.f20941a;
            if (pVar != null) {
                pVar.a(this.f20942b, this.f20943c, this.f20944d);
            }
        }
    }

    public class B implements D5.i {

        public final int[] f20945a;

        public final List f20946b;

        public final p f20947c;

        public final Context f20948d;

        public B(final int[] val$deletingPos, final List val$list, final p val$listener, final Context val$context) {
            this.f20945a = val$deletingPos;
            this.f20946b = val$list;
            this.f20947c = val$listener;
            this.f20948d = val$context;
        }

        @Override
        public void a(Object listItem, int adapterPosition) {
            int[] iArr = this.f20945a;
            if (iArr[0] != adapterPosition) {
                iArr[0] = adapterPosition;
                Toast.makeText(this.f20948d, "Tap again to remove element", 0).show();
                return;
            }
            iArr[0] = -1;
            this.f20946b.remove(listItem);
            p pVar = this.f20947c;
            if (pVar != null) {
                pVar.b();
            }
        }
    }

    public class C implements D5.a {

        public final List f20949a;

        public final p f20950b;

        public final Field f20951c;

        public final Object f20952d;

        public final Class f20953e;

        public final GameObject f20954f;

        public final Context f20955g;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                p pVar = C.this.f20950b;
                if (pVar != null) {
                    pVar.b();
                }
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override
            public void run() {
                p pVar = C.this.f20950b;
                if (pVar != null) {
                    pVar.b();
                }
            }
        }

        public class c implements Runnable {
            public c() {
            }

            @Override
            public void run() {
                p pVar = C.this.f20950b;
                if (pVar != null) {
                    pVar.b();
                }
            }
        }

        public class d implements Runnable {
            public d() {
            }

            @Override
            public void run() {
                p pVar = C.this.f20950b;
                if (pVar != null) {
                    pVar.b();
                }
            }
        }

        public class e implements Runnable {
            public e() {
            }

            @Override
            public void run() {
                p pVar = C.this.f20950b;
                if (pVar != null) {
                    pVar.b();
                }
            }
        }

        public C(final List val$list, final p val$listener, final Field val$field, final Object val$instance, final Class val$classAddress, final GameObject val$gameObject, final Context val$context) {
            this.f20949a = val$list;
            this.f20950b = val$listener;
            this.f20951c = val$field;
            this.f20952d = val$instance;
            this.f20953e = val$classAddress;
            this.f20954f = val$gameObject;
            this.f20955g = val$context;
        }

        @Override
        public void a(View view, int adapterPosition) {
            boolean z10;
            Object i02;
            Object M10 = f.M(this.f20949a);
            boolean z11 = false;
            if (M10 == null) {
                Toast.makeText(this.f20955g, "Failed to determine class type", 0).show();
                return;
            }
            if (M10.getClass() == Float.TYPE || M10.getClass() == Float.class) {
                this.f20949a.add(new Float(0.0f));
                p pVar = this.f20950b;
                if (pVar != null) {
                    pVar.a(this.f20951c, this.f20952d, this.f20953e);
                }
                new Handler().postDelayed(new a(), 50L);
                return;
            }
            if (M10.getClass() == Integer.TYPE || M10.getClass() == Integer.class) {
                this.f20949a.add(new Integer(0));
                p pVar2 = this.f20950b;
                if (pVar2 != null) {
                    pVar2.a(this.f20951c, this.f20952d, this.f20953e);
                }
                new Handler().postDelayed(new b(), 50L);
                return;
            }
            if (M10.getClass() == String.class) {
                this.f20949a.add(new String(""));
                p pVar3 = this.f20950b;
                if (pVar3 != null) {
                    pVar3.a(this.f20951c, this.f20952d, this.f20953e);
                }
                new Handler().postDelayed(new c(), 50L);
                return;
            }
            if (M10.getClass() == Boolean.TYPE || M10.getClass() == Boolean.class) {
                this.f20949a.add(Boolean.FALSE);
                p pVar4 = this.f20950b;
                if (pVar4 != null) {
                    pVar4.a(this.f20951c, this.f20952d, this.f20953e);
                }
                new Handler().postDelayed(new d(), 50L);
                return;
            }
            q qVar = new q(this.f20954f);
            h[] a10 = g.a();
            int length = a10.length;
            int i10 = 0;
            while (true) {
                z10 = true;
                if (i10 >= length) {
                    break;
                }
                h hVar = a10[i10];
                if (hVar.f21163a.match(M10.getClass().getName(), qVar)) {
                    this.f20949a.add(hVar.f21163a.newInstance(qVar));
                    z11 = true;
                    break;
                }
                i10++;
            }
            if (z11 || (i02 = d8.j.i0(M10.getClass().getSimpleName())) == null) {
                z10 = z11;
            } else {
                this.f20949a.add(i02);
            }
            if (!z10) {
                try {
                    this.f20949a.add(M10.getClass().newInstance());
                } catch (Exception e10) {
                    e10.printStackTrace();
                    this.f20949a.add(null);
                }
            }
            p pVar5 = this.f20950b;
            if (pVar5 != null) {
                pVar5.b();
            }
            new Handler().postDelayed(new e(), 50L);
        }
    }

    public class D implements D5.a {

        public final Class f20961a;

        public final List f20962b;

        public final p f20963c;

        public final Field f20964d;

        public final Object f20965e;

        public final Class f20966f;

        public final GameObject f20967g;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                p pVar = D.this.f20963c;
                if (pVar != null) {
                    pVar.b();
                }
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override
            public void run() {
                p pVar = D.this.f20963c;
                if (pVar != null) {
                    pVar.b();
                }
            }
        }

        public class c implements Runnable {
            public c() {
            }

            @Override
            public void run() {
                p pVar = D.this.f20963c;
                if (pVar != null) {
                    pVar.b();
                }
            }
        }

        public class d implements Runnable {
            public d() {
            }

            @Override
            public void run() {
                p pVar = D.this.f20963c;
                if (pVar != null) {
                    pVar.b();
                }
            }
        }

        public class e implements Runnable {
            public e() {
            }

            @Override
            public void run() {
                D.this.f20963c.b();
            }
        }

        public D(final Class val$finalListType, final List val$list, final p val$listener, final Field val$field, final Object val$instance, final Class val$classAddress, final GameObject val$gameObject) {
            this.f20961a = val$finalListType;
            this.f20962b = val$list;
            this.f20963c = val$listener;
            this.f20964d = val$field;
            this.f20965e = val$instance;
            this.f20966f = val$classAddress;
            this.f20967g = val$gameObject;
        }

        @Override
        public void a(View view, int adapterPosition) {
            boolean z10;
            Object i02;
            Class<Float> cls = this.f20961a;
            if (cls == Float.TYPE || cls == Float.class) {
                this.f20962b.add(new Float(0.0f));
                p pVar = this.f20963c;
                if (pVar != null) {
                    pVar.a(this.f20964d, this.f20965e, this.f20966f);
                }
                new Handler().postDelayed(new a(), 50L);
            } else {
                boolean z11 = false;
                if (cls == Integer.TYPE || cls == Integer.class) {
                    this.f20962b.add(new Integer(0));
                    p pVar2 = this.f20963c;
                    if (pVar2 != null) {
                        pVar2.a(this.f20964d, this.f20965e, this.f20966f);
                    }
                    new Handler().postDelayed(new b(), 50L);
                } else if (cls == String.class) {
                    this.f20962b.add(new String(""));
                    p pVar3 = this.f20963c;
                    if (pVar3 != null) {
                        pVar3.a(this.f20964d, this.f20965e, this.f20966f);
                    }
                    new Handler().postDelayed(new c(), 50L);
                } else if (cls == Boolean.TYPE || cls == Boolean.class) {
                    this.f20962b.add(Boolean.FALSE);
                    p pVar4 = this.f20963c;
                    if (pVar4 != null) {
                        pVar4.a(this.f20964d, this.f20965e, this.f20966f);
                    }
                    new Handler().postDelayed(new d(), 50L);
                } else {
                    try {
                        q qVar = new q(this.f20967g);
                        h[] a10 = g.a();
                        int length = a10.length;
                        int i10 = 0;
                        while (true) {
                            z10 = true;
                            if (i10 >= length) {
                                break;
                            }
                            h hVar = a10[i10];
                            if (hVar.f21163a.match(this.f20961a.getName(), qVar)) {
                                this.f20962b.add(hVar.f21163a.newInstance(qVar));
                                z11 = true;
                                break;
                            }
                            i10++;
                        }
                        if (z11 || (i02 = d8.j.i0(this.f20961a.getSimpleName())) == null) {
                            z10 = z11;
                        } else {
                            this.f20962b.add(i02);
                        }
                        if (!z10) {
                            try {
                                this.f20962b.add(this.f20961a.newInstance());
                            } catch (Exception e10) {
                                e10.printStackTrace();
                                this.f20962b.add(null);
                            }
                        }
                    } catch (Exception e11) {
                        e11.printStackTrace();
                        this.f20962b.add(null);
                    }
                }
            }
            p pVar5 = this.f20963c;
            if (pVar5 != null) {
                pVar5.a(this.f20964d, this.f20965e, this.f20966f);
            }
            new Handler().postDelayed(new e(), 50L);
        }
    }

    public class E implements n {

        public final p f20973a;

        public final Field f20974b;

        public final Object f20975c;

        public final Class f20976d;

        public E(final p val$listener, final Field val$field, final Object val$instance, final Class val$classAddress) {
            this.f20973a = val$listener;
            this.f20974b = val$field;
            this.f20975c = val$instance;
            this.f20976d = val$classAddress;
        }

        @Override
        public void a(Object value) {
            p pVar = this.f20973a;
            if (pVar != null) {
                pVar.a(this.f20974b, this.f20975c, this.f20976d);
            }
        }
    }

    public class F implements D5.h {

        public final C5.b f20977a;

        public F(final C5.b val$insEntry) {
            this.f20977a = val$insEntry;
        }

        @Override
        public Variable get() {
            D5.h hVar = this.f20977a.f2067b;
            return hVar != null ? new Variable("", Boolean.valueOf("true".equalsIgnoreCase(hVar.get().str_value))) : new Variable("", Boolean.FALSE);
        }

        @Override
        public void set(Variable variable) {
            D5.h hVar = this.f20977a.f2067b;
            if (hVar == null || variable == null) {
                return;
            }
            hVar.set(variable);
        }
    }

    public class G implements D5.h {

        public final Object[] f20978a;

        public final int f20979b;

        public final Field f20980c;

        public final Object f20981d;

        public final p f20982e;

        public final Class f20983f;

        public G(final Object[] val$array, final int val$finalI, final Field val$field, final Object val$instance, final p val$listener, final Class val$classAddress) {
            this.f20978a = val$array;
            this.f20979b = val$finalI;
            this.f20980c = val$field;
            this.f20981d = val$instance;
            this.f20982e = val$listener;
            this.f20983f = val$classAddress;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f20978a[this.f20979b] + "");
        }

        @Override
        public void set(Variable result) {
            if (result != null) {
                this.f20978a[this.f20979b] = Integer.valueOf(result.int_value);
                f.R(this.f20980c, this.f20981d, this.f20978a);
                p pVar = this.f20982e;
                if (pVar != null) {
                    pVar.a(this.f20980c, this.f20981d, this.f20983f);
                }
            }
        }
    }

    public class H implements c.o0 {

        public final P f20984a;

        public H(final P val$node) {
            this.f20984a = val$node;
        }

        @Override
        public boolean a() {
            return true;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.addAll(f.o(this.f20984a));
            return entries;
        }
    }

    public class I implements Predicate<Field> {

        public final p f20985b;

        public I(final p val$listener) {
            this.f20985b = val$listener;
        }

        @Override
        public boolean test(Field field) {
            if (this.f20985b != null) {
                return !r0.c(field);
            }
            return false;
        }
    }

    public class J implements D5.h {

        public final Object[] f20986a;

        public final int f20987b;

        public final Field f20988c;

        public final Object f20989d;

        public final p f20990e;

        public final Class f20991f;

        public J(final Object[] val$array, final int val$finalI, final Field val$field, final Object val$instance, final p val$listener, final Class val$classAddress) {
            this.f20986a = val$array;
            this.f20987b = val$finalI;
            this.f20988c = val$field;
            this.f20989d = val$instance;
            this.f20990e = val$listener;
            this.f20991f = val$classAddress;
        }

        @Override
        public Variable get() {
            String str = (String) this.f20986a[this.f20987b];
            if (str == null) {
                str = "";
            }
            return new Variable("", str + "");
        }

        @Override
        public void set(Variable result) {
            if (result != null) {
                Object[] objArr = this.f20986a;
                objArr[this.f20987b] = result.str_value;
                f.R(this.f20988c, this.f20989d, objArr);
                p pVar = this.f20990e;
                if (pVar != null) {
                    pVar.a(this.f20988c, this.f20989d, this.f20991f);
                }
            }
        }
    }

    public class K implements D5.h {

        public final Object[] f20992a;

        public final int f20993b;

        public final Field f20994c;

        public final Object f20995d;

        public final p f20996e;

        public final Class f20997f;

        public K(final Object[] val$array, final int val$finalI, final Field val$field, final Object val$instance, final p val$listener, final Class val$classAddress) {
            this.f20992a = val$array;
            this.f20993b = val$finalI;
            this.f20994c = val$field;
            this.f20995d = val$instance;
            this.f20996e = val$listener;
            this.f20997f = val$classAddress;
        }

        @Override
        public Variable get() {
            Object obj = this.f20992a[this.f20993b];
            return new Variable("", Boolean.valueOf(obj instanceof Boolean ? ((Boolean) obj).booleanValue() : false));
        }

        @Override
        public void set(Variable result) {
            if (result != null) {
                Object[] objArr = this.f20992a;
                objArr[this.f20993b] = result.booolean_value;
                f.R(this.f20994c, this.f20995d, objArr);
                p pVar = this.f20996e;
                if (pVar != null) {
                    pVar.a(this.f20994c, this.f20995d, this.f20997f);
                }
            }
        }
    }

    public class L implements n {

        public final Field f20998a;

        public final Object f20999b;

        public final Object[] f21000c;

        public final p f21001d;

        public final Class f21002e;

        public L(final Field val$field, final Object val$instance, final Object[] val$array, final p val$listener, final Class val$classAddress) {
            this.f20998a = val$field;
            this.f20999b = val$instance;
            this.f21000c = val$array;
            this.f21001d = val$listener;
            this.f21002e = val$classAddress;
        }

        @Override
        public void a(Object value) {
            f.R(this.f20998a, this.f20999b, this.f21000c);
            p pVar = this.f21001d;
            if (pVar != null) {
                pVar.a(this.f20998a, this.f20999b, this.f21002e);
            }
        }
    }

    public class M implements D5.h {

        public final Field f21003a;

        public final Object f21004b;

        public final p f21005c;

        public final Class f21006d;

        public final Set f21007e;

        public M(final Field val$field, final Object val$instance, final p val$listener, final Class val$classAddress, final Set val$conditionalFields) {
            this.f21003a = val$field;
            this.f21004b = val$instance;
            this.f21005c = val$listener;
            this.f21006d = val$classAddress;
            this.f21007e = val$conditionalFields;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                try {
                    this.f21003a.set(this.f21004b, this.f21003a.getType().getEnumConstants()[variable.int_value]);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                p pVar = this.f21005c;
                if (pVar != null) {
                    pVar.a(this.f21003a, this.f21004b, this.f21006d);
                    if (this.f21007e.contains(this.f21003a.getName())) {
                        this.f21005c.b();
                    }
                }
            }
        }
    }

    public class N implements D5.h {

        public final Field f21008a;

        public final Context f21009b;

        public final p f21010c;

        public final Object f21011d;

        public final Class f21012e;

        public N(final Field val$field, final Context val$context, final p val$listener, final Object val$instance, final Class val$classAddress) {
            this.f21008a = val$field;
            this.f21009b = val$context;
            this.f21010c = val$listener;
            this.f21011d = val$instance;
            this.f21012e = val$classAddress;
        }

        @Override
        public Variable get() {
            try {
                return new Variable("", this.f21008a.getFloat(this.f21011d) + "");
            } catch (IllegalAccessException | IllegalArgumentException e10) {
                e10.printStackTrace();
                return new Variable("", "0");
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x003c  */
        /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void set(Variable result) {
            p pVar;
            if (result != null) {
                try {
                } catch (IllegalAccessException e10) {
                    e = e10;
                    e.printStackTrace();
                    pVar = this.f21010c;
                    if (pVar != null) {
                    }
                } catch (IllegalArgumentException e11) {
                    e = e11;
                    e.printStackTrace();
                    pVar = this.f21010c;
                    if (pVar != null) {
                    }
                }
                if (this.f21008a.getAnnotation(ReadOnly.class) != null) {
                    Toast.makeText(this.f21009b, "Field is read only!", 0).show();
                    p pVar2 = this.f21010c;
                    if (pVar2 != null) {
                        pVar2.a(this.f21008a, this.f21011d, this.f21012e);
                        return;
                    }
                    return;
                }
                this.f21008a.setFloat(this.f21011d, result.float_value);
                pVar = this.f21010c;
                if (pVar != null) {
                    pVar.a(this.f21008a, this.f21011d, this.f21012e);
                }
            }
        }
    }

    public class O implements D5.h {

        public final Field f21013a;

        public final Context f21014b;

        public final p f21015c;

        public final Object f21016d;

        public final Class f21017e;

        public O(final Field val$field, final Context val$context, final p val$listener, final Object val$instance, final Class val$classAddress) {
            this.f21013a = val$field;
            this.f21014b = val$context;
            this.f21015c = val$listener;
            this.f21016d = val$instance;
            this.f21017e = val$classAddress;
        }

        @Override
        public Variable get() {
            try {
                return new Variable("", ((Float) this.f21013a.get(this.f21016d)).floatValue() + "");
            } catch (IllegalAccessException | IllegalArgumentException e10) {
                e10.printStackTrace();
                return new Variable("", "0");
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0041  */
        /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void set(Variable result) {
            p pVar;
            if (result != null) {
                try {
                } catch (IllegalAccessException e10) {
                    e = e10;
                    e.printStackTrace();
                    pVar = this.f21015c;
                    if (pVar != null) {
                    }
                } catch (IllegalArgumentException e11) {
                    e = e11;
                    e.printStackTrace();
                    pVar = this.f21015c;
                    if (pVar != null) {
                    }
                }
                if (this.f21013a.getAnnotation(ReadOnly.class) != null) {
                    Toast.makeText(this.f21014b, "Field is read only!", 0).show();
                    p pVar2 = this.f21015c;
                    if (pVar2 != null) {
                        pVar2.a(this.f21013a, this.f21016d, this.f21017e);
                        return;
                    }
                    return;
                }
                this.f21013a.set(this.f21016d, new Float(result.float_value));
                pVar = this.f21015c;
                if (pVar != null) {
                    pVar.a(this.f21013a, this.f21016d, this.f21017e);
                }
            }
        }
    }

    public static class P {

        public final String f21018a;

        public final List<Object> f21019b;

        public final Map<String, P> f21020c;

        public P(String str, C2976k c2976k) {
            this(str);
        }

        public P(String name) {
            this.f21019b = new SteppedArrayList();
            this.f21020c = new LinkedHashMap();
            this.f21018a = name;
        }
    }

    public static class Q {

        public final Field f21021a;

        public final C5.b f21022b;

        public Q(Field field, C5.b bVar, C2976k c2976k) {
            this(field, bVar);
        }

        public Q(Field field, C5.b entry) {
            this.f21021a = field;
            this.f21022b = entry;
        }
    }

    public class C2967a implements D5.h {

        public final Field f21023a;

        public final Context f21024b;

        public final p f21025c;

        public final Object f21026d;

        public final Class f21027e;

        public C2967a(final Field val$field, final Context val$context, final p val$listener, final Object val$instance, final Class val$classAddress) {
            this.f21023a = val$field;
            this.f21024b = val$context;
            this.f21025c = val$listener;
            this.f21026d = val$instance;
            this.f21027e = val$classAddress;
        }

        @Override
        public Variable get() {
            try {
                return new Variable("", this.f21023a.getInt(this.f21026d) + "");
            } catch (IllegalAccessException | IllegalArgumentException e10) {
                e10.printStackTrace();
                return new Variable("", "0");
            }
        }

        @Override
        public void set(Variable result) {
            if (result != null) {
                if (this.f21023a.getAnnotation(ReadOnly.class) != null) {
                    Toast.makeText(this.f21024b, "Field is read only!", 0).show();
                    p pVar = this.f21025c;
                    if (pVar != null) {
                        pVar.a(this.f21023a, this.f21026d, this.f21027e);
                        return;
                    }
                    return;
                }
                try {
                    this.f21023a.setInt(this.f21026d, result.int_value);
                } catch (IllegalAccessException | IllegalArgumentException e10) {
                    e10.printStackTrace();
                }
                p pVar2 = this.f21025c;
                if (pVar2 != null) {
                    pVar2.a(this.f21023a, this.f21026d, this.f21027e);
                }
            }
        }
    }

    public class C2968b implements D5.h {

        public final Field f21028a;

        public final Context f21029b;

        public final p f21030c;

        public final Object f21031d;

        public final Class f21032e;

        public C2968b(final Field val$field, final Context val$context, final p val$listener, final Object val$instance, final Class val$classAddress) {
            this.f21028a = val$field;
            this.f21029b = val$context;
            this.f21030c = val$listener;
            this.f21031d = val$instance;
            this.f21032e = val$classAddress;
        }

        @Override
        public Variable get() {
            try {
                return new Variable("", ((Integer) this.f21028a.get(this.f21031d)).intValue() + "");
            } catch (IllegalAccessException | IllegalArgumentException e10) {
                e10.printStackTrace();
                return new Variable("", "0");
            }
        }

        @Override
        public void set(Variable result) {
            if (result != null) {
                if (this.f21028a.getAnnotation(ReadOnly.class) != null) {
                    Toast.makeText(this.f21029b, "Field is read only!", 0).show();
                    p pVar = this.f21030c;
                    if (pVar != null) {
                        pVar.a(this.f21028a, this.f21031d, this.f21032e);
                        return;
                    }
                    return;
                }
                try {
                    this.f21028a.set(this.f21031d, new Integer(result.int_value));
                } catch (IllegalAccessException | IllegalArgumentException e10) {
                    e10.printStackTrace();
                }
                p pVar2 = this.f21030c;
                if (pVar2 != null) {
                    pVar2.a(this.f21028a, this.f21031d, this.f21032e);
                }
            }
        }
    }

    public class C2969c implements D5.h {

        public final Field f21033a;

        public final Context f21034b;

        public final p f21035c;

        public final Object f21036d;

        public final Class f21037e;

        public C2969c(final Field val$field, final Context val$context, final p val$listener, final Object val$instance, final Class val$classAddress) {
            this.f21033a = val$field;
            this.f21034b = val$context;
            this.f21035c = val$listener;
            this.f21036d = val$instance;
            this.f21037e = val$classAddress;
        }

        @Override
        public Variable get() {
            try {
                String str = (String) this.f21033a.get(this.f21036d);
                if (str == null) {
                    str = "";
                }
                return new Variable("", str);
            } catch (IllegalAccessException | IllegalArgumentException e10) {
                e10.printStackTrace();
                return new Variable("", "");
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0041  */
        /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void set(Variable result) {
            p pVar;
            if (result != null) {
                try {
                } catch (IllegalAccessException e10) {
                    e = e10;
                    e.printStackTrace();
                    pVar = this.f21035c;
                    if (pVar != null) {
                    }
                } catch (IllegalArgumentException e11) {
                    e = e11;
                    e.printStackTrace();
                    pVar = this.f21035c;
                    if (pVar != null) {
                    }
                }
                if (this.f21033a.getAnnotation(ReadOnly.class) != null) {
                    Toast.makeText(this.f21034b, "Field is read only!", 0).show();
                    p pVar2 = this.f21035c;
                    if (pVar2 != null) {
                        pVar2.a(this.f21033a, this.f21036d, this.f21037e);
                        return;
                    }
                    return;
                }
                Field field = this.f21033a;
                Object obj = this.f21036d;
                String str = result.str_value;
                if (str == null) {
                    str = "";
                }
                field.set(obj, str);
                pVar = this.f21035c;
                if (pVar != null) {
                    pVar.a(this.f21033a, this.f21036d, this.f21037e);
                }
            }
        }
    }

    public class C2970d implements D5.h {

        public final Field f21038a;

        public final Context f21039b;

        public final p f21040c;

        public final Object f21041d;

        public final Class f21042e;

        public final Set f21043f;

        public C2970d(final Field val$field, final Context val$context, final p val$listener, final Object val$instance, final Class val$classAddress, final Set val$conditionalFields) {
            this.f21038a = val$field;
            this.f21039b = val$context;
            this.f21040c = val$listener;
            this.f21041d = val$instance;
            this.f21042e = val$classAddress;
            this.f21043f = val$conditionalFields;
        }

        @Override
        public Variable get() {
            try {
                return new Variable("", this.f21038a.getBoolean(this.f21041d) + "");
            } catch (IllegalAccessException | IllegalArgumentException | NullPointerException e10) {
                e10.printStackTrace();
                return new Variable("", "false");
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0040  */
        /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void set(Variable result) {
            p pVar;
            if (result != null) {
                try {
                } catch (IllegalAccessException e10) {
                    e = e10;
                    e.printStackTrace();
                    pVar = this.f21040c;
                    if (pVar != null) {
                    }
                } catch (IllegalArgumentException e11) {
                    e = e11;
                    e.printStackTrace();
                    pVar = this.f21040c;
                    if (pVar != null) {
                    }
                }
                if (this.f21038a.getAnnotation(ReadOnly.class) != null) {
                    Toast.makeText(this.f21039b, "Field is read only!", 0).show();
                    p pVar2 = this.f21040c;
                    if (pVar2 != null) {
                        pVar2.a(this.f21038a, this.f21041d, this.f21042e);
                        return;
                    }
                    return;
                }
                this.f21038a.setBoolean(this.f21041d, result.booolean_value.booleanValue());
                pVar = this.f21040c;
                if (pVar != null) {
                    pVar.a(this.f21038a, this.f21041d, this.f21042e);
                    if (this.f21043f.contains(this.f21038a.getName())) {
                        this.f21040c.b();
                    }
                }
            }
        }
    }

    public class C2971e implements D5.h {

        public final Field f21044a;

        public final Context f21045b;

        public final p f21046c;

        public final Object f21047d;

        public final Class f21048e;

        public final Set f21049f;

        public C2971e(final Field val$field, final Context val$context, final p val$listener, final Object val$instance, final Class val$classAddress, final Set val$conditionalFields) {
            this.f21044a = val$field;
            this.f21045b = val$context;
            this.f21046c = val$listener;
            this.f21047d = val$instance;
            this.f21048e = val$classAddress;
            this.f21049f = val$conditionalFields;
        }

        @Override
        public Variable get() {
            try {
                return new Variable("", ((Boolean) this.f21044a.get(this.f21047d)).booleanValue() + "");
            } catch (IllegalAccessException | IllegalArgumentException | NullPointerException e10) {
                e10.printStackTrace();
                return new Variable("", "false");
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0045  */
        /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void set(Variable result) {
            p pVar;
            if (result != null) {
                try {
                } catch (IllegalAccessException e10) {
                    e = e10;
                    e.printStackTrace();
                    pVar = this.f21046c;
                    if (pVar != null) {
                    }
                } catch (IllegalArgumentException e11) {
                    e = e11;
                    e.printStackTrace();
                    pVar = this.f21046c;
                    if (pVar != null) {
                    }
                }
                if (this.f21044a.getAnnotation(ReadOnly.class) != null) {
                    Toast.makeText(this.f21045b, "Field is read only!", 0).show();
                    p pVar2 = this.f21046c;
                    if (pVar2 != null) {
                        pVar2.a(this.f21044a, this.f21047d, this.f21048e);
                        return;
                    }
                    return;
                }
                this.f21044a.set(this.f21047d, new Boolean(result.booolean_value.booleanValue()));
                pVar = this.f21046c;
                if (pVar != null) {
                    pVar.a(this.f21044a, this.f21047d, this.f21048e);
                    if (this.f21049f.contains(this.f21044a.getName())) {
                        this.f21046c.b();
                    }
                }
            }
        }
    }

    public class C0516f implements InterfaceC13318f {

        public final InspectorMemory f21050a;

        public final Field f21051b;

        public final InspectorEditor f21052c;

        public C0516f(final InspectorMemory val$inspectorMemory, final Field val$field, final InspectorEditor val$finalInspectorEditor) {
            this.f21050a = val$inspectorMemory;
            this.f21051b = val$field;
            this.f21052c = val$finalInspectorEditor;
        }

        @Override
        public void a(boolean open) {
            InspectorMemory inspectorMemory = this.f21050a;
            String name = this.f21051b.getName();
            X7.a aVar = W7.b.f27305e;
            inspectorMemory.store(name, X7.a.m().toJson(this.f21052c));
        }
    }

    public class C2972g implements D5.h {

        public final List f21053a;

        public final int f21054b;

        public final p f21055c;

        public final Field f21056d;

        public final Object f21057e;

        public final Class f21058f;

        public final Object f21059g;

        public C2972g(final List val$list, final int val$finalX, final p val$listener, final Field val$field, final Object val$instance, final Class val$classAddress, final Object val$o) {
            this.f21053a = val$list;
            this.f21054b = val$finalX;
            this.f21055c = val$listener;
            this.f21056d = val$field;
            this.f21057e = val$instance;
            this.f21058f = val$classAddress;
            this.f21059g = val$o;
        }

        @Override
        public Variable get() {
            return new Variable("", f.l(this.f21059g) + "");
        }

        @Override
        public void set(Variable result) {
            if (result != null) {
                this.f21053a.set(this.f21054b, Float.valueOf(result.float_value));
                p pVar = this.f21055c;
                if (pVar != null) {
                    pVar.a(this.f21056d, this.f21057e, this.f21058f);
                }
            }
        }
    }

    public class C2973h implements D5.h {

        public final List f21060a;

        public final int f21061b;

        public final p f21062c;

        public final Field f21063d;

        public final Object f21064e;

        public final Class f21065f;

        public final Object f21066g;

        public C2973h(final List val$list, final int val$finalX, final p val$listener, final Field val$field, final Object val$instance, final Class val$classAddress, final Object val$o) {
            this.f21060a = val$list;
            this.f21061b = val$finalX;
            this.f21062c = val$listener;
            this.f21063d = val$field;
            this.f21064e = val$instance;
            this.f21065f = val$classAddress;
            this.f21066g = val$o;
        }

        @Override
        public Variable get() {
            return new Variable("", f.m(this.f21066g) + "");
        }

        @Override
        public void set(Variable result) {
            if (result != null) {
                this.f21060a.set(this.f21061b, Integer.valueOf(result.int_value));
                p pVar = this.f21062c;
                if (pVar != null) {
                    pVar.a(this.f21063d, this.f21064e, this.f21065f);
                }
            }
        }
    }

    public class C2974i implements D5.h {

        public final List f21067a;

        public final int f21068b;

        public final p f21069c;

        public final Field f21070d;

        public final Object f21071e;

        public final Class f21072f;

        public final Object f21073g;

        public C2974i(final List val$list, final int val$finalX, final p val$listener, final Field val$field, final Object val$instance, final Class val$classAddress, final Object val$o) {
            this.f21067a = val$list;
            this.f21068b = val$finalX;
            this.f21069c = val$listener;
            this.f21070d = val$field;
            this.f21071e = val$instance;
            this.f21072f = val$classAddress;
            this.f21073g = val$o;
        }

        @Override
        public Variable get() {
            return new Variable("", f.n(this.f21073g));
        }

        @Override
        public void set(Variable result) {
            if (result != null) {
                this.f21067a.set(this.f21068b, result.str_value);
                p pVar = this.f21069c;
                if (pVar != null) {
                    pVar.a(this.f21070d, this.f21071e, this.f21072f);
                }
            }
        }
    }

    public class C2975j implements D5.h {

        public final List f21074a;

        public final int f21075b;

        public final p f21076c;

        public final Field f21077d;

        public final Object f21078e;

        public final Class f21079f;

        public final Object f21080g;

        public C2975j(final List val$list, final int val$finalX, final p val$listener, final Field val$field, final Object val$instance, final Class val$classAddress, final Object val$o) {
            this.f21074a = val$list;
            this.f21075b = val$finalX;
            this.f21076c = val$listener;
            this.f21077d = val$field;
            this.f21078e = val$instance;
            this.f21079f = val$classAddress;
            this.f21080g = val$o;
        }

        @Override
        public Variable get() {
            return new Variable("", Boolean.valueOf(f.k(this.f21080g)));
        }

        @Override
        public void set(Variable result) {
            if (result != null) {
                this.f21074a.set(this.f21075b, result.booolean_value);
                p pVar = this.f21076c;
                if (pVar != null) {
                    pVar.a(this.f21077d, this.f21078e, this.f21079f);
                }
            }
        }
    }

    public class C2976k implements D5.h {

        public final Object[] f21081a;

        public final Field f21082b;

        public final GameObject f21083c;

        public final Object f21084d;

        public final p f21085e;

        public final Class f21086f;

        public C2976k(final Object[] val$array, final Field val$field, final GameObject val$gameObject, final Object val$instance, final p val$listener, final Class val$classAddress) {
            this.f21081a = val$array;
            this.f21082b = val$field;
            this.f21083c = val$gameObject;
            this.f21084d = val$instance;
            this.f21085e = val$listener;
            this.f21086f = val$classAddress;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f21081a.length + "");
        }

        /* JADX WARN: Removed duplicated region for block: B:36:0x0088 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0097 A[SYNTHETIC] */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void set(Variable result) {
            String str;
            boolean z10;
            boolean z11;
            Object i02;
            if (result == null || result.int_value == this.f21081a.length) {
                return;
            }
            try {
                str = this.f21082b.getType().getComponentType().getName();
            } catch (Error | Exception e10) {
                e10.printStackTrace();
                str = "";
            }
            int i10 = result.int_value;
            Object[] objArr = new Object[i10];
            if (i10 > 0) {
                for (int i11 = 0; i11 < i10; i11++) {
                    Object[] objArr2 = this.f21081a;
                    if (objArr2.length > i11) {
                        objArr[i11] = objArr2[i11];
                    } else {
                        Class G02 = d8.j.G0(str);
                        if (G02 != null && !Component.class.isAssignableFrom(G02)) {
                            try {
                                q qVar = new q(this.f21083c);
                                h[] a10 = g.a();
                                int length = a10.length;
                                int i12 = 0;
                                while (true) {
                                    z10 = true;
                                    if (i12 >= length) {
                                        z11 = false;
                                        break;
                                    }
                                    h hVar = a10[i12];
                                    if (hVar.f21163a.match(str, qVar)) {
                                        objArr[i11] = hVar.f21163a.newInstance(qVar);
                                        z11 = true;
                                        break;
                                    }
                                    i12++;
                                }
                                if (!z11 && (i02 = d8.j.i0(str)) != null) {
                                    objArr[i11] = i02;
                                    z11 = true;
                                }
                                if (!z11) {
                                    try {
                                        objArr[i11] = G02.newInstance();
                                    } catch (Exception e11) {
                                        e11.printStackTrace();
                                    }
                                    if (z10) {
                                        try {
                                            objArr[i11] = G02.newInstance();
                                        } catch (Exception e12) {
                                            e12.printStackTrace();
                                        }
                                    }
                                }
                                z10 = z11;
                                if (z10) {
                                }
                            } catch (Exception e13) {
                                e13.printStackTrace();
                            }
                        }
                    }
                }
            }
            f.R(this.f21082b, this.f21084d, objArr);
            p pVar = this.f21085e;
            if (pVar != null) {
                pVar.a(this.f21082b, this.f21084d, this.f21086f);
                this.f21085e.b();
            }
        }
    }

    public class C2977l implements InterfaceC13318f {

        public final InspectorMemory f21087a;

        public final Field f21088b;

        public final int f21089c;

        public final InspectorEditor f21090d;

        public C2977l(final InspectorMemory val$inspectorMemory, final Field val$field, final int val$finalX1, final InspectorEditor val$finalelementEditor) {
            this.f21087a = val$inspectorMemory;
            this.f21088b = val$field;
            this.f21089c = val$finalX1;
            this.f21090d = val$finalelementEditor;
        }

        @Override
        public void a(boolean open) {
            InspectorMemory inspectorMemory = this.f21087a;
            String str = this.f21088b.getName() + "/" + this.f21089c;
            X7.a aVar = W7.b.f27305e;
            inspectorMemory.store(str, X7.a.m().toJson(this.f21090d));
        }
    }

    public class C2978m implements D5.i {

        public final int[] f21091a;

        public final List f21092b;

        public final p f21093c;

        public final Context f21094d;

        public C2978m(final int[] val$deletingPos, final List val$list, final p val$listener, final Context val$context) {
            this.f21091a = val$deletingPos;
            this.f21092b = val$list;
            this.f21093c = val$listener;
            this.f21094d = val$context;
        }

        @Override
        public void a(Object listItem, int adapterPosition) {
            int[] iArr = this.f21091a;
            if (iArr[0] != adapterPosition) {
                iArr[0] = adapterPosition;
                Toast.makeText(this.f21094d, "Tap again to remove element", 0).show();
                return;
            }
            iArr[0] = -1;
            this.f21092b.remove(listItem);
            p pVar = this.f21093c;
            if (pVar != null) {
                pVar.b();
            }
        }
    }

    public class C2979n implements InterfaceC13318f {

        public final InspectorMemory f21095a;

        public final Field f21096b;

        public final int f21097c;

        public final InspectorEditor f21098d;

        public C2979n(final InspectorMemory val$inspectorMemory, final Field val$field, final int val$finalX1, final InspectorEditor val$finalelementEditor) {
            this.f21095a = val$inspectorMemory;
            this.f21096b = val$field;
            this.f21097c = val$finalX1;
            this.f21098d = val$finalelementEditor;
        }

        @Override
        public void a(boolean open) {
            InspectorMemory inspectorMemory = this.f21095a;
            String str = this.f21096b.getName() + "/" + this.f21097c;
            X7.a aVar = W7.b.f27305e;
            inspectorMemory.store(str, X7.a.m().toJson(this.f21098d));
        }
    }

    public class C2980o implements n {

        public final p f21099a;

        public final Field f21100b;

        public final Object f21101c;

        public final Class f21102d;

        public C2980o(final p val$listener, final Field val$field, final Object val$instance, final Class val$classAddress) {
            this.f21099a = val$listener;
            this.f21100b = val$field;
            this.f21101c = val$instance;
            this.f21102d = val$classAddress;
        }

        @Override
        public void a(Object value) {
            p pVar = this.f21099a;
            if (pVar != null) {
                pVar.a(this.f21100b, this.f21101c, this.f21102d);
            }
        }
    }

    public class C2981p implements D5.i {

        public final int[] f21103a;

        public final List f21104b;

        public final p f21105c;

        public final Context f21106d;

        public C2981p(final int[] val$deletingPos, final List val$list, final p val$listener, final Context val$context) {
            this.f21103a = val$deletingPos;
            this.f21104b = val$list;
            this.f21105c = val$listener;
            this.f21106d = val$context;
        }

        @Override
        public void a(Object listItem, int adapterPosition) {
            int[] iArr = this.f21103a;
            if (iArr[0] != adapterPosition) {
                iArr[0] = adapterPosition;
                Toast.makeText(this.f21106d, "Tap again to remove element", 0).show();
                return;
            }
            iArr[0] = -1;
            this.f21104b.remove(listItem);
            p pVar = this.f21105c;
            if (pVar != null) {
                pVar.b();
            }
        }
    }

    public class C2982q implements InterfaceC13318f {

        public final InspectorMemory f21107a;

        public final Field f21108b;

        public final int f21109c;

        public final InspectorEditor f21110d;

        public C2982q(final InspectorMemory val$inspectorMemory, final Field val$field, final int val$finalX1, final InspectorEditor val$finalelementEditor) {
            this.f21107a = val$inspectorMemory;
            this.f21108b = val$field;
            this.f21109c = val$finalX1;
            this.f21110d = val$finalelementEditor;
        }

        @Override
        public void a(boolean open) {
            InspectorMemory inspectorMemory = this.f21107a;
            String str = this.f21108b.getName() + "/" + this.f21109c;
            X7.a aVar = W7.b.f27305e;
            inspectorMemory.store(str, X7.a.m().toJson(this.f21110d));
        }
    }

    public class r implements D5.i {

        public final int[] f21111a;

        public final List f21112b;

        public final p f21113c;

        public final Context f21114d;

        public r(final int[] val$deletingPos, final List val$list, final p val$listener, final Context val$context) {
            this.f21111a = val$deletingPos;
            this.f21112b = val$list;
            this.f21113c = val$listener;
            this.f21114d = val$context;
        }

        @Override
        public void a(Object listItem, int adapterPosition) {
            int[] iArr = this.f21111a;
            if (iArr[0] != adapterPosition) {
                iArr[0] = adapterPosition;
                Toast.makeText(this.f21114d, "Tap again to remove element", 0).show();
                return;
            }
            iArr[0] = -1;
            this.f21112b.remove(listItem);
            p pVar = this.f21113c;
            if (pVar != null) {
                pVar.b();
            }
        }
    }

    public class s implements D5.h {

        public final List f21115a;

        public final int f21116b;

        public final p f21117c;

        public final Field f21118d;

        public final Object f21119e;

        public final Class f21120f;

        public final Object f21121g;

        public s(final List val$list, final int val$finalX, final p val$listener, final Field val$field, final Object val$instance, final Class val$classAddress, final Object val$o) {
            this.f21115a = val$list;
            this.f21116b = val$finalX;
            this.f21117c = val$listener;
            this.f21118d = val$field;
            this.f21119e = val$instance;
            this.f21120f = val$classAddress;
            this.f21121g = val$o;
        }

        @Override
        public Variable get() {
            return new Variable("", f.l(this.f21121g) + "");
        }

        @Override
        public void set(Variable result) {
            if (result != null) {
                this.f21115a.set(this.f21116b, Float.valueOf(result.float_value));
                p pVar = this.f21117c;
                if (pVar != null) {
                    pVar.a(this.f21118d, this.f21119e, this.f21120f);
                }
            }
        }
    }

    public class t implements D5.h {

        public final List f21122a;

        public final int f21123b;

        public final p f21124c;

        public final Field f21125d;

        public final Object f21126e;

        public final Class f21127f;

        public final Object f21128g;

        public t(final List val$list, final int val$finalX, final p val$listener, final Field val$field, final Object val$instance, final Class val$classAddress, final Object val$o) {
            this.f21122a = val$list;
            this.f21123b = val$finalX;
            this.f21124c = val$listener;
            this.f21125d = val$field;
            this.f21126e = val$instance;
            this.f21127f = val$classAddress;
            this.f21128g = val$o;
        }

        @Override
        public Variable get() {
            return new Variable("", f.m(this.f21128g) + "");
        }

        @Override
        public void set(Variable result) {
            if (result != null) {
                this.f21122a.set(this.f21123b, Integer.valueOf(result.int_value));
                p pVar = this.f21124c;
                if (pVar != null) {
                    pVar.a(this.f21125d, this.f21126e, this.f21127f);
                }
            }
        }
    }

    public class u implements D5.h {

        public final List f21129a;

        public final int f21130b;

        public final p f21131c;

        public final Field f21132d;

        public final Object f21133e;

        public final Class f21134f;

        public final Object f21135g;

        public u(final List val$list, final int val$finalX, final p val$listener, final Field val$field, final Object val$instance, final Class val$classAddress, final Object val$o) {
            this.f21129a = val$list;
            this.f21130b = val$finalX;
            this.f21131c = val$listener;
            this.f21132d = val$field;
            this.f21133e = val$instance;
            this.f21134f = val$classAddress;
            this.f21135g = val$o;
        }

        @Override
        public Variable get() {
            return new Variable("", f.n(this.f21135g));
        }

        @Override
        public void set(Variable result) {
            if (result != null) {
                this.f21129a.set(this.f21130b, result.str_value);
                p pVar = this.f21131c;
                if (pVar != null) {
                    pVar.a(this.f21132d, this.f21133e, this.f21134f);
                }
            }
        }
    }

    public class v implements D5.h {

        public final Object[] f21136a;

        public final int f21137b;

        public final Field f21138c;

        public final Object f21139d;

        public final p f21140e;

        public final Class f21141f;

        public v(final Object[] val$array, final int val$finalI, final Field val$field, final Object val$instance, final p val$listener, final Class val$classAddress) {
            this.f21136a = val$array;
            this.f21137b = val$finalI;
            this.f21138c = val$field;
            this.f21139d = val$instance;
            this.f21140e = val$listener;
            this.f21141f = val$classAddress;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f21136a[this.f21137b] + "");
        }

        @Override
        public void set(Variable result) {
            if (result != null) {
                this.f21136a[this.f21137b] = Float.valueOf(result.float_value);
                f.R(this.f21138c, this.f21139d, this.f21136a);
                p pVar = this.f21140e;
                if (pVar != null) {
                    pVar.a(this.f21138c, this.f21139d, this.f21141f);
                }
            }
        }
    }

    public class w implements D5.h {

        public final List f21142a;

        public final int f21143b;

        public final p f21144c;

        public final Field f21145d;

        public final Object f21146e;

        public final Class f21147f;

        public final Object f21148g;

        public w(final List val$list, final int val$finalX, final p val$listener, final Field val$field, final Object val$instance, final Class val$classAddress, final Object val$o) {
            this.f21142a = val$list;
            this.f21143b = val$finalX;
            this.f21144c = val$listener;
            this.f21145d = val$field;
            this.f21146e = val$instance;
            this.f21147f = val$classAddress;
            this.f21148g = val$o;
        }

        @Override
        public Variable get() {
            return new Variable("", Boolean.valueOf(f.k(this.f21148g)));
        }

        @Override
        public void set(Variable result) {
            if (result != null) {
                this.f21142a.set(this.f21143b, result.booolean_value);
                p pVar = this.f21144c;
                if (pVar != null) {
                    pVar.a(this.f21145d, this.f21146e, this.f21147f);
                }
            }
        }
    }

    public class x implements InterfaceC13318f {

        public final InspectorMemory f21149a;

        public final Field f21150b;

        public final int f21151c;

        public final InspectorEditor f21152d;

        public x(final InspectorMemory val$inspectorMemory, final Field val$field, final int val$finalX1, final InspectorEditor val$finalelementEditor) {
            this.f21149a = val$inspectorMemory;
            this.f21150b = val$field;
            this.f21151c = val$finalX1;
            this.f21152d = val$finalelementEditor;
        }

        @Override
        public void a(boolean open) {
            InspectorMemory inspectorMemory = this.f21149a;
            String str = this.f21150b.getName() + "/" + this.f21151c;
            X7.a aVar = W7.b.f27305e;
            inspectorMemory.store(str, X7.a.m().toJson(this.f21152d));
        }
    }

    public class y implements D5.i {

        public final int[] f21153a;

        public final List f21154b;

        public final p f21155c;

        public final Context f21156d;

        public y(final int[] val$deletingPos, final List val$list, final p val$listener, final Context val$context) {
            this.f21153a = val$deletingPos;
            this.f21154b = val$list;
            this.f21155c = val$listener;
            this.f21156d = val$context;
        }

        @Override
        public void a(Object listItem, int adapterPosition) {
            int[] iArr = this.f21153a;
            if (iArr[0] != adapterPosition) {
                iArr[0] = adapterPosition;
                Toast.makeText(this.f21156d, "Tap again to remove element", 0).show();
                return;
            }
            iArr[0] = -1;
            this.f21154b.remove(listItem);
            p pVar = this.f21155c;
            if (pVar != null) {
                pVar.b();
            }
        }
    }

    public class z implements InterfaceC13318f {

        public final InspectorMemory f21157a;

        public final Field f21158b;

        public final int f21159c;

        public final InspectorEditor f21160d;

        public z(final InspectorMemory val$inspectorMemory, final Field val$field, final int val$finalX1, final InspectorEditor val$finalelementEditor) {
            this.f21157a = val$inspectorMemory;
            this.f21158b = val$field;
            this.f21159c = val$finalX1;
            this.f21160d = val$finalelementEditor;
        }

        @Override
        public void a(boolean open) {
            InspectorMemory inspectorMemory = this.f21157a;
            String str = this.f21158b.getName() + "/" + this.f21159c;
            X7.a aVar = W7.b.f27305e;
            inspectorMemory.store(str, X7.a.m().toJson(this.f21160d));
        }
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    public static java.util.List<C5.b> A(java.lang.Class r46, java.lang.Object r47, android.content.Context r48, com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject r49, boolean r50, P8.p r51) {
        /*
            Method dump skipped, instructions count: 4831
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: P8.f.A(java.lang.Class, java.lang.Object, android.content.Context, com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject, boolean, P8.p):java.util.List");
    }

    public static List<C5.b> B(Class classAddress, Object instance, Context context, boolean autoSetValue, p listener) {
        return A(classAddress, instance, context, null, autoSetValue, listener);
    }

    public static Class<?> C(Field field) {
        if (field == null) {
            return null;
        }
        Type genericType = field.getGenericType();
        if (genericType instanceof ParameterizedType) {
            Type type = ((ParameterizedType) genericType).getActualTypeArguments()[0];
            if (type instanceof Class) {
                return (Class) type;
            }
        }
        return null;
    }

    public static boolean D(Field field) {
        return field != null && List.class.isAssignableFrom(field.getType());
    }

    public static int E(Field field, Field field2) {
        float f10 = 0.0f;
        float f11 = (field == null || field.getAnnotation(Order.class) == null) ? 0.0f : ((Order) field.getAnnotation(Order.class)).idx()[0];
        if (field2 != null && field2.getAnnotation(Order.class) != null) {
            f10 = ((Order) field2.getAnnotation(Order.class)).idx()[0];
        }
        return Float.compare(f11, f10);
    }

    public static String[] F(int i10) {
        return new String[i10];
    }

    public static boolean G(ShowIf showIf, Object instance, Class classAddress) {
        String value;
        String enumValue;
        if (showIf == null || (value = showIf.value()) == null) {
            return false;
        }
        String trim = value.trim();
        if (trim.isEmpty() || instance == null) {
            return false;
        }
        if (classAddress == null) {
            classAddress = instance.getClass();
        }
        Field v10 = v(classAddress, trim);
        if (v10 == null) {
            return false;
        }
        try {
            if (!v10.isAccessible()) {
                v10.setAccessible(true);
            }
            Object obj = v10.get(instance);
            Class<?> type = v10.getType();
            if (type != Boolean.TYPE && type != Boolean.class) {
                if (type == null || !type.isEnum() || (enumValue = showIf.enumValue()) == null) {
                    return false;
                }
                String trim2 = enumValue.trim();
                if (trim2.isEmpty() || obj == null) {
                    return false;
                }
                int lastIndexOf = trim2.lastIndexOf(46);
                if (lastIndexOf >= 0 && lastIndexOf < trim2.length() - 1) {
                    trim2 = trim2.substring(lastIndexOf + 1);
                }
                Locale locale = Locale.ROOT;
                String lowerCase = trim2.toLowerCase(locale);
                String obj2 = obj.toString();
                if (obj instanceof Enum) {
                    obj2 = ((Enum) obj).name();
                }
                return (obj2 != null && obj2.toLowerCase(locale).equals(lowerCase)) || obj.toString().toLowerCase(locale).equals(lowerCase);
            }
            return (obj instanceof Boolean ? ((Boolean) obj).booleanValue() : v10.getBoolean(instance)) == showIf.isTrue();
        } catch (Error e10) {
            e = e10;
            e.printStackTrace();
            return false;
        } catch (Exception e11) {
            e = e11;
            e.printStackTrace();
            return false;
        }
    }

    public static Variable H(String name) {
        return new Variable(name, Variable.a.NULL);
    }

    public static void I(Field field, Object instance, List<Variable> variablesInsideList, GameObject gameObject, p listener) throws IllegalAccessException {
        Variable.a aVar;
        if (variablesInsideList == null) {
            field.set(instance, null);
            return;
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < variablesInsideList.size(); i10++) {
            steppedArrayList.add(null);
        }
        Class<?> C10 = C(field);
        for (int i11 = 0; i11 < variablesInsideList.size(); i11++) {
            Variable variable = variablesInsideList.get(i11);
            if (variable != null && (aVar = variable.type) != Variable.a.NULL) {
                if (aVar == Variable.a.Float) {
                    steppedArrayList.set(i11, Float.valueOf(variable.float_value));
                } else if (aVar == Variable.a.Int) {
                    steppedArrayList.set(i11, Integer.valueOf(variable.int_value));
                } else if (aVar == Variable.a.String) {
                    steppedArrayList.set(i11, variable.str_value);
                } else if (aVar == Variable.a.Boolean) {
                    steppedArrayList.set(i11, variable.booolean_value);
                } else {
                    String str = variable.inspectorClass;
                    if (str == null && C10 != null) {
                        str = C10.getName();
                    }
                    if (str != null) {
                        steppedArrayList.set(i11, J(variable, str, gameObject, listener));
                    }
                }
            }
        }
        field.set(instance, steppedArrayList);
    }

    public static Object J(Variable variable, String className, GameObject gameObject, p listener) {
        if (className == null) {
            return null;
        }
        try {
            q qVar = new q(gameObject);
            for (h hVar : g.a()) {
                if (hVar.f21163a.match(className, qVar)) {
                    if (hVar.f21163a.isRestorable()) {
                        return hVar.f21163a.restore(variable, qVar);
                    }
                    return null;
                }
            }
            Object i02 = d8.j.i0(className);
            if (i02 != null) {
                Class K10 = d8.j.K(className);
                if (K10 != null) {
                    K(variable.c(), K10, i02, listener);
                }
                return i02;
            }
            d8.j jVar = W7.b.f27310j;
            Class G02 = d8.j.G0(className);
            if (G02 != null && !Component.class.isAssignableFrom(G02)) {
                Object newInstance = G02.newInstance();
                K(variable.c(), G02, newInstance, listener);
                return newInstance;
            }
            Class<?> cls = Class.forName(className);
            Object newInstance2 = cls.newInstance();
            K(variable.c(), cls, newInstance2, listener);
            return newInstance2;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static void K(List<Variable> variables, Class classAddress, Object instance, p listener) {
        L(variables, classAddress, instance, null, listener);
    }

    public static void L(List<Variable> variables, Class classAddress, Object instance, GameObject gameObject, p listener) {
        String str;
        Field[] fieldArr;
        int i10;
        String str2;
        String str3;
        String str4;
        Field[] fieldArr2;
        int i11;
        boolean z10;
        boolean z11;
        Object i02;
        boolean z12;
        List<Variable> list = variables;
        String str5 = "";
        if (list == null || classAddress == null || instance == null) {
            return;
        }
        try {
            Field[] u10 = u(classAddress.getDeclaredFields(), listener);
            if (u10 != null) {
                int length = u10.length;
                int i12 = 0;
                while (i12 < length) {
                    Field field = u10[i12];
                    if (field != null) {
                        if (!field.isAccessible()) {
                            field.setAccessible(true);
                        }
                        int i13 = 0;
                        while (i13 < variables.size()) {
                            Variable variable = list.get(i13);
                            if (variable == null || (str2 = variable.name) == null || !str2.equals(field.getName())) {
                                i13++;
                                list = variables;
                                str5 = str5;
                                u10 = u10;
                                length = length;
                            } else {
                                if (field.getType().isArray()) {
                                    try {
                                        str3 = field.getType().getComponentType().getName();
                                    } catch (Error | Exception e10) {
                                        e10.printStackTrace();
                                        str3 = str5;
                                    }
                                    List<Variable> list2 = variable.list_value;
                                    if (list2 != null) {
                                        Object[] objArr = new Object[list2.size()];
                                        int i14 = 0;
                                        while (i14 < list2.size()) {
                                            Variable variable2 = list2.get(i14);
                                            if (variable2 == null || variable2.type == Variable.a.NULL) {
                                                str4 = str5;
                                                fieldArr2 = u10;
                                            } else {
                                                q qVar = new q(gameObject);
                                                h[] a10 = g.a();
                                                str4 = str5;
                                                int length2 = a10.length;
                                                fieldArr2 = u10;
                                                int i15 = 0;
                                                while (true) {
                                                    if (i15 >= length2) {
                                                        Variable.a aVar = variable2.type;
                                                        if (aVar == Variable.a.Float) {
                                                            objArr[i14] = Float.valueOf(variable2.float_value);
                                                        } else if (aVar == Variable.a.Int) {
                                                            objArr[i14] = Integer.valueOf(variable2.int_value);
                                                        } else if (aVar == Variable.a.String) {
                                                            String str6 = variable2.str_value;
                                                            if (str6 == null) {
                                                                str6 = str4;
                                                            }
                                                            objArr[i14] = str6;
                                                        } else if (aVar == Variable.a.Boolean) {
                                                            Boolean bool = variable2.booolean_value;
                                                            bool.booleanValue();
                                                            objArr[i14] = bool;
                                                        } else {
                                                            Class G02 = d8.j.G0(str3);
                                                            if (G02 != null && !Component.class.isAssignableFrom(G02)) {
                                                                try {
                                                                    h[] a11 = g.a();
                                                                    int length3 = a11.length;
                                                                    i11 = length;
                                                                    int i16 = 0;
                                                                    while (true) {
                                                                        if (i16 >= length3) {
                                                                            z10 = false;
                                                                            break;
                                                                        }
                                                                        int i17 = length3;
                                                                        try {
                                                                            h hVar = a11[i16];
                                                                            h[] hVarArr = a11;
                                                                            if (hVar.f21163a.match(str3, qVar) && hVar.f21163a.isRestorable()) {
                                                                                objArr[i14] = hVar.f21163a.restore(variable2, qVar);
                                                                                z10 = true;
                                                                                break;
                                                                            } else {
                                                                                i16++;
                                                                                length3 = i17;
                                                                                a11 = hVarArr;
                                                                            }
                                                                        } catch (Exception e11) {
                                                                            e = e11;
                                                                            e.printStackTrace();
                                                                            i14++;
                                                                            str5 = str4;
                                                                            u10 = fieldArr2;
                                                                            length = i11;
                                                                        }
                                                                    }
                                                                    if (z10 || (i02 = d8.j.i0(str3)) == null) {
                                                                        z11 = z10;
                                                                    } else {
                                                                        objArr[i14] = i02;
                                                                        K(variable2.c(), G02, objArr[i14], listener);
                                                                        z11 = true;
                                                                    }
                                                                    if (!z11) {
                                                                        try {
                                                                            objArr[i14] = G02.newInstance();
                                                                            K(variable2.c(), G02, objArr[i14], listener);
                                                                            z11 = true;
                                                                        } catch (Exception e12) {
                                                                            e12.printStackTrace();
                                                                        }
                                                                    }
                                                                    if (!z11) {
                                                                        try {
                                                                            objArr[i14] = G02.newInstance();
                                                                            K(variable2.c(), G02, objArr[i14], listener);
                                                                        } catch (Exception e13) {
                                                                            e13.printStackTrace();
                                                                        }
                                                                    }
                                                                } catch (Exception e14) {
                                                                    e = e14;
                                                                    i11 = length;
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                        int i18 = length2;
                                                        h hVar2 = a10[i15];
                                                        h[] hVarArr2 = a10;
                                                        if (!hVar2.f21163a.match(str3, qVar)) {
                                                            i15++;
                                                            length2 = i18;
                                                            a10 = hVarArr2;
                                                        } else if (hVar2.f21163a.isRestorable()) {
                                                            objArr[i14] = hVar2.f21163a.restore(variable2, qVar);
                                                        }
                                                    }
                                                }
                                                i14++;
                                                str5 = str4;
                                                u10 = fieldArr2;
                                                length = i11;
                                            }
                                            i11 = length;
                                            i14++;
                                            str5 = str4;
                                            u10 = fieldArr2;
                                            length = i11;
                                        }
                                        str = str5;
                                        fieldArr = u10;
                                        i10 = length;
                                        R(field, instance, objArr);
                                    } else {
                                        str = str5;
                                        fieldArr = u10;
                                        i10 = length;
                                        try {
                                            field.set(instance, null);
                                        } catch (IllegalAccessException e15) {
                                            e15.printStackTrace();
                                        }
                                    }
                                } else {
                                    str = str5;
                                    fieldArr = u10;
                                    i10 = length;
                                    if (field.getType().isEnum()) {
                                        try {
                                            String str7 = variable.str_value;
                                            if (str7 == null || str7.isEmpty()) {
                                                field.set(instance, null);
                                            } else {
                                                Object[] enumConstants = field.getType().getEnumConstants();
                                                int length4 = enumConstants.length;
                                                int i19 = 0;
                                                while (true) {
                                                    if (i19 >= length4) {
                                                        z12 = false;
                                                        break;
                                                    }
                                                    Object obj = enumConstants[i19];
                                                    if (obj.toString().equals(str7)) {
                                                        field.set(instance, obj);
                                                        z12 = true;
                                                        break;
                                                    }
                                                    i19++;
                                                }
                                                if (!z12) {
                                                    field.set(instance, null);
                                                }
                                            }
                                        } catch (Exception e16) {
                                            e16.printStackTrace();
                                        }
                                    } else if (!b.a(instance, field, variable)) {
                                        if (D(field)) {
                                            try {
                                                I(field, instance, variable.list_value, gameObject, listener);
                                            } catch (IllegalAccessException | IllegalArgumentException e17) {
                                                e17.printStackTrace();
                                            }
                                        } else {
                                            d8.j jVar = W7.b.f27310j;
                                            Class G03 = d8.j.G0(field.getType().getName());
                                            if (G03 == null || Component.class.isAssignableFrom(G03)) {
                                                q qVar2 = new q(gameObject);
                                                h[] a12 = g.a();
                                                int length5 = a12.length;
                                                int i20 = 0;
                                                while (true) {
                                                    if (i20 < length5) {
                                                        h hVar3 = a12[i20];
                                                        if (hVar3.f21163a.match(field.getType().getName(), qVar2)) {
                                                            try {
                                                                field.set(instance, hVar3.f21163a.isRestorable() ? hVar3.f21163a.restore(variable, qVar2) : null);
                                                            } catch (Error e18) {
                                                                e = e18;
                                                                System.out.println("Failed restoring " + hVar3.f21163a.getSimpleName(qVar2) + " to " + classAddress.getSimpleName() + " failed");
                                                                e.printStackTrace();
                                                                try {
                                                                    field.set(instance, null);
                                                                } catch (IllegalAccessException e19) {
                                                                    e19.printStackTrace();
                                                                }
                                                                i12++;
                                                                list = variables;
                                                                str5 = str;
                                                                u10 = fieldArr;
                                                                length = i10;
                                                            } catch (Exception e20) {
                                                                e = e20;
                                                                System.out.println("Failed restoring " + hVar3.f21163a.getSimpleName(qVar2) + " to " + classAddress.getSimpleName() + " failed");
                                                                e.printStackTrace();
                                                                field.set(instance, null);
                                                                i12++;
                                                                list = variables;
                                                                str5 = str;
                                                                u10 = fieldArr;
                                                                length = i10;
                                                            }
                                                        } else {
                                                            i20++;
                                                        }
                                                    }
                                                }
                                            } else {
                                                try {
                                                    K(variable.c(), field.getType(), field.get(instance), listener);
                                                } catch (IllegalAccessException | IllegalArgumentException e21) {
                                                    e21.printStackTrace();
                                                }
                                            }
                                        }
                                    }
                                }
                                i12++;
                                list = variables;
                                str5 = str;
                                u10 = fieldArr;
                                length = i10;
                            }
                        }
                    }
                    str = str5;
                    fieldArr = u10;
                    i10 = length;
                    i12++;
                    list = variables;
                    str5 = str;
                    u10 = fieldArr;
                    length = i10;
                }
            }
        } catch (Error | Exception e22) {
            e22.printStackTrace();
        }
    }

    public static Object M(List list) {
        Object obj;
        for (int size = list.size() - 1; size >= 0; size--) {
            try {
                obj = list.get(size);
            } catch (Error | Exception unused) {
            }
            if (obj != null) {
                return obj;
            }
        }
        return null;
    }

    public static boolean N(Field field, Object instance, Class classAddress) {
        if (field == null) {
            return false;
        }
        ShowIf[] showIfArr = (ShowIf[]) field.getAnnotationsByType(ShowIf.class);
        if (showIfArr == null || showIfArr.length == 0) {
            return true;
        }
        for (ShowIf showIf : showIfArr) {
            if (showIf != null && G(showIf, instance, classAddress)) {
                return true;
            }
        }
        return false;
    }

    public static List<Variable> O(Class classAddress, Object instance, p listener) {
        return P(classAddress, instance, null, listener);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static List<Variable> P(Class classAddress, Object instance, GameObject gameObject, p listener) {
        Field[] fieldArr;
        Field[] u10;
        Field[] fieldArr2;
        int i10;
        int i11;
        Throwable th2;
        String str;
        int i12;
        Object obj;
        Object obj2;
        Throwable th3;
        SteppedArrayList steppedArrayList;
        Field field;
        Object obj3 = instance;
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        if (obj3 != null) {
            try {
                fieldArr = classAddress != null ? classAddress.getDeclaredFields() : instance.getClass().getDeclaredFields();
            } catch (Error e10) {
                e = e10;
                e.printStackTrace();
                fieldArr = null;
                u10 = u(fieldArr, listener);
                if (u10 != null) {
                }
                return steppedArrayList2;
            } catch (Exception e11) {
                e = e11;
                e.printStackTrace();
                fieldArr = null;
                u10 = u(fieldArr, listener);
                if (u10 != null) {
                }
                return steppedArrayList2;
            }
            u10 = u(fieldArr, listener);
            if (u10 != null) {
                int length = u10.length;
                int i13 = 0;
                while (i13 < length) {
                    Field field2 = u10[i13];
                    if (!field2.isAccessible()) {
                        field2.setAccessible(true);
                    }
                    Variable j10 = j.j(obj3, field2);
                    if (field2.getType().isArray()) {
                        try {
                            Object obj4 = field2.get(obj3);
                            if (obj4 == null) {
                                try {
                                    steppedArrayList2.add(H(field2.getName()));
                                } catch (IllegalAccessException | IllegalArgumentException e12) {
                                    th2 = e12;
                                    fieldArr2 = u10;
                                    i10 = length;
                                    i11 = i13;
                                    th2.printStackTrace();
                                    obj = obj3;
                                    i13 = i11 + 1;
                                    obj3 = obj;
                                    u10 = fieldArr2;
                                    length = i10;
                                }
                            } else {
                                Object[] Q10 = Q(obj4);
                                if (Q10 != null) {
                                    SteppedArrayList steppedArrayList3 = new SteppedArrayList();
                                    fieldArr2 = u10;
                                    try {
                                    } catch (IllegalAccessException e13) {
                                        e = e13;
                                        i10 = length;
                                        i11 = i13;
                                        th2 = e;
                                        th2.printStackTrace();
                                        obj = obj3;
                                        i13 = i11 + 1;
                                        obj3 = obj;
                                        u10 = fieldArr2;
                                        length = i10;
                                    } catch (IllegalArgumentException e14) {
                                        e = e14;
                                        i10 = length;
                                        i11 = i13;
                                        th2 = e;
                                        th2.printStackTrace();
                                        obj = obj3;
                                        i13 = i11 + 1;
                                        obj3 = obj;
                                        u10 = fieldArr2;
                                        length = i10;
                                    }
                                    try {
                                        if (field2.getType().getComponentType() == Float.TYPE) {
                                            for (int i14 = 0; i14 < Q10.length; i14++) {
                                                try {
                                                    if (Q10[i14] == null) {
                                                        steppedArrayList3.add(H(i14 + ""));
                                                    } else {
                                                        steppedArrayList3.add(new Variable(i14 + "", ((Float) Q10[i14]).floatValue()));
                                                    }
                                                } catch (IllegalAccessException e15) {
                                                    e = e15;
                                                    th2 = e;
                                                    i10 = length;
                                                    i11 = i13;
                                                    th2.printStackTrace();
                                                    obj = obj3;
                                                    i13 = i11 + 1;
                                                    obj3 = obj;
                                                    u10 = fieldArr2;
                                                    length = i10;
                                                } catch (IllegalArgumentException e16) {
                                                    e = e16;
                                                    th2 = e;
                                                    i10 = length;
                                                    i11 = i13;
                                                    th2.printStackTrace();
                                                    obj = obj3;
                                                    i13 = i11 + 1;
                                                    obj3 = obj;
                                                    u10 = fieldArr2;
                                                    length = i10;
                                                }
                                            }
                                        } else if (field2.getType().getComponentType() == Integer.TYPE) {
                                            for (int i15 = 0; i15 < Q10.length; i15++) {
                                                if (Q10[i15] == null) {
                                                    steppedArrayList3.add(H(i15 + ""));
                                                } else {
                                                    steppedArrayList3.add(new Variable(i15 + "", ((Integer) Q10[i15]).intValue()));
                                                }
                                            }
                                        } else if (field2.getType().getComponentType() == String.class) {
                                            for (int i16 = 0; i16 < Q10.length; i16++) {
                                                if (Q10[i16] == null) {
                                                    steppedArrayList3.add(H(i16 + ""));
                                                } else {
                                                    steppedArrayList3.add(new Variable(i16 + "", (String) Q10[i16]));
                                                }
                                            }
                                        } else if (field2.getType().getComponentType() == Boolean.TYPE || field2.getType().getComponentType() == Boolean.class) {
                                            i10 = length;
                                            i11 = i13;
                                            for (int i17 = 0; i17 < Q10.length; i17++) {
                                                if (Q10[i17] == null) {
                                                    steppedArrayList3.add(H(i17 + ""));
                                                } else {
                                                    steppedArrayList3.add(new Variable(i17 + "", Boolean.valueOf(k(Q10[i17]))));
                                                }
                                            }
                                            steppedArrayList2.add(new Variable(field2.getName(), steppedArrayList3));
                                        } else {
                                            try {
                                                str = field2.getType().getComponentType().getName();
                                            } catch (Error | Exception e17) {
                                                e17.printStackTrace();
                                                str = "";
                                            }
                                            int i18 = 0;
                                            while (i18 < Q10.length) {
                                                if (Q10[i18] == null) {
                                                    steppedArrayList3.add(H(i18 + ""));
                                                    i10 = length;
                                                } else {
                                                    d8.j jVar = W7.b.f27310j;
                                                    Class G02 = d8.j.G0(str);
                                                    if (G02 != null) {
                                                        try {
                                                            try {
                                                                if (!Component.class.isAssignableFrom(G02)) {
                                                                    try {
                                                                        i10 = length;
                                                                        try {
                                                                            try {
                                                                                steppedArrayList3.add(new Variable(str, O(G02, Q10[i18], listener)));
                                                                            } catch (IllegalAccessException e18) {
                                                                                e = e18;
                                                                                th2 = e;
                                                                                i11 = i13;
                                                                                th2.printStackTrace();
                                                                                obj = obj3;
                                                                                i13 = i11 + 1;
                                                                                obj3 = obj;
                                                                                u10 = fieldArr2;
                                                                                length = i10;
                                                                            }
                                                                        } catch (IllegalArgumentException e19) {
                                                                            e = e19;
                                                                            try {
                                                                                e.printStackTrace();
                                                                                i12 = i13;
                                                                                i18++;
                                                                                length = i10;
                                                                                i13 = i12;
                                                                            } catch (IllegalArgumentException e20) {
                                                                                e = e20;
                                                                                th2 = e;
                                                                                i11 = i13;
                                                                                th2.printStackTrace();
                                                                                obj = obj3;
                                                                                i13 = i11 + 1;
                                                                                obj3 = obj;
                                                                                u10 = fieldArr2;
                                                                                length = i10;
                                                                            }
                                                                        }
                                                                    } catch (IllegalArgumentException e21) {
                                                                        e = e21;
                                                                        i10 = length;
                                                                    }
                                                                }
                                                            } catch (IllegalArgumentException e22) {
                                                                e = e22;
                                                                i10 = length;
                                                                th2 = e;
                                                                i11 = i13;
                                                                th2.printStackTrace();
                                                                obj = obj3;
                                                                i13 = i11 + 1;
                                                                obj3 = obj;
                                                                u10 = fieldArr2;
                                                                length = i10;
                                                            }
                                                        } catch (IllegalAccessException e23) {
                                                            e = e23;
                                                            i10 = length;
                                                            th2 = e;
                                                            i11 = i13;
                                                            th2.printStackTrace();
                                                            obj = obj3;
                                                            i13 = i11 + 1;
                                                            obj3 = obj;
                                                            u10 = fieldArr2;
                                                            length = i10;
                                                        }
                                                    }
                                                    i10 = length;
                                                    try {
                                                        q qVar = new q(gameObject);
                                                        h[] a10 = g.a();
                                                        int length2 = a10.length;
                                                        i12 = i13;
                                                        int i19 = 0;
                                                        while (true) {
                                                            if (i19 < length2) {
                                                                int i20 = length2;
                                                                h hVar = a10[i19];
                                                                h[] hVarArr = a10;
                                                                if (hVar.f21163a.match(str, qVar)) {
                                                                    steppedArrayList3.add(hVar.f21163a.save(i18 + "", Q10[i18], qVar));
                                                                    break;
                                                                }
                                                                i19++;
                                                                length2 = i20;
                                                                a10 = hVarArr;
                                                            }
                                                        }
                                                        i18++;
                                                        length = i10;
                                                        i13 = i12;
                                                    } catch (IllegalAccessException e24) {
                                                        e = e24;
                                                        i11 = i13;
                                                        th2 = e;
                                                        th2.printStackTrace();
                                                        obj = obj3;
                                                        i13 = i11 + 1;
                                                        obj3 = obj;
                                                        u10 = fieldArr2;
                                                        length = i10;
                                                    } catch (IllegalArgumentException e25) {
                                                        e = e25;
                                                        i11 = i13;
                                                        th2 = e;
                                                        th2.printStackTrace();
                                                        obj = obj3;
                                                        i13 = i11 + 1;
                                                        obj3 = obj;
                                                        u10 = fieldArr2;
                                                        length = i10;
                                                    }
                                                }
                                                i12 = i13;
                                                i18++;
                                                length = i10;
                                                i13 = i12;
                                            }
                                        }
                                        steppedArrayList2.add(new Variable(field2.getName(), steppedArrayList3));
                                    } catch (IllegalAccessException e26) {
                                        e = e26;
                                        th2 = e;
                                        th2.printStackTrace();
                                        obj = obj3;
                                        i13 = i11 + 1;
                                        obj3 = obj;
                                        u10 = fieldArr2;
                                        length = i10;
                                    } catch (IllegalArgumentException e27) {
                                        e = e27;
                                        th2 = e;
                                        th2.printStackTrace();
                                        obj = obj3;
                                        i13 = i11 + 1;
                                        obj3 = obj;
                                        u10 = fieldArr2;
                                        length = i10;
                                    }
                                    i10 = length;
                                    i11 = i13;
                                }
                            }
                            fieldArr2 = u10;
                            i10 = length;
                            i11 = i13;
                        } catch (IllegalAccessException | IllegalArgumentException e28) {
                            e = e28;
                            fieldArr2 = u10;
                        }
                    } else {
                        fieldArr2 = u10;
                        i10 = length;
                        i11 = i13;
                        if (field2.getType().isEnum()) {
                            try {
                                obj2 = field2.get(obj3);
                            } catch (IllegalAccessException e29) {
                                e29.printStackTrace();
                                obj2 = null;
                            }
                            try {
                                steppedArrayList2.add(new Variable(field2.getName(), obj2 != null ? obj2.toString() : ""));
                            } catch (IllegalArgumentException e30) {
                                e30.printStackTrace();
                            }
                        } else if (j10 != null) {
                            steppedArrayList2.add(j10);
                        } else {
                            if (D(field2)) {
                                try {
                                    List list = (List) field2.get(obj3);
                                    if (list != null) {
                                        SteppedArrayList steppedArrayList4 = new SteppedArrayList();
                                        Class<?> C10 = C(field2);
                                        Iterator it = list.iterator();
                                        int i21 = 0;
                                        while (it.hasNext()) {
                                            try {
                                                Object next = it.next();
                                                Iterator it2 = it;
                                                if (C10 == null) {
                                                    steppedArrayList = steppedArrayList2;
                                                    field = field2;
                                                    if (next == null) {
                                                        steppedArrayList4.add(H(i21 + ""));
                                                    } else if (next.getClass() == Float.class) {
                                                        steppedArrayList4.add(new Variable(i21 + "", l(next)));
                                                    } else if (next.getClass() == Integer.class) {
                                                        steppedArrayList4.add(new Variable(i21 + "", m(next)));
                                                    } else if (next.getClass() == String.class) {
                                                        steppedArrayList4.add(new Variable(i21 + "", (String) next));
                                                    } else if (next.getClass() == Boolean.class) {
                                                        steppedArrayList4.add(new Variable(i21 + "", Boolean.valueOf(k(next))));
                                                    } else {
                                                        d8.j jVar2 = W7.b.f27310j;
                                                        Class G03 = d8.j.G0(next.getClass().getName());
                                                        if (G03 == null || Component.class.isAssignableFrom(G03)) {
                                                            q qVar2 = new q(gameObject);
                                                            h[] a11 = g.a();
                                                            int length3 = a11.length;
                                                            int i22 = 0;
                                                            while (true) {
                                                                if (i22 >= length3) {
                                                                    break;
                                                                }
                                                                h hVar2 = a11[i22];
                                                                h[] hVarArr2 = a11;
                                                                int i23 = length3;
                                                                if (hVar2.f21163a.match(next.getClass().getName(), qVar2)) {
                                                                    Variable save = hVar2.f21163a.save(i21 + "", next, qVar2);
                                                                    if (save != null) {
                                                                        save.inspectorClass = next.getClass().getName();
                                                                    }
                                                                    steppedArrayList4.add(save);
                                                                } else {
                                                                    i22++;
                                                                    a11 = hVarArr2;
                                                                    length3 = i23;
                                                                }
                                                            }
                                                        } else {
                                                            try {
                                                                Variable variable = new Variable(i21 + "", O(G03, next, listener));
                                                                variable.inspectorClass = next.getClass().getName();
                                                                steppedArrayList4.add(variable);
                                                            } catch (IllegalArgumentException e31) {
                                                                e31.printStackTrace();
                                                            }
                                                        }
                                                    }
                                                } else if (next == null) {
                                                    steppedArrayList4.add(H(i21 + ""));
                                                    i21++;
                                                    it = it2;
                                                } else if (C10 == Float.TYPE || C10 == Float.class) {
                                                    steppedArrayList = steppedArrayList2;
                                                    field = field2;
                                                    steppedArrayList4.add(new Variable(i21 + "", l(next)));
                                                } else if (C10 == Integer.TYPE || C10 == Integer.class) {
                                                    steppedArrayList = steppedArrayList2;
                                                    field = field2;
                                                    steppedArrayList4.add(new Variable(i21 + "", m(next)));
                                                } else if (C10 == String.class) {
                                                    steppedArrayList4.add(new Variable(i21 + "", (String) next));
                                                    steppedArrayList = steppedArrayList2;
                                                    field = field2;
                                                } else if (C10 == Boolean.TYPE || C10 == Boolean.class) {
                                                    steppedArrayList = steppedArrayList2;
                                                    field = field2;
                                                    steppedArrayList4.add(new Variable(i21 + "", Boolean.valueOf(k(next))));
                                                } else {
                                                    q qVar3 = new q(gameObject);
                                                    h[] a12 = g.a();
                                                    int length4 = a12.length;
                                                    steppedArrayList = steppedArrayList2;
                                                    int i24 = 0;
                                                    while (true) {
                                                        if (i24 >= length4) {
                                                            field = field2;
                                                            break;
                                                        }
                                                        int i25 = length4;
                                                        try {
                                                            try {
                                                                h hVar3 = a12[i24];
                                                                h[] hVarArr3 = a12;
                                                                field = field2;
                                                                if (hVar3.f21163a.match(C10.getName(), qVar3)) {
                                                                    Variable save2 = hVar3.f21163a.save(i21 + "", next, qVar3);
                                                                    if (save2 != null) {
                                                                        save2.inspectorClass = C10.getName();
                                                                        steppedArrayList4.add(save2);
                                                                    }
                                                                } else {
                                                                    i24++;
                                                                    length4 = i25;
                                                                    a12 = hVarArr3;
                                                                    field2 = field;
                                                                }
                                                            } catch (IllegalAccessException e32) {
                                                                e = e32;
                                                                th3 = e;
                                                                steppedArrayList2 = steppedArrayList;
                                                                th3.printStackTrace();
                                                                obj = instance;
                                                                i13 = i11 + 1;
                                                                obj3 = obj;
                                                                u10 = fieldArr2;
                                                                length = i10;
                                                            }
                                                        } catch (IllegalArgumentException e33) {
                                                            e = e33;
                                                            th3 = e;
                                                            steppedArrayList2 = steppedArrayList;
                                                            th3.printStackTrace();
                                                            obj = instance;
                                                            i13 = i11 + 1;
                                                            obj3 = obj;
                                                            u10 = fieldArr2;
                                                            length = i10;
                                                        }
                                                    }
                                                    Variable variable2 = new Variable(i21 + "", O(C10, next, listener));
                                                    variable2.inspectorClass = C10.getName();
                                                    steppedArrayList4.add(variable2);
                                                }
                                                i21++;
                                                it = it2;
                                                steppedArrayList2 = steppedArrayList;
                                                field2 = field;
                                            } catch (IllegalAccessException e34) {
                                                e = e34;
                                                th3 = e;
                                                th3.printStackTrace();
                                                obj = instance;
                                                i13 = i11 + 1;
                                                obj3 = obj;
                                                u10 = fieldArr2;
                                                length = i10;
                                            } catch (IllegalArgumentException e35) {
                                                e = e35;
                                                th3 = e;
                                                th3.printStackTrace();
                                                obj = instance;
                                                i13 = i11 + 1;
                                                obj3 = obj;
                                                u10 = fieldArr2;
                                                length = i10;
                                            }
                                        }
                                        SteppedArrayList steppedArrayList5 = steppedArrayList2;
                                        try {
                                            steppedArrayList2 = steppedArrayList5;
                                            steppedArrayList2.add(new Variable(field2.getName(), steppedArrayList4));
                                        } catch (IllegalAccessException e36) {
                                            e = e36;
                                            steppedArrayList2 = steppedArrayList5;
                                            th3 = e;
                                            th3.printStackTrace();
                                            obj = instance;
                                            i13 = i11 + 1;
                                            obj3 = obj;
                                            u10 = fieldArr2;
                                            length = i10;
                                        } catch (IllegalArgumentException e37) {
                                            e = e37;
                                            steppedArrayList2 = steppedArrayList5;
                                            th3 = e;
                                            th3.printStackTrace();
                                            obj = instance;
                                            i13 = i11 + 1;
                                            obj3 = obj;
                                            u10 = fieldArr2;
                                            length = i10;
                                        }
                                    } else {
                                        steppedArrayList2.add(new Variable(field2.getName(), Variable.a.List));
                                    }
                                } catch (IllegalAccessException e38) {
                                    e = e38;
                                } catch (IllegalArgumentException e39) {
                                    e = e39;
                                }
                                obj = instance;
                            } else {
                                d8.j jVar3 = W7.b.f27310j;
                                Class G04 = d8.j.G0(field2.getType().getName());
                                if (G04 == null || Component.class.isAssignableFrom(G04)) {
                                    obj = instance;
                                    q qVar4 = new q(gameObject);
                                    h[] a13 = g.a();
                                    int length5 = a13.length;
                                    int i26 = 0;
                                    while (true) {
                                        if (i26 < length5) {
                                            h hVar4 = a13[i26];
                                            if (hVar4.f21163a.match(field2.getType().getName(), qVar4)) {
                                                try {
                                                    Variable save3 = hVar4.f21163a.save(field2.getName(), field2.get(obj), qVar4);
                                                    if (save3 != null) {
                                                        steppedArrayList2.add(save3);
                                                    }
                                                } catch (IllegalAccessException e40) {
                                                    e40.printStackTrace();
                                                }
                                            } else {
                                                i26++;
                                            }
                                        }
                                    }
                                } else {
                                    try {
                                        obj = instance;
                                        try {
                                            steppedArrayList2.add(new Variable(field2.getName(), O(field2.getType(), field2.get(obj), listener)));
                                        } catch (IllegalAccessException e41) {
                                            e = e41;
                                            e.printStackTrace();
                                            i13 = i11 + 1;
                                            obj3 = obj;
                                            u10 = fieldArr2;
                                            length = i10;
                                        } catch (IllegalArgumentException e42) {
                                            e = e42;
                                            e.printStackTrace();
                                            i13 = i11 + 1;
                                            obj3 = obj;
                                            u10 = fieldArr2;
                                            length = i10;
                                        }
                                    } catch (IllegalAccessException | IllegalArgumentException e43) {
                                        e = e43;
                                        obj = instance;
                                    }
                                }
                            }
                            i13 = i11 + 1;
                            obj3 = obj;
                            u10 = fieldArr2;
                            length = i10;
                        }
                    }
                    obj = obj3;
                    i13 = i11 + 1;
                    obj3 = obj;
                    u10 = fieldArr2;
                    length = i10;
                }
            }
        }
        return steppedArrayList2;
    }

    public static Object[] Q(Object array) {
        if (array == null) {
            return new Object[0];
        }
        try {
            int length = Array.getLength(array);
            Object[] objArr = new Object[length];
            for (int i10 = 0; i10 < length; i10++) {
                objArr[i10] = Array.get(array, i10);
            }
            return objArr;
        } catch (Exception unused) {
            return null;
        }
    }

    public static <T> void R(Field field, Object instance, Object[] array) {
        try {
            Class<?> componentType = field.getType().getComponentType();
            if (componentType == null) {
                return;
            }
            field.set(instance, t(componentType, array));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void j(List<Q> groupedEntries, Field field, C5.b entry) {
        if (groupedEntries == null || entry == null) {
            return;
        }
        groupedEntries.add(new Q(field, entry, null));
    }

    public static boolean k(Object value) {
        if (value instanceof Boolean) {
            return ((Boolean) value).booleanValue();
        }
        return false;
    }

    public static float l(Object value) {
        if (value instanceof Number) {
            return ((Number) value).floatValue();
        }
        return 0.0f;
    }

    public static int m(Object value) {
        if (value instanceof Number) {
            return ((Number) value).intValue();
        }
        return 0;
    }

    public static String n(Object value) {
        return value != null ? String.valueOf(value) : "";
    }

    public static List<C5.b> o(P node) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (node == null) {
            return steppedArrayList;
        }
        for (Object obj : node.f21019b) {
            if (obj instanceof C5.b) {
                steppedArrayList.add((C5.b) obj);
            } else if (obj instanceof P) {
                steppedArrayList.add(r((P) obj));
            }
        }
        return steppedArrayList;
    }

    public static List<C5.b> p(List<Q> groupedEntries) {
        P p10;
        C2976k c2976k = null;
        P p11 = new P("", c2976k);
        if (groupedEntries == null) {
            return new SteppedArrayList();
        }
        for (Q q10 : groupedEntries) {
            if (q10 != null && q10.f21022b != null) {
                List<String> z10 = z(q10.f21021a);
                if (z10 != null) {
                    p10 = p11;
                    for (String str : z10) {
                        if (str != null && !str.isEmpty()) {
                            P p12 = (P) p10.f21020c.get(str);
                            if (p12 == null) {
                                p12 = new P(str, c2976k);
                                p10.f21020c.put(str, p12);
                                p10.f21019b.add(p12);
                            }
                            p10 = p12;
                        }
                    }
                } else {
                    p10 = p11;
                }
                p10.f21019b.add(q10.f21022b);
            }
        }
        return o(p11);
    }

    public static Set<String> q(Field[] fields) {
        ShowIf[] showIfArr;
        String value;
        HashSet hashSet = new HashSet();
        if (fields == null) {
            return hashSet;
        }
        for (Field field : fields) {
            if (field != null && (showIfArr = (ShowIf[]) field.getAnnotationsByType(ShowIf.class)) != null) {
                for (ShowIf showIf : showIfArr) {
                    if (showIf != null && (value = showIf.value()) != null) {
                        String trim = value.trim();
                        if (!trim.isEmpty()) {
                            hashSet.add(trim);
                        }
                    }
                }
            }
        }
        return hashSet;
    }

    public static C5.b r(P node) {
        return F5.c.e(node.f21018a, new H(node));
    }

    public static void s(Object instance, Context context, p listener, List<Q> groupedEntries, Field field, boolean autoSetValues) {
        int i10;
        try {
            C5.b bVar = new C5.b(new C5.a(field.getName(), true));
            bVar.f2064Q.f2043p = R.color.interface_panel;
            Object obj = field.get(instance);
            Class<?> type = field.getType();
            if (type.getName().equalsIgnoreCase("java.lang.Class")) {
                return;
            }
            bVar.f2064Q.f2042o = B(type, obj, context, autoSetValues, listener);
            C5.a aVar = bVar.f2064Q;
            aVar.f2028a = Tc.b.d(aVar.f2028a);
            C5.a aVar2 = bVar.f2064Q;
            aVar2.f2028a = Tc.b.c(aVar2.f2028a);
            while (true) {
                if (i10 >= bVar.f2064Q.f2042o.size()) {
                    break;
                }
                C5.b bVar2 = bVar.f2064Q.f2042o.get(i10);
                b.a aVar3 = bVar2.f2079n;
                i10 = (aVar3 == b.a.SLBoolean || aVar3 == b.a.Boolean) ? 0 : i10 + 1;
                if (bVar2.f2077l.equalsIgnoreCase("enable")) {
                    bVar.f2064Q.f2034g = new F(bVar2);
                    C5.a aVar4 = bVar.f2064Q;
                    aVar4.f2031d = true;
                    aVar4.f2042o.remove(i10);
                    break;
                }
            }
            j(groupedEntries, field, bVar);
        } catch (IllegalAccessException e10) {
            e = e10;
            e.printStackTrace();
        } catch (IllegalArgumentException e11) {
            e = e11;
            e.printStackTrace();
        }
    }

    public static Object t(Class<?> componentType, Object[] array) {
        if (array == null) {
            return null;
        }
        Object newInstance = Array.newInstance(componentType, array.length);
        boolean isPrimitive = componentType.isPrimitive();
        for (int i10 = 0; i10 < array.length; i10++) {
            Object obj = array[i10];
            if (obj != null || !isPrimitive) {
                try {
                    Array.set(newInstance, i10, obj);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        return newInstance;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Field[] u(Field[] fields, p listener) {
        if (fields == null) {
            return null;
        }
        LinkedList linkedList = new LinkedList();
        for (Field field : fields) {
            int modifiers = field.getModifiers();
            if (!Modifier.isPrivate(modifiers) && !Modifier.isStatic(modifiers) && !Modifier.isFinal(modifiers) && !Modifier.isProtected(modifiers) && !Modifier.isTransient(modifiers) && field.getAnnotation(Hide.class) == null) {
                linkedList.add(field);
            }
        }
        try {
            Collections.sort(linkedList, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    int E10;
                    E10 = f.E((Field) obj, (Field) obj2);
                    return E10;
                }
            });
        } catch (Error | Exception e10) {
            e10.printStackTrace();
        }
        linkedList.removeIf(new I(listener));
        Field[] fieldArr = new Field[linkedList.size()];
        for (int i10 = 0; i10 < linkedList.size(); i10++) {
            fieldArr[i10] = (Field) linkedList.get(i10);
        }
        linkedList.clear();
        return fieldArr;
    }

    public static Field v(Class cls, String fieldName) {
        if (cls != null && fieldName != null && !fieldName.isEmpty()) {
            while (cls != null) {
                try {
                    return cls.getDeclaredField(fieldName);
                } catch (NoSuchFieldException unused) {
                    cls = cls.getSuperclass();
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return null;
                }
            }
        }
        return null;
    }

    public static <T extends Enum<T>> T w(Class<T> cls, String str) {
        if (cls == null || str == null) {
            return null;
        }
        try {
            return (T) Enum.valueOf(cls, str.trim().toUpperCase(Locale.ROOT));
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public static String[] x(Class<? extends Enum<?>> e10) {
        return (String[]) Arrays.stream((Enum[]) e10.getEnumConstants()).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((Enum) obj).name();
            }
        }).toArray(new IntFunction() {
            @Override
            public final Object apply(int i10) {
                String[] F10;
                F10 = f.F(i10);
                return F10;
            }
        });
    }

    public static <E extends Enum> E[] y(Class<E> cls) throws NoSuchFieldException, IllegalAccessException {
        Field declaredField = cls.getDeclaredField("$VALUES");
        PrintStream printStream = System.out;
        printStream.println(declaredField);
        printStream.println(Modifier.toString(declaredField.getModifiers()));
        declaredField.setAccessible(true);
        return (E[]) ((Enum[]) declaredField.get(null));
    }

    public static List<String> z(Field field) {
        Group group;
        String value;
        if (field == null || (group = (Group) field.getAnnotation(Group.class)) == null || (value = group.value()) == null) {
            return null;
        }
        String trim = value.trim();
        if (trim.isEmpty()) {
            return null;
        }
        String[] split = trim.split("/");
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (String str : split) {
            if (str != null) {
                String trim2 = str.trim();
                if (!trim2.isEmpty()) {
                    steppedArrayList.add(trim2);
                }
            }
        }
        if (steppedArrayList.isEmpty()) {
            return null;
        }
        return steppedArrayList;
    }
}
