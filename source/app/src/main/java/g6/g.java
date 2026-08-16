package G6;

import Ic.C2633l;
import M7.c;
import android.annotation.SuppressLint;
import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import b3.s;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Panels.Scripting.Interfaces.SuperClasses.TextInterface;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine2.R;
import java.util.List;
import jd.C13823b;
import org.apache.commons.math3.geometry.VectorFormat;
import org.blacksquircle.ui.editorkit.utils.EditorTheme;
import org.blacksquircle.ui.editorkit.utils.RequestLineTips;
import org.json.JSONException;
import org.json.JSONObject;
import org.openjdk.tools.doclint.DocLint;

public class g extends TextInterface {

    public String f7662a;

    public String f7663b;

    public String f7664c;

    public TextWatcher f7665d = null;

    public class a implements F6.b {

        public class RunnableC0146a implements Runnable {

            public final int f7667b;

            public RunnableC0146a(final int val$line) {
                this.f7667b = val$line;
            }

            @Override
            public void run() {
                g.this.addError(this.f7667b);
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override
            public void run() {
                g.this.removeAllErrors();
            }
        }

        public class c implements Runnable {

            public final int f7670b;

            public c(final int val$line) {
                this.f7670b = val$line;
            }

            @Override
            public void run() {
                g.this.removeErrors(this.f7670b);
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
                N7.c.j0(new RunnableC0146a(line));
            }
        }

        @Override
        public Vector2 c() {
            return g.this.getScreenPositionOfCursor();
        }

        @Override
        public EditText d() {
            return g.this.getEditorView();
        }

        @Override
        public void e() {
            if (N7.c.o() != null) {
                N7.c.j0(new b());
            }
        }

        @Override
        public int g() {
            return g.this.getCursorPosition();
        }

        @Override
        public String getClassName() {
            return g.this.f7664c;
        }

        @Override
        public String getCode() {
            return g.this.getText();
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

    public class c implements TextWatcher {
        public c() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int start, int before, int count) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int start, int before, int count) {
            int i10;
            if (before != 0 || charSequence.length() <= (i10 = start + before)) {
                return;
            }
            String str = "" + charSequence.charAt(i10);
            if (!EditorSettings.a().recompileWhenFinishTyping || str.contains(";") || str.contains("{") || str.contains(DocLint.SEPARATOR) || str.contains(s.f32937c) || str.contains(VectorFormat.DEFAULT_SUFFIX)) {
                return;
            }
            str.contains("\n");
        }
    }

    public class d implements M7.d {
        public d() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            g.this.saveScript(context);
        }
    }

    private void r() {
        String text = getText();
        setLanguage(new G6.a(new a()));
        setDefaultConfigs();
        s();
        setText(text);
    }

    private void s() {
        setRequestLineTips(new b());
    }

    @Override
    public F6.d duplicate() {
        return new g();
    }

    @Override
    public String getOpenFile() {
        String str = this.f7663b;
        if (str != null) {
            return str;
        }
        return null;
    }

    @Override
    public boolean hasScript() {
        return this.f7663b != null;
    }

    @Override
    public void inflateTopBarElements(Context context, List<M7.g> elements) {
        elements.add(new M7.c(R.drawable.save_v2, new d(), c.b.Disconnected, context).m0(Nc.b.k0(24.0f)));
        super.inflateTopBarElements(context, elements);
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    public void init() {
        super.init();
        r();
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

    public final String p(String code) {
        if (!C2633l.b(this.f7663b, ".json")) {
            return code;
        }
        try {
            return new JSONObject(code).toString(2);
        } catch (JSONException e10) {
            e10.printStackTrace();
            return code;
        }
    }

    public void q(String file) {
        init();
        unload();
        this.f7664c = Tc.b.w(file, true);
        String s10 = X7.a.s(file, this.context);
        this.f7662a = s10;
        this.f7663b = file;
        if (s10 != null) {
            setText(p(s10));
        } else {
            setText("");
        }
        if (this.f7665d == null) {
            c cVar = new c();
            this.f7665d = cVar;
            addTextWatcher(cVar);
        }
    }

    @Override
    public void replaceScript(C13823b newScript, Context context) {
        super.replaceScript(newScript, context);
        saveScript(context);
        q(newScript.f92878a);
    }

    @Override
    public boolean saveScript(Context context) {
        super.saveScript(context);
        try {
            if (this.f7662a == null) {
                return false;
            }
            String text = getText();
            this.f7662a = text;
            X7.a.b(this.f7663b, text, context);
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
    public boolean supportFile(C13823b file) {
        return C2633l.b(file.f(), ".txt") || C2633l.b(file.f(), ".json");
    }

    @Override
    public void unload() {
        super.unload();
        this.f7662a = null;
        this.f7664c = null;
        this.f7663b = null;
    }
}
