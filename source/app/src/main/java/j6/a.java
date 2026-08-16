package J6;

import android.text.Layout;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Core.Components.JCompiler.JavaMetaInfo;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine2.R;
import d8.j;
import o8.f;
import org.blacksquircle.ui.editorkit.utils.EditorTheme;
import org.blacksquircle.ui.editorkit.utils.OnTextChangeListener;
import org.blacksquircle.ui.editorkit.widget.TextProcessor;
import org.blacksquircle.ui.language.base.Language;
import org.blacksquircle.ui.language.base.model.ColorScheme;
import r4.C15147a;

public class a extends EditorPanel {

    public static final String f10275d0 = "LineTipPanel";

    public static final Class f10276e0 = a.class;

    public JavaMetaInfo f10277X;

    public ColorScheme f10278Y;

    public TextProcessor f10279Z;

    public FloatingPanelArea f10280a0;

    public final String f10281b0;

    public final String f10282c0;

    public class RunnableC0254a implements Runnable {

        public final int f10283b;

        public final int f10284c;

        public final String f10285d;

        public final String f10286e;

        public RunnableC0254a(final int val$xPixel, final int val$yPixel, final String val$text, final String val$className) {
            this.f10283b = val$xPixel;
            this.f10284c = val$yPixel;
            this.f10285d = val$text;
            this.f10286e = val$className;
        }

        @Override
        public void run() {
            float g10 = N7.c.g(550);
            float g11 = N7.c.g(400);
            float j10 = N7.c.j(this.f10283b);
            float i10 = N7.c.i(this.f10284c);
            a aVar = new a(this.f10285d, this.f10286e);
            FloatingPanelArea n10 = C15147a.n(aVar, j10, i10, g10, g11);
            aVar.f10280a0 = n10;
            n10.E1(true);
        }
    }

    public class b implements View.OnTouchListener {
        public b() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return true;
        }
    }

    public class c implements OnTextChangeListener {
        public c() {
        }

        @Override
        public void afterTextChange(View v10, int line, int selectionStart, int selectionEnd, int x10, int y10) {
            if (a.this.f10281b0.equals(a.this.f10279Z.getText().toString())) {
                return;
            }
            a.this.f10279Z.setTextContent(a.this.f10281b0);
        }
    }

    public class d implements F6.b {
        public d() {
        }

        @Override
        public void a(int line) {
        }

        @Override
        public void b(int line) {
        }

        @Override
        public Vector2 c() {
            return a.this.u1();
        }

        @Override
        public EditText d() {
            return a.this.f10279Z;
        }

        @Override
        public void e() {
        }

        @Override
        public JavaMetaInfo f() {
            return a.this.t1();
        }

        @Override
        public int g() {
            return a.this.f10279Z.getSelectionStart();
        }

        @Override
        public String getClassName() {
            return a.this.f10282c0;
        }

        @Override
        public String getCode() {
            return a.this.f10279Z.getText().toString();
        }
    }

    public class e implements f {
        public e() {
        }

        @Override
        public void a() {
        }

        @Override
        public void b() {
        }
    }

    public a(String text, String scriptName) {
        super(null, f10275d0);
        this.f10278Y = EditorTheme.INSTANCE.getDARCULA();
        super.e1(false);
        this.f10281b0 = text;
        this.f10282c0 = scriptName;
    }

    public static void A1(int xPixel, int yPixel, String text, String className) {
        N7.c.l(0.1f, new RunnableC0254a(xPixel, yPixel, text, className));
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.codeview_linetip, (ViewGroup) null);
        inflate.setOnTouchListener(new b());
        TextProcessor textProcessor = (TextProcessor) inflate.findViewById(R.id.editor);
        this.f10279Z = textProcessor;
        textProcessor.setHorizontallyScrolling(true);
        this.f10279Z.setFocusable(false);
        this.f10279Z.setFocusableInTouchMode(false);
        this.f10279Z.setLongClickable(true);
        this.f10279Z.setTextIsSelectable(true);
        this.f10279Z.setOnTextChangeListener(new c());
        v1();
        N7.c.e();
        return inflate;
    }

    @Override
    public void n1() {
        super.n1();
        N7.c.e();
    }

    public JavaMetaInfo t1() {
        String str;
        if (this.f10277X == null && (str = this.f10282c0) != null && !str.isEmpty()) {
            JavaMetaInfo J10 = j.J(this.f10282c0);
            this.f10277X = J10;
            if (J10 != null) {
                J10.f72521k = new e();
            } else {
                System.out.println("Failed to find JavaMetaInfo");
            }
        }
        return this.f10277X;
    }

    public Vector2 u1() {
        int selectionStart = this.f10279Z.getSelectionStart();
        Layout layout = this.f10279Z.getLayout();
        if (layout == null) {
            System.out.println("Scripting Cursor Position NO LAYOUT");
            return null;
        }
        int lineForOffset = layout.getLineForOffset(selectionStart);
        float primaryHorizontal = layout.getPrimaryHorizontal(selectionStart);
        int lineTop = layout.getLineTop(lineForOffset) - layout.getLineBottom(lineForOffset);
        this.f10279Z.getLocationOnScreen(new int[2]);
        float paddingLeft = r2[0] + primaryHorizontal + this.f10279Z.getPaddingLeft();
        float paddingTop = ((r2[1] + r3) + this.f10279Z.getPaddingTop()) - (lineTop / 2.0f);
        System.out.println("Scripting Cursor Position X: " + paddingLeft + ", Y: " + paddingTop);
        return new Vector2(paddingLeft, paddingTop);
    }

    public final void v1() {
        y1(new C6.d(new d()));
        x1();
        this.f10279Z.setTextContent(this.f10281b0);
        w1();
        z1(14);
    }

    public void w1() {
        this.f10279Z.setColorScheme(this.f10278Y);
    }

    public void x1() {
        com.itsmagic.engine.Activities.Editor.Panels.Scripting.Interfaces.SuperClasses.a.f71892a.f(this.f10279Z, M());
    }

    public void y1(Language language) {
        this.f10279Z.setLanguage(language);
    }

    public final void z1(int size) {
        this.f10279Z.setTextSize(size);
    }
}
