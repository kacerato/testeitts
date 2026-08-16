package D6;

import Ic.C2633l;
import Ic.I;
import M7.c;
import M7.g;
import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import android.widget.EditText;
import b9.C3856c;
import com.itsmagic.engine.Activities.Editor.Panels.Scripting.Interfaces.SuperClasses.TextInterface;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine2.R;
import java.util.List;
import jd.C13823b;
import org.blacksquircle.ui.editorkit.utils.RequestLineTips;
import org.blacksquircle.ui.language.base.model.ColorScheme;

public class a extends TextInterface {

    public String f4831a;

    public String f4832b;

    public class C0086a implements F6.b {

        public class RunnableC0087a implements Runnable {

            public final int f4834b;

            public RunnableC0087a(final int val$line) {
                this.f4834b = val$line;
            }

            @Override
            public void run() {
                a.this.addError(this.f4834b);
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override
            public void run() {
                a.this.removeAllErrors();
            }
        }

        public class c implements Runnable {

            public final int f4837b;

            public c(final int val$line) {
                this.f4837b = val$line;
            }

            @Override
            public void run() {
                a.this.removeErrors(this.f4837b);
            }
        }

        public C0086a() {
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
                N7.c.j0(new RunnableC0087a(line));
            }
        }

        @Override
        public Vector2 c() {
            return a.this.getScreenPositionOfCursor();
        }

        @Override
        public EditText d() {
            return a.this.getEditorView();
        }

        @Override
        public void e() {
            if (N7.c.o() != null) {
                N7.c.j0(new b());
            }
        }

        @Override
        public int g() {
            return a.this.getCursorPosition();
        }

        @Override
        public String getClassName() {
            return a.this.f4831a;
        }

        @Override
        public String getCode() {
            return a.this.getText();
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

    public class c implements M7.d {
        public c() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            a.this.saveScript(context);
        }
    }

    private void q() {
        String text = getText();
        setLanguage(new D6.b(new C0086a()));
        setDefaultConfigs();
        r();
        setText(text);
    }

    private void r() {
        setRequestLineTips(new b());
    }

    @Override
    public F6.d duplicate() {
        return new a();
    }

    @Override
    public String getOpenFile() {
        return this.f4832b;
    }

    @Override
    public boolean hasScript() {
        return this.f4832b != null;
    }

    @Override
    public void inflateTopBarElements(Context context, List<g> elements) {
        elements.add(new M7.c(R.drawable.save_v2, new c(), c.b.Disconnected, context).m0(Nc.b.k0(24.0f)));
        super.inflateTopBarElements(context, elements);
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    public void init() {
        super.init();
        q();
        setColorTheme(TextInterface.config.f71851a);
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
        p(script.f92878a);
    }

    public void p(String file) {
        init();
        unload();
        this.f4831a = Tc.b.w(file, true);
        this.f4832b = file;
        String s10 = X7.a.s(file, this.context);
        if (s10 == null) {
            s10 = "";
        }
        setText(s10);
    }

    @Override
    public void replaceScript(C13823b newScript, Context context) {
        super.replaceScript(newScript, context);
        saveScript(context);
        p(newScript.f92878a);
    }

    @Override
    public boolean saveScript(Context context) {
        super.saveScript(context);
        try {
            String str = this.f4832b;
            if (str == null) {
                return false;
            }
            X7.a.b(str, getText(), context);
            C3856c.n(this.f4832b);
            com.itsmagic.engine.Engines.Engine.World.a.i(new I(this.f4832b));
            C3856c.m();
            return true;
        } catch (Exception e10) {
            try {
                e10.printStackTrace();
                return false;
            } catch (Exception e11) {
                e11.printStackTrace();
                return false;
            }
        }
    }

    @Override
    public void setColorTheme(ColorScheme colorTheme) {
        super.setColorTheme(colorTheme);
        q();
    }

    @Override
    public boolean supportFile(C13823b file) {
        return C2633l.b(file.f(), ".lua");
    }

    @Override
    public void unload() {
        super.unload();
        this.f4832b = null;
        this.f4831a = null;
    }
}
