package y6;

import JAVARuntime.ScriptingExtension;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.asynclayoutinflater.view.AsyncLayoutInflater;
import androidx.constraintlayout.widget.ConstraintLayout;
import b3.s;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Core.Components.JCompiler.JavaMetaInfo;
import com.itsmagic.engine2.R;
import d8.j;
import d8.r;
import n4.C14350b;
import n4.C14351c;
import y6.c;

public class e extends EditorPanel {

    public static final String f130039e0 = "ScriptingHome";

    public static final Class f130040f0 = e.class;

    public LinearLayout f130041X;

    public ConstraintLayout f130042Y;

    public F6.d f130043Z;

    public AsyncLayoutInflater f130044a0;

    public LinearLayout f130045b0;

    public LinearLayout f130046c0;

    public int f130047d0;

    public class a extends EditorPanel.j {
        @Override
        public Class b() {
            return e.f130040f0;
        }

        @Override
        public String c() {
            return e.f130039e0;
        }
    }

    public class b implements AsyncLayoutInflater.OnInflateFinishedListener {

        public final InterfaceC16149b f130048a;

        public b(final InterfaceC16149b val$inflateListener) {
            this.f130048a = val$inflateListener;
        }

        @Override
        public void onInflateFinished(@NonNull View codeViewLayout, int resid, @Nullable @org.jetbrains.annotations.Nullable ViewGroup parent) {
            e.this.f130042Y.addView(codeViewLayout);
            codeViewLayout.setLayoutParams(new ConstraintLayout.LayoutParams(-1, -1));
            N7.c.t0("scripting_editor_background", codeViewLayout);
            this.f130048a.a(codeViewLayout);
        }
    }

    public class c implements y6.f {
        public c() {
        }

        @Override
        public View a(c.l state) {
            return null;
        }

        @Override
        public void b() {
            e.this.w1();
        }

        @Override
        public c.l getState() {
            return c.l.Welcome;
        }
    }

    public class d implements InterfaceC16149b {
        public d() {
        }

        @Override
        public void a(View view) {
            e.this.f130045b0 = (LinearLayout) view.findViewById(R.id.error_scripts_content);
            e.this.v1();
            e.this.f130046c0 = (LinearLayout) view.findViewById(R.id.scripts_content);
        }
    }

    public class C2219e implements r.a {

        public final r f130052a;

        public C2219e(final r val$loadedClass) {
            this.f130052a = val$loadedClass;
        }

        @Override
        public void onError(String msg) {
            J4.d.E1();
            J4.d.b2(this.f130052a.f84452a.f72515e + s.f32937c + msg);
        }
    }

    public class f implements r.a {

        public final r f130054a;

        public f(final r val$loadedClass) {
            this.f130054a = val$loadedClass;
        }

        @Override
        public void onError(String msg) {
            J4.d.E1();
            J4.d.M1(this.f130054a.f84452a.f72515e + s.f32937c + msg);
        }
    }

    public class g implements y6.f {
        public g() {
        }

        @Override
        public View a(c.l state) {
            return null;
        }

        @Override
        public void b() {
            e.this.w1();
        }

        @Override
        public c.l getState() {
            return c.l.Welcome;
        }
    }

    public class h implements InterfaceC16149b {
        public h() {
        }

        @Override
        public void a(View view) {
            e.this.f130045b0 = (LinearLayout) view.findViewById(R.id.error_scripts_content);
            e.this.v1();
            e.this.f130046c0 = (LinearLayout) view.findViewById(R.id.scripts_content);
        }
    }

    public class i extends AbstractViewOnClickListenerC12733a {

        public final JavaMetaInfo f130058b;

        public i(final JavaMetaInfo val$cls) {
            this.f130058b = val$cls;
        }

        @Override
        public void click(View v10) {
            if (this.f130058b != null) {
                N7.c.D().B0(new C14351c(this.f130058b.f72511a));
            }
        }
    }

    static {
        EditorPanel.a(new a());
    }

    public e(K8.a engine) {
        super(engine);
        this.f130043Z = null;
        this.f130047d0 = -1;
    }

    private void u1(InterfaceC16149b inflateListener) {
        this.f130042Y.removeAllViews();
        View m10 = N7.c.m("scripting_editor_background");
        if (m10 == null) {
            this.f130044a0.inflate(R.layout.codeview_background, null, new b(inflateListener));
            return;
        }
        try {
            this.f130042Y.addView(m10);
        } catch (Exception unused) {
        }
        m10.setLayoutParams(new ConstraintLayout.LayoutParams(-1, -1));
        inflateListener.a(m10);
    }

