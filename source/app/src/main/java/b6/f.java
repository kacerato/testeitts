package B6;

import Ic.C2633l;
import Ic.C2636o;
import M7.c;
import M7.g;
import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import android.widget.EditText;
import com.itsmagic.engine.Activities.Editor.Panels.Scripting.Interfaces.SuperClasses.TextInterface;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine2.R;
import da.C12894h;
import java.io.File;
import java.util.List;
import jd.C13823b;
import org.blacksquircle.ui.editorkit.utils.EditorTheme;
import org.blacksquircle.ui.editorkit.utils.RequestLineTips;
import q7.C15045a;
import w3.p;

public class f extends TextInterface {

    public String f1585a;

    public String f1586b;

    public String f1587c;

    public class a implements F6.b {

        public class RunnableC0033a implements Runnable {

            public final int f1589b;

            public RunnableC0033a(final int val$line) {
                this.f1589b = val$line;
            }

            @Override
            public void run() {
                f.this.addError(this.f1589b);
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override
            public void run() {
                f.this.removeAllErrors();
            }
        }

        public class c implements Runnable {

            public final int f1592b;

            public c(final int val$line) {
                this.f1592b = val$line;
            }

            @Override
            public void run() {
                f.this.removeErrors(this.f1592b);
            }
        }

        public a() {
        }

        @Override
        public void a(int line) {
            if (N7.c.o() != null) {
                N7.c.j0(new c(line));
            }
        }

        @Override
        public void b(int line) {
            if (N7.c.o() != null) {
                N7.c.j0(new RunnableC0033a(line));
            }
        }

        @Override
        public Vector2 c() {
            return f.this.getScreenPositionOfCursor();
        }

        @Override
        public EditText d() {
            return f.this.getEditorView();
        }

        @Override
        public void e() {
            if (N7.c.o() != null) {
                N7.c.j0(new b());
            }
        }

        @Override
        public int g() {
            return f.this.getCursorPosition();
        }

        @Override
        public String getClassName() {
            return f.this.f1587c;
        }

        @Override
        public String getCode() {
            return f.this.getText();
        }
    }

    public class b implements RequestLineTips {
        public b() {
        }

        @Override
        public RequestLineTips.Type getTypeForLine(int line, boolean isLatest) {
            return RequestLineTips.Type.None;
        }

        @Override
        public void showLineTips(int line, int x10, int y10, boolean isLatest) {
        }
    }

    public class c implements C15045a.d {

        public class a implements Runnable {

            public final C15045a f1596b;

            public class RunnableC0034a implements Runnable {
                public RunnableC0034a() {
                }

                @Override
                public void run() {
                    a.this.f1596b.p1();
                    C12894h.q();
                    com.itsmagic.engine.Engines.Engine.World.a.i(new o9.c());
                }
            }

            public a(final C15045a val$loading) {
                this.f1596b = val$loading;
            }

            @Override
            public void run() {
                try {
                    if (f.this.f1585a != null) {
                        C2636o.e(f.this.getText(), new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + f.this.f1585a));
                        if (!p.b(new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_VULKAN"))) {
                            throw new RuntimeException("Failed to reset Vulkan cache folder");
                        }
                        Vb.a.M();
                        N7.c.j0(new RunnableC0034a());
                    }
                } catch (Exception e10) {
                    try {
                        e10.printStackTrace();
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                }
            }
        }

        public c() {
        }

        @Override
        public void a(C15045a loading) {
            Thread thread = new Thread(new a(loading));
            thread.setPriority(1);
            thread.start();
        }
    }

    public class d implements M7.d {
        public d() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            f.this.saveScript(context);
        }
    }

    @Override
    public F6.d duplicate() {
        return new f();
    }

    @Override
    public String getOpenFile() {
        String str = this.f1585a;
        if (str != null) {
            return str;
        }
        return null;
    }

    @Override
    public boolean hasScript() {
        return this.f1585a != null;
    }

    @Override
    public void inflateTopBarElements(Context context, List<g> elements) {
        elements.add(new M7.c(R.drawable.save_v2, new d(), c.b.Disconnected, context).m0(Nc.b.k0(24.0f)));
        super.inflateTopBarElements(context, elements);
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    public void init() {
        super.init();
        s();
        setColorTheme(EditorTheme.INSTANCE.getDARCULA());
    }

    @Override
    public void onClose(Context context) {
        if (hasScript()) {
            saveScript(context);
        }
        unload();
        super.onClose(context);
    }

    @Override
    public void openScript(C13823b script, Context context) {
        super.openScript(script, context);
        q(script.f92878a);
    }

    public void q(String file) {
        init();
        unload();
        this.f1585a = file;
        this.f1587c = Tc.b.w(file, true);
        String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(this.context) + "/" + file;
        if (str.startsWith("/")) {
            str = str.substring(1);
        }
        File file2 = new File(str.replace("//", "/"));
        if (file2.exists()) {
            this.f1586b = C2636o.g(file2);
        }
        r();
    }

    public final void r() {
        String str = this.f1586b;
        if (str != null) {
            setText(str);
        } else {
            setText("");
        }
    }

    @Override
    public void replaceScript(C13823b newScript, Context context) {
        super.replaceScript(newScript, context);
        saveScript(context);
        q(newScript.f92878a);
    }

    public final void s() {
        String text = getText();
        setLanguage(new B6.a(new a()));
        setDefaultConfigs();
        t();
        setText(text);
    }

    @Override
    public boolean saveScript(Context context) {
        super.saveScript(context);
        C15045a.u1(true, new c());
        return false;
    }

    @Override
    public boolean supportFile(C13823b file) {
        return C2633l.b(file.f(), C2633l.d(".pvsc", ".svsc", ".avsc", ".mvsc", ".vfxs"));
    }

    public final void t() {
        setRequestLineTips(new b());
    }

    @Override
    public void unload() {
        super.unload();
        this.f1586b = null;
        this.f1585a = null;
        this.f1587c = null;
    }
}
