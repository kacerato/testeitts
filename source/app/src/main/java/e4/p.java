package E4;

import Ic.C2630i;
import Ic.C2636o;
import JAVARuntime.AOnTouchListener;
import JAVARuntime.JRDoc_EN;
import JAVARuntime.JRDoc_PT;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import b3.s;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.AdvancedTextView.AdvancedTextView;
import com.itsmagic.engine.Activities.Editor.Utils.DragPanelView;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import e8.C13044a;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Comparator;
import java.util.Iterator;
import r4.C15147a;

public class p extends EditorPanel {

    public static final String f5501f0 = "ClassDetailsPanel";

    public static final String f5502g0 = "52, 186, 235";

    public static final String f5503h0 = "255, 55, 28";

    public FloatingPanelArea f5504X;

    public e8.c f5505Y;

    public LinearLayout f5506Z;

    public LinearLayout f5507a0;

    public LinearLayout f5508b0;

    public TextView f5509c0;

    public View f5510d0;

    public e8.d f5511e0;

    public class a extends AOnTouchListener {
        public a() {
        }

        @Override
        public boolean onTouchEvent(View v10, MotionEvent event) {
            return true;
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {
        public b() {
        }

        @Override
        public void click(View view) {
            p.this.R0();
        }
    }

    public class c extends AbstractViewOnClickListenerC12733a {

        public final Method f5514b;

        public c(final Method val$method) {
            this.f5514b = val$method;
        }

        @Override
        public void click(View view) {
            C2630i.s(this.f5514b.getName());
            N7.c.v0("Copied:" + this.f5514b.getName());
        }
    }

    public class d extends AbstractViewOnClickListenerC12733a {

        public final C13044a f5516b;

        public d(final C13044a val$field) {
            this.f5516b = val$field;
        }

        @Override
        public void click(View view) {
            C2630i.s(this.f5516b.c());
            N7.c.v0("Copied:" + this.f5516b.c());
        }
    }

    public class e extends AbstractViewOnClickListenerC12733a {

        public final Field f5518b;

        public e(final Field val$field) {
            this.f5518b = val$field;
        }

        @Override
        public void click(View view) {
            C2630i.s(this.f5518b.getName());
            N7.c.v0("Copied:" + this.f5518b.getName());
        }
    }

    public class f implements C2636o.a {

        public final String f5520a;

        public final String[] f5521b;

        public f(final String val$mtdName, final String[] val$info) {
            this.f5520a = val$mtdName;
            this.f5521b = val$info;
        }

        @Override
        public boolean a(String line) {
            if (!line.startsWith(this.f5520a)) {
                return true;
            }
            this.f5521b[0] = "gen. by AI: " + line.substring(line.indexOf(s.f32937c) + 1);
            return false;
        }
    }

    public class g implements AdvancedTextView.e {
        public g() {
        }

        @Override
        public void a(String tag, String text) {
            for (int i10 = 0; i10 < d8.j.k0(); i10++) {
                e8.c j02 = d8.j.j0(i10);
                if (j02.b().replace("$", ".").equals(tag)) {
                    E4.a.a(j02);
                    return;
                }
            }
        }
    }

    public p(K8.a engine) {
        super(engine);
    }

    private static String A1(Field field) {
        JRDoc_EN jRDoc_EN = (JRDoc_EN) field.getAnnotation(JRDoc_EN.class);
        JRDoc_PT jRDoc_PT = (JRDoc_PT) field.getAnnotation(JRDoc_PT.class);
        return (jRDoc_PT == null || !Lang.o().equals("pt-br")) ? jRDoc_EN != null ? jRDoc_EN.value() : "" : jRDoc_PT.value();
    }

    private String B1(Method method, Class cls) {
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
            try {
                C2636o.i(M().getAssets().open("Editor/Doc/" + str3 + ".txt"), new f(str2, strArr));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return strArr[0];
    }

    public static int C1(Field field, Field field2) {
        return field.getName().compareToIgnoreCase(field2.getName());
    }

    public static int D1(Method method, Method method2) {
        return method.getName().compareToIgnoreCase(method2.getName());
    }

    public static int E1(C13044a c13044a, C13044a c13044a2) {
        return c13044a.c().compareToIgnoreCase(c13044a2.c());
    }

    private void F1() {
        Field[] declaredFields = this.f5505Y.a().getDeclaredFields();
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (Field field : declaredFields) {
            if (Modifier.isPublic(field.getModifiers()) && field.getAnnotation(H6.g.class) == null) {
                steppedArrayList.add(field);
            }
        }
        steppedArrayList.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int C12;
                C12 = p.C1((Field) obj, (Field) obj2);
                return C12;
            }
        });
        Iterator<T> it = steppedArrayList.iterator();
        while (it.hasNext()) {
            this.f5507a0.addView(t1((Field) it.next()));
        }
        if (steppedArrayList.isEmpty()) {
            this.f5510d0.findViewById(R.id.fieldsTitle).setVisibility(8);
        }
    }

