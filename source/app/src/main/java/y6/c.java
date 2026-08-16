package y6;

import Ic.C2633l;
import JAVARuntime.ScriptingExtension;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.asynclayoutinflater.view.AsyncLayoutInflater;
import androidx.constraintlayout.widget.ConstraintLayout;
import b3.s;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.C12735c;
import com.itsmagic.engine2.R;
import d8.r;
import java.io.File;
import jd.C13823b;
import n4.C14350b;
import n4.C14351c;
import z6.C16268a;

public class c extends EditorPanel {

    public static final String f130007e0 = "Scripting";

    public LinearLayout f130008X;

    public ConstraintLayout f130009Y;

    public F6.d f130010Z;

    public l f130011a0;

    public View f130012b0;

    public AsyncLayoutInflater f130013c0;

    public String f130014d0;

    public class a implements y6.f {

        public final String f130015a;

        public a(final String val$originalFilePath) {
            this.f130015a = val$originalFilePath;
        }

        @Override
        public View a(l state) {
            return c.this.x1(state);
        }

        @Override
        public void b() {
            c.this.z1(this.f130015a);
        }

        @Override
        public l getState() {
            return c.this.f130011a0;
        }
    }

    public class b implements InterfaceC16149b {

        public final C13823b f130017a;

        public class a implements InterfaceC16149b {
            public a() {
            }

            @Override
            public void a(View view) {
                F6.d dVar = c.this.f130010Z;
                b bVar = b.this;
                dVar.openScript(bVar.f130017a, c.this.M());
            }
        }

        public b(final C13823b val$pFile) {
            this.f130017a = val$pFile;
        }

        @Override
        public void a(View view) {
            c.this.f130010Z.inflateView(c.this.f130009Y, c.this.f130013c0, c.this.M(), new a());
        }
    }

    public class C2218c implements r.a {

        public final r f130020a;

        public C2218c(final r val$loadedClass) {
            this.f130020a = val$loadedClass;
        }

        @Override
        public void onError(String msg) {
            J4.d.E1();
            J4.d.L1(this.f130020a.f84452a.f72515e + s.f32937c + msg);
        }
    }

    public class d implements r.a {

        public final r f130022a;

        public d(final r val$loadedClass) {
            this.f130022a = val$loadedClass;
        }

        @Override
        public void onError(String msg) {
            J4.d.E1();
            J4.d.M1(this.f130022a.f84452a.f72515e + s.f32937c + msg);
        }
    }

    public class e implements y6.f {

        public final l f130024a;

        public e(final l val$state) {
            this.f130024a = val$state;
        }

        @Override
        public View a(l state) {
            return c.this.x1(state);
        }

        @Override
        public void b() {
            c.this.x1(this.f130024a);
        }

        @Override
        public l getState() {
            return this.f130024a;
        }
    }

    public class f implements InterfaceC16149b {

        public class a implements InterfaceC16149b {
            public a() {
            }

            @Override
            public void a(View view) {
            }
        }

        public f() {
        }

        @Override
        public void a(View view) {
            c.this.f130010Z.inflateView(c.this.f130009Y, c.this.f130013c0, c.this.M(), new a());
        }
    }

    public class g implements AsyncLayoutInflater.OnInflateFinishedListener {

        public final InterfaceC16149b f130028a;

        public g(final InterfaceC16149b val$inflateListener) {
            this.f130028a = val$inflateListener;
        }