    @Override
    public View C0() {
        if (this.f130043Z != null) {
            return this.f130041X;
        }
        this.f130044a0 = N7.c.s();
        LinearLayout linearLayout = (LinearLayout) this.f70908j.inflate(R.layout.scripting_panel, (ViewGroup) null);
        this.f130041X = linearLayout;
        linearLayout.removeAllViews();
        ConstraintLayout constraintLayout = new ConstraintLayout(M());
        this.f130042Y = constraintLayout;
        this.f130041X.addView(constraintLayout);
        this.f130042Y.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        w1();
        return this.f130041X;
    }

    @Override
    public void G0() {
        ConstraintLayout constraintLayout = this.f130042Y;
        if (constraintLayout != null) {
            constraintLayout.removeAllViews();
            this.f130041X.removeView(this.f130042Y);
        }
        this.f130042Y = null;
        this.f130043Z = null;
    }

    @Override
    public boolean O0(n4.f panelIntent) {
        if (!(panelIntent instanceof C14350b)) {
            return false;
        }
        w1();
        return false;
    }

    @Override
    public EditorPanel k() {
        return new e();
    }

    @Override
    public void o1() {
        j jVar = W7.b.f27310j;
        int size = j.f84415r.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            j jVar2 = W7.b.f27310j;
            JavaMetaInfo javaMetaInfo = j.f84415r.get(i11);
            if (javaMetaInfo != null && javaMetaInfo.f72519i) {
                i10++;
            }
        }
        if (i10 != this.f130047d0) {
            v1();
        }
    }

    public final void v1() {
        LinearLayout linearLayout = this.f130045b0;
        if (linearLayout != null) {
            if (linearLayout.getChildCount() > 0) {
                this.f130045b0.removeAllViews();
            }
            this.f130047d0 = 0;
            if (j.W()) {
                return;
            }
            int size = j.f84415r.size();
            for (int i10 = 0; i10 < size; i10++) {
                try {
                    JavaMetaInfo javaMetaInfo = j.f84415r.get(i10);
                    if (javaMetaInfo != null && !javaMetaInfo.f72511a.contains("_PROJECT/Scripts/_JContainer.java") && javaMetaInfo.f72519i && javaMetaInfo.k()) {
                        if (this.f130047d0 > 0) {
                            View view = new View(M());
                            this.f130045b0.addView(view);
                            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                            layoutParams.height = Nc.b.k0(8.0f);
                            view.setLayoutParams(layoutParams);
                        }
                        View inflate = this.f70908j.inflate(R.layout.scripting_error_script_button, (ViewGroup) null);
                        Button button = (Button) inflate.findViewById(R.id.button);
                        button.setText(javaMetaInfo.f72515e);
                        button.setOnClickListener(new i(javaMetaInfo));
                        this.f130045b0.addView(inflate);
                        this.f130047d0++;
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }
    }

    public final void w1() {
        Object j10;
        try {
            F6.d dVar = this.f130043Z;
            if (dVar != null) {
                dVar.onClose(M());
            }
            int i10 = 0;
            while (true) {
                if (i10 >= y6.d.d()) {
                    break;
                }
                F6.d c10 = y6.d.c(i10);
                if (c10.matchState(c.l.Welcome)) {
                    F6.d duplicate = c10.duplicate();
                    this.f130043Z = duplicate;
                    duplicate.onStart(M(), this.f70908j, new c(), this);
                    this.f130043Z.inflateView(this.f130042Y, this.f130044a0, M(), new d());
                    break;
                }
                i10++;
            }
            for (int i11 = 0; i11 < y6.d.f(); i11++) {
                r e10 = y6.d.e(i11);
                if (e10 != null) {
                    try {
                        try {
                            if (e10.f84454c != null && (j10 = e10.j(new C2219e(e10))) != null && j10 != ScriptingExtension.class && ScriptingExtension.class.isAssignableFrom(j10.getClass())) {
                                try {
                                    F6.d scriptingInterface = ((ScriptingExtension) e10.j(new f(e10))).getScriptingInterface();
                                    if (scriptingInterface != null && scriptingInterface.matchState(c.l.Welcome)) {
                                        F6.d duplicate2 = scriptingInterface.duplicate();
                                        this.f130043Z = duplicate2;
                                        duplicate2.onStart(M(), this.f70908j, new g(), this);
                                        this.f130043Z.inflateView(this.f130042Y, this.f130044a0, M(), new h());
                                        return;
                                    }
                                } catch (Exception e11) {
                                    e11.printStackTrace();
                                }
                            }
                        } catch (Exception e12) {
                            e12.printStackTrace();
                        }
                    } catch (Error e13) {
                        e13.printStackTrace();
                    }
                }
            }
        } catch (Exception e14) {
            e14.printStackTrace();
        }
    }

    public e() {
        super(null, Lang.l(Lang.T.HOME), f130039e0);
        this.f130043Z = null;
        this.f130047d0 = -1;
    }
}
