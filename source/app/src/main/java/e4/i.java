package E4;

import Ic.C2630i;
import Ic.C2636o;
import JAVARuntime.AOnTouchListener;
import JAVARuntime.JRDoc_EN;
import JAVARuntime.JRDoc_PT;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
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

public class i extends EditorPanel {

    public static final String f5471f0 = "ClassDetailsPanel";

    public static final String f5472g0 = "52, 186, 235";

    public static final String f5473h0 = "255, 55, 28";

    public FloatingPanelArea f5474X;

    public e8.c f5475Y;

    public LinearLayout f5476Z;

    public LinearLayout f5477a0;

    public LinearLayout f5478b0;

    public TextView f5479c0;

    public View f5480d0;

    public e8.d f5481e0;

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
            i.this.R0();
        }
    }

    public class c extends AbstractViewOnClickListenerC12733a {

        public final Field f5484b;

        public c(final Field val$field) {
            this.f5484b = val$field;
        }

        @Override
        public void click(View view) {
            C2630i.s(this.f5484b.getName());
            N7.c.v0("Copied:" + this.f5484b.getName());
        }
    }

    public class d implements C2636o.a {

        public final String f5486a;

        public final String[] f5487b;

        public d(final String val$mtdName, final String[] val$info) {
            this.f5486a = val$mtdName;
            this.f5487b = val$info;
        }

        @Override
        public boolean a(String line) {
            if (!line.startsWith(this.f5486a)) {
                return true;
            }
            this.f5487b[0] = "gen. by AI: " + line.substring(line.indexOf(s.f32937c) + 1);
            return false;
        }
    }

    public class e implements AdvancedTextView.e {
        public e() {
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

    public i(K8.a engine) {
        super(engine);
    }

    public static FloatingPanelArea D1(e8.c officialClass) {
        i iVar = new i();
        iVar.f5475Y = officialClass;
        FloatingPanelArea m10 = C15147a.m(iVar, N7.c.g(T6.a.f24083g0), N7.c.f(400));
        m10.T();
        iVar.f5474X = m10;
        return m10;
    }

    public static String E1(String text, String tag) {
        return "!tap=" + tag + "'" + text + "!!";
    }

    public static String q1(String t10, String c10) {
        return "'color=" + c10 + "'" + t10 + "''";
    }

    public static String u1(C13044a attribute) {
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

    public static String v1(Class<?> cls) {
        JRDoc_EN jRDoc_EN = (JRDoc_EN) cls.getAnnotation(JRDoc_EN.class);
        JRDoc_PT jRDoc_PT = (JRDoc_PT) cls.getAnnotation(JRDoc_PT.class);
        return (jRDoc_PT == null || !Lang.o().equals("pt-br")) ? jRDoc_EN != null ? jRDoc_EN.value() : "" : jRDoc_PT.value();
    }

    public static String w1(Field field) {
        JRDoc_EN jRDoc_EN = (JRDoc_EN) field.getAnnotation(JRDoc_EN.class);
        JRDoc_PT jRDoc_PT = (JRDoc_PT) field.getAnnotation(JRDoc_PT.class);
        return (jRDoc_PT == null || !Lang.o().equals("pt-br")) ? jRDoc_EN != null ? jRDoc_EN.value() : "" : jRDoc_PT.value();
    }

    public static int y1(Field field, Field field2) {
        return field.getName().compareToIgnoreCase(field2.getName());
    }

    public final void A1() {
        this.f5480d0.findViewById(R.id.methodsTitle).setVisibility(8);
    }

    public final void B1() {
        this.f5480d0.findViewById(R.id.virtualattributesTitle).setVisibility(8);
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.class_details_panel, (ViewGroup) null);
        this.f5480d0 = inflate;
        inflate.setOnTouchListener(new a());
        inflate.findViewById(R.id.closeX).setOnClickListener(new b());
        this.f5474X.H1((DragPanelView) inflate.findViewById(R.id.dragPanel));
        TextView textView = (TextView) inflate.findViewById(R.id.tittle);
        this.f5479c0 = (TextView) inflate.findViewById(R.id.classDescription);
        this.f5476Z = (LinearLayout) inflate.findViewById(R.id.methodsContainer);
        this.f5477a0 = (LinearLayout) inflate.findViewById(R.id.fieldsContainer);
        this.f5478b0 = (LinearLayout) inflate.findViewById(R.id.virtualattributesContainer);
        textView.setText(t1());
        s1();
        return inflate;
    }

    public final void C1(AdvancedTextView fieldDeclaration) {
        fieldDeclaration.setAllowLinkClicks(true);
        fieldDeclaration.setTapListener(new e());
    }

    public final View r1(Field field) {
        View inflate = LayoutInflater.from(M()).inflate(R.layout.field_item, (ViewGroup) this.f5477a0, false);
        AdvancedTextView advancedTextView = (AdvancedTextView) inflate.findViewById(R.id.fieldDeclaration);
        C1(advancedTextView);
        TextView textView = (TextView) inflate.findViewById(R.id.fieldDescription);
        inflate.findViewById(R.id.copy).setOnClickListener(new c(field));
        advancedTextView.setText(field.getName());
        String w12 = w1(field);
        if (w12 == null || w12.isEmpty()) {
            textView.setVisibility(8);
        } else {
            textView.setText(w12);
            textView.setVisibility(0);
        }
        return inflate;
    }

    public final void s1() {
        String str;
        this.f5476Z.removeAllViews();
        this.f5477a0.removeAllViews();
        this.f5478b0.removeAllViews();
        Class a10 = this.f5475Y.a();
        this.f5481e0 = this.f5475Y.e();
        if (this.f5475Y.a().getSuperclass() == null || this.f5475Y.a().getSuperclass() == Object.class || !this.f5475Y.a().getSuperclass().getName().startsWith("JAVARuntime.")) {
            str = "" + t1() + "\n";
        } else {
            str = "" + t1() + " extends " + this.f5475Y.a().getSuperclass().getSimpleName() + "\n";
        }
        String v12 = v1(a10);
        if (v12 != null) {
            str = str + "\n" + (v12 + v12);
        }
        if (!str.isEmpty()) {
            this.f5479c0.setText(str);
            this.f5479c0.setVisibility(0);
        }
        A1();
        z1();
        B1();
    }

    public final String t1() {
        String replace = this.f5475Y.b().replace("$", ".");
        return replace.startsWith("JAVARuntime.") ? replace.replace("JAVARuntime.", "") : this.f5475Y.d();
    }

    public final String x1(Method method, Class cls) {
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
                C2636o.i(M().getAssets().open("Editor/Doc/" + str3 + ".txt"), new d(str2, strArr));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return strArr[0];
    }

    public final void z1() {
        TextView textView = (TextView) this.f5480d0.findViewById(R.id.fieldsTitle);
        textView.setText("Constants");
        Field[] declaredFields = this.f5475Y.a().getDeclaredFields();
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (Field field : declaredFields) {
            if (Modifier.isPublic(field.getModifiers()) && field.getAnnotation(H6.g.class) == null) {
                steppedArrayList.add(field);
            }
        }
        steppedArrayList.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int y12;
                y12 = i.y1((Field) obj, (Field) obj2);
                return y12;
            }
        });
        Iterator<T> it = steppedArrayList.iterator();
        while (it.hasNext()) {
            this.f5477a0.addView(r1((Field) it.next()));
        }
        if (steppedArrayList.isEmpty()) {
            textView.setVisibility(8);
        }
    }

    public i() {
        super(null, "Class Details", "ClassDetailsPanel");
        super.e1(false);
    }
}