    private void G1() {
        Class a10 = this.f5505Y.a();
        Method[] declaredMethods = a10.getDeclaredMethods();
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        int i10 = 0;
        for (Method method : declaredMethods) {
            if (Modifier.isPublic(method.getModifiers()) && method.getAnnotation(H6.g.class) == null) {
                steppedArrayList.add(method);
            }
        }
        steppedArrayList.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int D12;
                D12 = p.D1((Method) obj, (Method) obj2);
                return D12;
            }
        });
        Iterator<T> it = steppedArrayList.iterator();
        while (it.hasNext()) {
            this.f5506Z.addView(u1((Method) it.next(), i10, a10));
            i10++;
        }
        if (steppedArrayList.isEmpty()) {
            this.f5510d0.findViewById(R.id.methodsTitle).setVisibility(8);
        }
    }

    private void H1() {
        this.f5505Y.a();
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < this.f5511e0.b(); i10++) {
            C13044a a10 = this.f5511e0.a(i10);
            if (a10.d() != null) {
                steppedArrayList.add(a10);
            } else {
                Log.e("Virtual attributes", "Virtual attribute named:" + a10.c() + " has no type");
            }
        }
        steppedArrayList.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int E12;
                E12 = p.E1((C13044a) obj, (C13044a) obj2);
                return E12;
            }
        });
        Iterator<T> it = steppedArrayList.iterator();
        while (it.hasNext()) {
            this.f5508b0.addView(v1((C13044a) it.next()));
        }
        if (steppedArrayList.isEmpty()) {
            this.f5510d0.findViewById(R.id.virtualattributesTitle).setVisibility(8);
        }
    }

    public static String I1(String t10) {
        return t10.replace("$", ".");
    }

    private void J1(AdvancedTextView fieldDeclaration) {
        fieldDeclaration.setAllowLinkClicks(true);
        fieldDeclaration.setTapListener(new g());
    }

    public static FloatingPanelArea K1(e8.c officialClass) {
        p pVar = new p();
        pVar.f5505Y = officialClass;
        FloatingPanelArea m10 = C15147a.m(pVar, N7.c.g(T6.a.f24083g0), N7.c.f(400));
        m10.T();
        pVar.f5504X = m10;
        return m10;
    }

    public static String L1(String text, String tag) {
        return "!tap=" + tag + "'" + text + "!!";
    }

    public static String s1(String t10, String c10) {
        return "'color=" + c10 + "'" + t10 + "''";
    }

    private void w1() {
        String str;
        this.f5506Z.removeAllViews();
        this.f5507a0.removeAllViews();
        this.f5508b0.removeAllViews();
        Class a10 = this.f5505Y.a();
        this.f5511e0 = this.f5505Y.e();
        if (this.f5505Y.a().getSuperclass() == null || this.f5505Y.a().getSuperclass() == Object.class || !this.f5505Y.a().getSuperclass().getName().startsWith("JAVARuntime.")) {
            str = "" + x1() + "\n";
        } else {
            str = "" + x1() + " extends " + this.f5505Y.a().getSuperclass().getSimpleName() + "\n";
        }
        String z12 = z1(a10);
        if (z12 != null) {
            str = str + "\n" + (z12 + z12);
        }
        if (!str.isEmpty()) {
            this.f5509c0.setText(str);
            this.f5509c0.setVisibility(0);
        }
        G1();
        F1();
        H1();
    }

    private String x1() {
        String replace = this.f5505Y.b().replace("$", ".");
        return replace.startsWith("JAVARuntime.") ? replace.replace("JAVARuntime.", "") : this.f5505Y.d();
    }

    private static String y1(C13044a attribute) {
        e8.b bVar = attribute.f85392b;
        if (bVar.f85397b) {
            JRDoc_EN jRDoc_EN = (JRDoc_EN) bVar.f85398c.getAnnotation(JRDoc_EN.class);
            JRDoc_PT jRDoc_PT = (JRDoc_PT) attribute.f85392b.f85398c.getAnnotation(JRDoc_PT.class);
            return (jRDoc_PT == null || !Lang.o().equals("pt-br")) ? jRDoc_EN != null ? jRDoc_EN.value() : "" : jRDoc_PT.value();
        }
        e8.b bVar2 = attribute.f85393c;
        if (!bVar2.f85397b) {
            return "";
        }
        JRDoc_EN jRDoc_EN2 = (JRDoc_EN) bVar2.f85398c.getAnnotation(JRDoc_EN.class);
        JRDoc_PT jRDoc_PT2 = (JRDoc_PT) attribute.f85393c.f85398c.getAnnotation(JRDoc_PT.class);
        return (jRDoc_PT2 == null || !Lang.o().equals("pt-br")) ? jRDoc_EN2 != null ? jRDoc_EN2.value() : "" : jRDoc_PT2.value();
    }

    private static String z1(Class<?> cls) {
        JRDoc_EN jRDoc_EN = (JRDoc_EN) cls.getAnnotation(JRDoc_EN.class);
        JRDoc_PT jRDoc_PT = (JRDoc_PT) cls.getAnnotation(JRDoc_PT.class);
        return (jRDoc_PT == null || !Lang.o().equals("pt-br")) ? jRDoc_EN != null ? jRDoc_EN.value() : "" : jRDoc_PT.value();
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.class_details_panel, (ViewGroup) null);
        this.f5510d0 = inflate;
        inflate.setOnTouchListener(new a());
        inflate.findViewById(R.id.closeX).setOnClickListener(new b());
        this.f5504X.H1((DragPanelView) inflate.findViewById(R.id.dragPanel));
        TextView textView = (TextView) inflate.findViewById(R.id.tittle);
        this.f5509c0 = (TextView) inflate.findViewById(R.id.classDescription);
        this.f5506Z = (LinearLayout) inflate.findViewById(R.id.methodsContainer);
        this.f5507a0 = (LinearLayout) inflate.findViewById(R.id.fieldsContainer);
        this.f5508b0 = (LinearLayout) inflate.findViewById(R.id.virtualattributesContainer);
        textView.setText(x1());
        w1();
        return inflate;
    }

    public final View t1(Field field) {
        View inflate = LayoutInflater.from(M()).inflate(R.layout.field_item, (ViewGroup) this.f5507a0, false);
        AdvancedTextView advancedTextView = (AdvancedTextView) inflate.findViewById(R.id.fieldDeclaration);
        J1(advancedTextView);
        TextView textView = (TextView) inflate.findViewById(R.id.fieldDescription);
        inflate.findViewById(R.id.copy).setOnClickListener(new e(field));
        StringBuilder sb2 = new StringBuilder();
        sb2.append(L1(field.getType().getName().startsWith("JAVARuntime.") ? s1(I1(field.getType().getName()).replace("JAVARuntime.", ""), "52, 186, 235") : s1(I1(field.getType().getSimpleName()), "255, 55, 28"), I1(field.getType().getName())));
        sb2.append(": ");
        sb2.append(field.getName());
        advancedTextView.setText(sb2.toString());
        String A12 = A1(field);
        if (A12 == null || A12.isEmpty()) {
            textView.setVisibility(8);
        } else {
            textView.setText(A12);
            textView.setVisibility(0);
        }
        return inflate;
    }

    public final View u1(Method method, int index, Class cls) {
        View inflate = LayoutInflater.from(M()).inflate(R.layout.method_item, (ViewGroup) this.f5506Z, false);
        AdvancedTextView advancedTextView = (AdvancedTextView) inflate.findViewById(R.id.methodSignature);
        J1(advancedTextView);
        TextView textView = (TextView) inflate.findViewById(R.id.methodDescription);
        AdvancedTextView advancedTextView2 = (AdvancedTextView) inflate.findViewById(R.id.methodArgs);
        J1(advancedTextView2);
        inflate.setBackground(ContextCompat.getDrawable(M(), index % 2 == 0 ? R.drawable.floatingpopup_menu_item_background_row1 : R.drawable.floatingpopup_menu_item_background_row2));
        inflate.findViewById(R.id.copy).setOnClickListener(new c(method));
        StringBuilder sb2 = new StringBuilder();
        sb2.append(method.getName());
        sb2.append(" -> ");
        sb2.append(L1(method.getReturnType().getName().startsWith("JAVARuntime.") ? s1(I1(method.getReturnType().getName()).replace("JAVARuntime.", ""), "52, 186, 235") : s1(I1(method.getReturnType().getSimpleName()), "255, 55, 28"), I1(method.getReturnType().getName())));
        advancedTextView.setText(sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append("(");
        Class<?>[] parameterTypes = method.getParameterTypes();
        for (int i10 = 0; i10 < parameterTypes.length; i10++) {
            if (i10 > 0) {
                sb3.append(", ");
            }
            sb3.append(L1(parameterTypes[i10].getName().startsWith("JAVARuntime.") ? s1(I1(parameterTypes[i10].getName()).replace("JAVARuntime.", ""), "52, 186, 235") : s1(I1(parameterTypes[i10].getSimpleName()), "255, 55, 28"), I1(parameterTypes[i10].getName())));
        }
        sb3.append(")");
        if (sb3.toString().isEmpty()) {
            advancedTextView2.setVisibility(8);
        } else {
            advancedTextView2.setText(sb3.toString());
            advancedTextView2.setVisibility(0);
        }
        String B12 = B1(method, cls);
        if (B12 == null || B12.isEmpty()) {
            textView.setVisibility(8);
        } else {
            textView.setText(B12);
            textView.setVisibility(0);
        }
        return inflate;
    }

    public final View v1(C13044a field) {
        View inflate = LayoutInflater.from(M()).inflate(R.layout.field_item, (ViewGroup) this.f5507a0, false);
        AdvancedTextView advancedTextView = (AdvancedTextView) inflate.findViewById(R.id.fieldDeclaration);
        J1(advancedTextView);
        TextView textView = (TextView) inflate.findViewById(R.id.fieldDescription);
        inflate.findViewById(R.id.copy).setOnClickListener(new d(field));
        StringBuilder sb2 = new StringBuilder();
        sb2.append(L1(field.d().getName().startsWith("JAVARuntime.") ? s1(I1(field.d().getName()).replace("JAVARuntime.", ""), "52, 186, 235") : s1(I1(field.d().getSimpleName()), "255, 55, 28"), I1(field.d().getName())));
        sb2.append(": ");
        sb2.append(field.c());
        advancedTextView.setText(sb2.toString());
        String y12 = y1(field);
        if (y12 == null || y12.isEmpty()) {
            textView.setVisibility(8);
        } else {
            textView.setText(y12);
            textView.setVisibility(0);
        }
        return inflate;
    }

    public p() {
        super(null, "Class Details", "ClassDetailsPanel");
        super.e1(false);
    }
}