        @Override
        public void onInflateFinished(@NonNull View codeViewLayout, int resid, @Nullable @org.jetbrains.annotations.Nullable ViewGroup parent) {
            try {
                c.this.f130009Y.addView(codeViewLayout);
                codeViewLayout.setLayoutParams(new ConstraintLayout.LayoutParams(-1, -1));
                N7.c.t0("scripting_editor_background", codeViewLayout);
                this.f130028a.a(codeViewLayout);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class h implements r.a {

        public final r f130030a;

        public h(final r val$loadedClass) {
            this.f130030a = val$loadedClass;
        }

        @Override
        public void onError(String msg) {
            J4.d.E1();
            J4.d.M1(this.f130030a.f84452a.f72515e + s.f32937c + msg);
        }
    }

    public class i implements r.a {

        public final r f130032a;

        public i(final r val$loadedClass) {
            this.f130032a = val$loadedClass;
        }

        @Override
        public void onError(String msg) {
            J4.d.E1();
            J4.d.M1(this.f130032a.f84452a.f72515e + s.f32937c + msg);
        }
    }

    public class j implements r.a {

        public final r f130034a;

        public j(final r val$loadedClass) {
            this.f130034a = val$loadedClass;
        }

        @Override
        public void onError(String msg) {
            J4.d.E1();
            J4.d.b2(this.f130034a.f84452a.f72515e + s.f32937c + msg);
        }
    }

    public class k implements r.a {

        public final r f130035a;

        public k(final r val$loadedClass) {
            this.f130035a = val$loadedClass;
        }

        @Override
        public void onError(String msg) {
            J4.d.E1();
            J4.d.M1(this.f130035a.f84452a.f72515e + s.f32937c + msg);
        }
    }

    public enum l {
        Welcome,
        MissingJava,
        MissingEditor
    }

    public c() {
        super(null, Lang.l(Lang.T.CODING));
        this.f130010Z = null;
        this.f130011a0 = l.Welcome;
        super.W0(true);
    }

    public static boolean A1(String filePath) {
        Object j10;
        for (int i10 = 0; i10 < y6.d.d(); i10++) {
            if (y6.d.c(i10).supportFile(new C13823b(filePath))) {
                return true;
            }
        }
        for (int i11 = 0; i11 < y6.d.f(); i11++) {
            r e10 = y6.d.e(i11);
            if (e10 != null) {
                try {
                    try {
                        if (e10.f84454c != null && (j10 = e10.j(new j(e10))) != null && j10 != ScriptingExtension.class && ScriptingExtension.class.isAssignableFrom(j10.getClass())) {
                            try {
                                F6.d scriptingInterface = ((ScriptingExtension) e10.j(new k(e10))).getScriptingInterface();
                                if (scriptingInterface != null && scriptingInterface.supportFile(new C13823b(filePath))) {
                                    return true;
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
        return C2633l.b(filePath, ".mtl") || C2633l.b(filePath, ".mtl") || C2633l.b(filePath, ".java|.lua") || C2633l.b(filePath, ".txt") || C2633l.b(filePath, ".pdf") || C2633l.b(filePath, ".doc") || C2633l.b(filePath, ".docx") || C2633l.b(filePath, ".xml") || C2633l.b(filePath, ".json");
    }

    @Override
    public View C0() {
        if (this.f130010Z != null) {
            return this.f130008X;
        }
        this.f130013c0 = N7.c.s();
        LinearLayout linearLayout = (LinearLayout) this.f70908j.inflate(R.layout.scripting_panel, (ViewGroup) null);
        this.f130008X = linearLayout;
        linearLayout.removeAllViews();
        ConstraintLayout constraintLayout = new ConstraintLayout(M());
        this.f130009Y = constraintLayout;
        this.f130008X.addView(constraintLayout);
        this.f130009Y.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        String str = this.f130014d0;
        if (str != null) {
            z1(str);
        }
        return this.f130008X;
    }

    @Override
    public void E0() {
    }

    @Override
    public void G0() {
        ConstraintLayout constraintLayout = this.f130009Y;
        if (constraintLayout != null) {
            constraintLayout.removeAllViews();
            this.f130008X.removeView(this.f130009Y);
        }
        this.f130009Y = null;
        this.f130010Z = null;
        this.f130011a0 = l.Welcome;
    }

    @Override
    public void K0() {
        T0();
    }

    @Override
    public void N0() {
    }

    @Override
    public boolean O0(n4.f panelIntent) {
        if (panelIntent instanceof C14351c) {
            C14351c c14351c = (C14351c) panelIntent;
            if (A1(c14351c.f97724a)) {
                z1(c14351c.f97724a);
                return true;
            }
        }
        if (!(panelIntent instanceof C14350b)) {
            return false;
        }
        R0();
        return false;
    }

    @Override
    public EditorPanel k() {
        return new c();
    }

    @Override
    public void m1() {
    }

    @Override
    public void n1() {
        F6.d dVar = this.f130010Z;
        if (dVar != null) {
            dVar.updateVisible();
        }
    }

    @Override
    public void o1() {
    }

    public final boolean u1(F6.d anInterface, C13823b pFile, String originalFilePath, boolean duplicate) {
        if (!anInterface.supportFile(pFile)) {
            return false;
        }
        F6.d dVar = this.f130010Z;
        if (dVar != null) {
            dVar.onClose(M());
        }
        if (duplicate) {
            this.f130010Z = anInterface.duplicate();
        } else {
            this.f130010Z = anInterface;
        }
        this.f130010Z.onStart(M(), this.f70908j, new a(originalFilePath), this);
        y1(new b(pFile));
        return true;
    }

    public final boolean v1(l state, F6.d anInterface) {
        if (!anInterface.matchState(state)) {
            return false;
        }
        F6.d duplicate = anInterface.duplicate();
        this.f130010Z = duplicate;
        duplicate.onStart(M(), this.f70908j, new e(state), this);
        y1(new f());
        return true;
    }

    public String w1() {
        F6.d dVar = this.f130010Z;
        if (dVar == null || !dVar.hasScript()) {
            return null;
        }
        return this.f130010Z.getOpenFile();
    }

    public final View x1(l state) {
        Object j10;
        this.f130011a0 = state;
        try {
            F6.d dVar = this.f130010Z;
            if (dVar != null) {
                dVar.onClose(M());
            }
            for (int i10 = 0; i10 < y6.d.d() && !v1(state, y6.d.c(i10)); i10++) {
            }
            for (int i11 = 0; i11 < y6.d.f(); i11++) {
                r e10 = y6.d.e(i11);
                if (e10 != null) {
                    try {
                        try {
                            if (e10.f84454c != null && (j10 = e10.j(new C2218c(e10))) != null && j10 != ScriptingExtension.class && ScriptingExtension.class.isAssignableFrom(j10.getClass())) {
                                try {
                                    F6.d scriptingInterface = ((ScriptingExtension) e10.j(new d(e10))).getScriptingInterface();
                                    if (scriptingInterface != null && v1(state, scriptingInterface)) {
                                        break;
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
            this.f130012b0.setVisibility(0);
            return null;
        } catch (Exception e14) {
            e14.printStackTrace();
            return null;
        }
    }

    public final void y1(InterfaceC16149b inflateListener) {
        try {
            ConstraintLayout constraintLayout = this.f130009Y;
            if (constraintLayout == null) {
                throw new RuntimeException("Unitialize exception");
            }
            constraintLayout.removeAllViews();
            View m10 = N7.c.m("scripting_editor_background");
            if (m10 == null) {
                this.f130013c0.inflate(R.layout.codeview_background, null, new g(inflateListener));
                return;
            }
            try {
                this.f130009Y.addView(m10);
            } catch (Exception unused) {
            }
            m10.setLayoutParams(new ConstraintLayout.LayoutParams(-1, -1));
            inflateListener.a(m10);
        } catch (RuntimeException e10) {
            e10.printStackTrace();
        }
    }

    public void z1(String filePath) {
        boolean z10;
        boolean z11;
        Object j10;
        C12735c.a("JAVA_SCRIPTING_OPEN");
        String replace = filePath.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(M()) + "/", "");
        this.f130014d0 = replace;
        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(M()) + "/" + replace);
        if (!file.exists() || file.isDirectory()) {
            R0();
            return;
        }
        C13823b c13823b = new C13823b(replace);
        f1(Tc.b.w(replace, false));
        F6.d dVar = this.f130010Z;
        if (dVar != null && dVar.supportFile(c13823b)) {
            this.f130010Z.replaceScript(c13823b, M());
            return;
        }
        int i10 = 0;
        while (true) {
            z10 = true;
            if (i10 >= y6.d.d()) {
                z11 = false;
                break;
            } else {
                if (u1(y6.d.c(i10), c13823b, filePath, true)) {
                    z11 = true;
                    break;
                }
                i10++;
            }
        }
        int i11 = 0;
        while (true) {
            if (i11 >= y6.d.f()) {
                z10 = z11;
                break;
            }
            r e10 = y6.d.e(i11);
            if (e10 != null) {
                try {
                    try {
                        if (e10.f84454c != null && (j10 = e10.j(new h(e10))) != null && j10 != ScriptingExtension.class && ScriptingExtension.class.isAssignableFrom(j10.getClass())) {
                            try {
                                F6.d scriptingInterface = ((ScriptingExtension) e10.j(new i(e10))).getScriptingInterface();
                                if (scriptingInterface != null && u1(scriptingInterface, c13823b, filePath, false)) {
                                    break;
                                }
                            } catch (Exception e11) {
                                e11.printStackTrace();
                            }
                        }
                    } catch (Error e12) {
                        e12.printStackTrace();
                    }
                } catch (Exception e13) {
                    e13.printStackTrace();
                }
            }
            i11++;
        }
        if (z10) {
            return;
        }
        C16268a.f130709e = Tc.b.t(replace).toUpperCase();
        x1(l.MissingEditor);
    }
}
