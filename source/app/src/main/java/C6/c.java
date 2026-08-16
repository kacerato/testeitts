package C6;

import Ic.C2630i;
import Ic.C2633l;
import Ic.C2636o;
import M7.c;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.Toast;
import bd.C3867a;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Panels.Scripting.Interfaces.SuperClasses.TextInterface;
import com.itsmagic.engine.Core.Components.JCompiler.JavaMetaInfo;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine2.R;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import jd.C13823b;
import org.apache.commons.math3.geometry.VectorFormat;
import org.blacksquircle.ui.editorkit.plugin.base.EditorPlugin;
import org.blacksquircle.ui.editorkit.utils.OnTextChangeListener;
import org.blacksquircle.ui.editorkit.utils.RequestLineTips;
import org.blacksquircle.ui.editorkit.widget.TextProcessor;
import org.blacksquircle.ui.language.base.model.ColorScheme;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationProvider;
import org.google.googlejavaformat.java.Formatter;
import y6.c;

public class c extends TextInterface {

    public String f2376a;

    public JavaMetaInfo f2377b;

    public String f2378c;

    public String f2379d;

    public TextWatcher f2380e = null;

    public PopupWindow f2381f = null;

    public EditorPlugin f2382g = null;

    public ViewTreeObserver.OnScrollChangedListener f2383h = null;

    public volatile boolean f2384i = false;

    public volatile boolean f2385j = false;

    public volatile boolean f2386k = false;

    public String f2387l = "";

    public int f2388m = 0;

    public int f2389n = 0;

    public int f2390o = 0;

    public final K6.a f2391p = new K6.a();

    public int f2392q = 0;

    public int f2393r = 0;

    public class a implements ActionMode.Callback {

        public final TextProcessor f2394a;

        public class RunnableC0077a implements Runnable {
            public RunnableC0077a() {
            }

            @Override
            public void run() {
                c.this.f0();
            }
        }

        public a(final TextProcessor val$editorView) {
            this.f2394a = val$editorView;
        }

        @Override
        public boolean onActionItemClicked(ActionMode mode, MenuItem item) {
            return false;
        }

        @Override
        public boolean onCreateActionMode(ActionMode mode, Menu menu) {
            menu.clear();
            this.f2394a.post(new RunnableC0077a());
            return true;
        }

        @Override
        public void onDestroyActionMode(ActionMode mode) {
        }

        @Override
        public boolean onPrepareActionMode(ActionMode mode, Menu menu) {
            menu.clear();
            return true;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override
        public void run() {
            c.this.Z();
        }
    }

    public class ViewTreeObserverOnScrollChangedListenerC0078c implements ViewTreeObserver.OnScrollChangedListener {
        public ViewTreeObserverOnScrollChangedListenerC0078c() {
        }

        @Override
        public void onScrollChanged() {
            c.this.a0();
        }
    }

    public class d implements M7.n {
        public d() {
        }

        @Override
        public void a(View v10, Context context, M7.m tbButton) {
            String str;
            TextProcessor editorView = c.this.getEditorView();
            int selectionStart = editorView.getSelectionStart();
            int selectionEnd = editorView.getSelectionEnd();
            if (selectionStart > selectionEnd) {
                selectionEnd = selectionStart;
                selectionStart = selectionEnd;
            }
            if (selectionStart < 0 || selectionEnd <= selectionStart) {
                Toast.makeText(context, "No text selected", 0).show();
                return;
            }
            String substring = editorView.getText().toString().substring(selectionStart, selectionEnd);
            if (substring.length() > 20) {
                str = substring.substring(0, 19) + "...";
            } else {
                str = substring;
            }
            Toast.makeText(context, "Copied: " + str, 0).show();
            C2630i.s(substring);
        }
    }

    public class e implements M7.n {
        public e() {
        }

        @Override
        public void a(View v10, Context context, M7.m tbButton) {
            String str;
            TextProcessor editorView = c.this.getEditorView();
            int selectionStart = editorView.getSelectionStart();
            int selectionEnd = editorView.getSelectionEnd();
            if (selectionStart > selectionEnd) {
                selectionEnd = selectionStart;
                selectionStart = selectionEnd;
            }
            if (selectionStart < 0 || selectionEnd <= selectionStart) {
                Toast.makeText(context, "No text selected", 0).show();
                return;
            }
            String obj = editorView.getText().toString();
            String substring = obj.substring(selectionStart, selectionEnd);
            if (substring.length() > 20) {
                str = substring.substring(0, 19) + "...";
            } else {
                str = substring;
            }
            Toast.makeText(context, "Cropped: " + str, 0).show();
            C2630i.s(substring);
            c.this.setText(obj.substring(0, selectionStart) + obj.substring(selectionEnd));
            editorView.setSelection(selectionStart);
        }
    }

    public class f implements M7.d {
        public f() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            TextProcessor editorView = c.this.getEditorView();
            int selectionStart = editorView.getSelectionStart();
            int selectionEnd = editorView.getSelectionEnd();
            if (selectionEnd > selectionStart) {
                editorView.setSelection(selectionStart, selectionEnd - 1);
            } else if (selectionStart > 0) {
                editorView.setSelection(selectionStart - 1, selectionEnd - 1);
            }
        }
    }

    public class g implements M7.d {
        public g() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            TextProcessor editorView = c.this.getEditorView();
            String obj = editorView.getText().toString();
            int selectionStart = editorView.getSelectionStart();
            int selectionEnd = editorView.getSelectionEnd();
            if (selectionEnd < obj.length() - 1) {
                editorView.setSelection(selectionStart, selectionEnd + 1);
            }
        }
    }

    public class h implements M7.n {
        public h() {
        }

        @Override
        public void a(View v10, Context context, M7.m tbButton) {
            TextProcessor editorView = c.this.getEditorView();
            String obj = editorView.getText().toString();
            if (obj.isEmpty()) {
                Toast.makeText(context, "No text selected", 0).show();
            } else {
                editorView.setSelection(0, obj.length());
            }
        }
    }

    public class i implements M7.n {
        public i() {
        }

        @Override
        public void a(View v10, Context context, M7.m tbButton) {
            String e10 = C2630i.e();
            if (e10 == null || e10.isEmpty()) {
                N7.c.v0("No copied text");
                return;
            }
            TextProcessor editorView = c.this.getEditorView();
            int selectionStart = editorView.getSelectionStart();
            String obj = editorView.getText().toString();
            c.this.setText(obj.substring(0, selectionStart) + e10 + obj.substring(selectionStart));
            editorView.setSelection(selectionStart);
        }
    }

    public class j implements RequestLineTips {
        public j() {
        }

        @Override
        public RequestLineTips.Type getTypeForLine(int line, boolean isLatest) {
            try {
                if (c.this.S() != null) {
                    boolean z10 = false;
                    for (d8.e eVar : c.this.S().f72514d) {
                        if (!isLatest) {
                            if (line <= 1) {
                                if (eVar.d()) {
                                    return RequestLineTips.Type.Error;
                                }
                            } else if (eVar.f84383c != line - 1) {
                                continue;
                            } else if (eVar.d()) {
                                return RequestLineTips.Type.Error;
                            }
                            z10 = true;
                        } else if (eVar.f84383c < line - 1) {
                            continue;
                        } else {
                            if (eVar.d()) {
                                return RequestLineTips.Type.Error;
                            }
                            z10 = true;
                        }
                    }
                    if (z10) {
                        return RequestLineTips.Type.Alert;
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return RequestLineTips.Type.None;
        }

        @Override
        public void showLineTips(int line, int x10, int y10, boolean isLatest) {
            try {
                c.this.e0(line, x10, y10, isLatest);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class k implements Runnable {

        public final String f2406b;

        public final String f2407c;

        public final Context f2408d;

        public final JavaMetaInfo f2409e;

        public k(final String val$filePath, final String val$txt, final Context val$context, final JavaMetaInfo val$jmt) {
            this.f2406b = val$filePath;
            this.f2407c = val$txt;
            this.f2408d = val$context;
            this.f2409e = val$jmt;
        }

        @Override
        public void run() {
            X7.a.b(this.f2406b, this.f2407c, this.f2408d);
            JavaMetaInfo javaMetaInfo = this.f2409e;
            if (javaMetaInfo != null) {
                d8.j.r0(javaMetaInfo);
            }
            Lb.k.v();
        }
    }

    public class l implements o8.f {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                c.this.d0();
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override
            public void run() {
                c.this.d0();
            }
        }

        public l() {
        }

        @Override
        public void a() {
            try {
                N7.c.j0(new a());
            } catch (Error | Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override
        public void b() {
            try {
                N7.c.j0(new b());
            } catch (Error | Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class m implements M7.d {
        public m() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            c.this.Y(true);
        }
    }

    public class n implements F6.b {

        public class a implements Runnable {

            public final int f2416b;

            public a(final int val$line) {
                this.f2416b = val$line;
            }

            @Override
            public void run() {
                c.this.addError(this.f2416b);
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override
            public void run() {
                c.this.removeAllErrors();
            }
        }

        public class RunnableC0079c implements Runnable {

            public final int f2419b;

            public RunnableC0079c(final int val$line) {
                this.f2419b = val$line;
            }

            @Override
            public void run() {
                c.this.removeErrors(this.f2419b);
            }
        }

        public n() {
        }

        @Override
        public void a(int line) {
            if (N7.c.o() != null) {
                N7.c.o().runOnUiThread(new RunnableC0079c(line));
            }
        }

        @Override
        public void b(int line) {
            if (N7.c.o() != null) {
                N7.c.o().runOnUiThread(new a(line));
            }
        }

        @Override
        public Vector2 c() {
            return c.this.getScreenPositionOfCursor();
        }

        @Override
        public EditText d() {
            return c.this.getEditorView();
        }

        @Override
        public void e() {
            if (N7.c.o() != null) {
                N7.c.o().runOnUiThread(new b());
            }
        }

        @Override
        public JavaMetaInfo f() {
            return c.this.S();
        }

        @Override
        public int g() {
            return c.this.getCursorPosition();
        }

        @Override
        public String getClassName() {
            return c.this.f2379d;
        }

        @Override
        public String getCode() {
            return c.this.getText();
        }
    }

    public class o implements TextWatcher {
        public o() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            if (c.this.isTypingTemporarilyBlockedPublic()) {
                c.this.isProgrammaticTextChangeAllowedPublic();
            }
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int start, int before, int count) {
            if (!c.this.isTypingTemporarilyBlockedPublic() || c.this.isProgrammaticTextChangeAllowedPublic()) {
                c.this.f2387l = charSequence == null ? "" : charSequence.toString();
                c cVar = c.this;
                cVar.f2388m = cVar.getCursorPosition();
                TextProcessor editorView = c.this.getEditorView();
                if (editorView != null) {
                    int selectionStart = editorView.getSelectionStart();
                    int selectionEnd = editorView.getSelectionEnd();
                    c.this.f2389n = Math.max(0, selectionStart);
                    c.this.f2390o = Math.max(0, selectionEnd);
                    return;
                }
                c cVar2 = c.this;
                cVar2.f2389n = cVar2.f2388m;
                c cVar3 = c.this;
                cVar3.f2390o = cVar3.f2388m;
            }
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int start, int before, int count) {
            int i10;
            if (c.this.f2385j || !c.this.isTypingTemporarilyBlockedPublic() || c.this.isProgrammaticTextChangeAllowedPublic()) {
                c.this.f2384i = before > count;
                if (before != 0 || charSequence.length() <= (i10 = start + before)) {
                    return;
                }
                String str = "" + charSequence.charAt(i10);
                if (EditorSettings.a().recompileWhenFinishTyping) {
                    if (str.contains(";")) {
                        c.this.Y(true);
                    } else if (str.contains("{")) {
                        c.this.Y(true);
                    } else if (str.contains(VectorFormat.DEFAULT_SUFFIX)) {
                        c.this.Y(true);
                    } else if (str.contains("\n")) {
                        c.this.Y(true);
                    } else if (!str.contains(".")) {
                        str.contains("(");
                    }
                }
                if (EditorSettings.a().allowAutomaticFormatter && str.contains(VectorFormat.DEFAULT_SUFFIX)) {
                    c.this.R();
                }
            }
        }
    }

    public class p extends Thread {
        public p() {
        }

        @Override
        public void run() {
            c cVar = c.this;
            cVar.saveScript(cVar.context);
        }
    }

    public class q implements Runnable {

        public final boolean f2423b;

        public q(final boolean val$save) {
            this.f2423b = val$save;
        }

        @Override
        public void run() {
            boolean z10;
            JavaMetaInfo S10;
            if (this.f2423b) {
                c cVar = c.this;
                z10 = cVar.saveScript(cVar.context);
            } else {
                z10 = false;
            }
            if ((z10 || !this.f2423b) && (S10 = c.this.S()) != null) {
                d8.j jVar = W7.b.f27310j;
                d8.j.r0(S10);
            }
        }
    }

    public class r implements F6.b {

        public class a implements Runnable {

            public final int f2426b;

            public a(final int val$line) {
                this.f2426b = val$line;
            }

            @Override
            public void run() {
                c.this.addError(this.f2426b);
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override
            public void run() {
                c.this.removeAllErrors();
            }
        }

        public class RunnableC0080c implements Runnable {

            public final int f2429b;

            public RunnableC0080c(final int val$line) {
                this.f2429b = val$line;
            }

            @Override
            public void run() {
                c.this.removeErrors(this.f2429b);
            }
        }

        public r() {
        }

        @Override
        public void a(int line) {
            if (N7.c.o() != null) {
                N7.c.j0(new RunnableC0080c(line));
            }
        }

        @Override
        public void b(int line) {
            if (N7.c.o() != null) {
                N7.c.j0(new a(line));
            }
        }

        @Override
        public Vector2 c() {
            return c.this.getScreenPositionOfCursor();
        }

        @Override
        public EditText d() {
            return c.this.getEditorView();
        }

        @Override
        public void e() {
            if (N7.c.o() != null) {
                N7.c.j0(new b());
            }
        }

        @Override
        public JavaMetaInfo f() {
            return c.this.S();
        }

        @Override
        public int g() {
            return c.this.getCursorPosition();
        }

        @Override
        public String getClassName() {
            return c.this.f2379d;
        }

        @Override
        public String getCode() {
            return c.this.getText();
        }
    }

    public class s implements OnTextChangeListener {
        public s() {
        }

        @Override
        public void afterTextChange(View v10, int line, int selectionStart, int selectionEnd, int x10, int y10) {
            if (!c.this.isTypingTemporarilyBlockedPublic() || c.this.isProgrammaticTextChangeAllowedPublic()) {
                String text = c.this.getText();
                String currentLine = c.this.getCurrentLine();
                JavaMetaInfo S10 = c.this.S();
                if (S10 != null) {
                    if (!EditorSettings.a().codeCompletion.c()) {
                        c.this.showSuggestions(null);
                        return;
                    }
                    K6.a aVar = c.this.f2391p;
                    int cursorPosition = c.this.getCursorPosition();
                    List<d8.r> list = S10.f72526p;
                    c cVar = c.this;
                    aVar.w(text, currentLine, line, cursorPosition, list, cVar, cVar.S().f72515e, c.this.f2384i);
                }
            }
        }
    }

    public class t extends EditorPlugin {
        public t(String pluginId) {
            super(pluginId);
        }

        @Override
        public void onScrollChanged(int horiz, int vert, int oldHoriz, int oldVert) {
            c.this.a0();
        }

        @Override
        public void onSelectionChanged(int selStart, int selEnd) {
            if (!c.this.isTypingTemporarilyBlockedPublic() || c.this.isProgrammaticTextChangeAllowedPublic() || c.this.f2386k) {
                c.this.a0();
                return;
            }
            c.this.f2386k = true;
            try {
                TextProcessor editorView = c.this.getEditorView();
                if (editorView != null) {
                    int length = editorView.getText() != null ? editorView.getText().length() : 0;
                    int typingBlockedSelectionStartPublic = c.this.getTypingBlockedSelectionStartPublic() >= 0 ? c.this.getTypingBlockedSelectionStartPublic() : c.this.f2389n;
                    int typingBlockedSelectionEndPublic = c.this.getTypingBlockedSelectionEndPublic() >= 0 ? c.this.getTypingBlockedSelectionEndPublic() : c.this.f2390o;
                    int max = Math.max(0, Math.min(typingBlockedSelectionStartPublic, length));
                    int max2 = Math.max(0, Math.min(typingBlockedSelectionEndPublic, length));
                    if (max != selStart || max2 != selEnd) {
                        editorView.setSelection(max, max2);
                    }
                } else {
                    c cVar = c.this;
                    cVar.setCursorPosition(Math.min(cVar.f2388m, c.this.f2387l.length()));
                }
                c.this.f2386k = false;
            } catch (Throwable th2) {
                c.this.f2386k = false;
                throw th2;
            }
        }
    }

    private void X() {
        String text = getText();
        setLanguage(new C6.d(new r()));
        setDefaultConfigs();
        b0();
        c0();
        setText(text);
        setOnTextChangeListener(new s());
    }

    private void b0() {
        setRequestLineTips(new j());
    }

    public final void K(final TextProcessor editorView) {
        if (editorView == null) {
            return;
        }
        if (this.f2383h == null) {
            this.f2383h = new ViewTreeObserverOnScrollChangedListenerC0078c();
        }
        ViewTreeObserver viewTreeObserver = editorView.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnScrollChangedListener(this.f2383h);
            viewTreeObserver.addOnScrollChangedListener(this.f2383h);
        }
    }

    public final String L(String line) {
        int P10;
        char charAt;
        int i10 = 0;
        while (i10 < line.length() && ((charAt = line.charAt(i10)) == ' ' || charAt == '\t')) {
            i10++;
        }
        if (i10 >= line.length() || line.charAt(i10) != '@' || U(line, i10) || (P10 = P(line, i10)) <= i10) {
            return line;
        }
        int i11 = P10;
        while (i11 < line.length() && Character.isWhitespace(line.charAt(i11))) {
            i11++;
        }
        if (i11 == P10 || i11 >= line.length()) {
            return line;
        }
        String substring = line.substring(i11);
        if (substring.startsWith("@")) {
            return line;
        }
        String substring2 = line.substring(0, i10);
        return line.substring(0, P10) + "\n" + substring2 + substring;
    }

    public final String M(String source) {
        String[] split = source.split("\n", -1);
        StringBuilder sb2 = new StringBuilder(source.length());
        for (int i10 = 0; i10 < split.length; i10++) {
            if (i10 > 0) {
                sb2.append("\n");
            }
            sb2.append(L(split[i10]));
        }
        return sb2.toString();
    }

    public final void N(TextProcessor editorView) {
        if (editorView == null || this.f2383h == null) {
            return;
        }
        ViewTreeObserver viewTreeObserver = editorView.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnScrollChangedListener(this.f2383h);
        }
    }

    public final void O() {
        PopupWindow popupWindow = this.f2381f;
        if (popupWindow != null) {
            if (popupWindow.isShowing()) {
                this.f2381f.dismiss();
            }
            this.f2381f = null;
        }
    }

    public final int P(String line, int annotationStart) {
        int i10;
        int i11 = annotationStart + 1;
        if (i11 >= line.length() || !Character.isJavaIdentifierStart(line.charAt(i11))) {
            return -1;
        }
        while (i11 < line.length()) {
            char charAt = line.charAt(i11);
            if (!Character.isJavaIdentifierPart(charAt)) {
                if (charAt != '.' || (i10 = i11 + 1) >= line.length() || !Character.isJavaIdentifierStart(line.charAt(i10))) {
                    break;
                }
                i11 += 2;
            } else {
                i11++;
            }
        }
        return (i11 >= line.length() || line.charAt(i11) != '(') ? i11 : Q(line, i11);
    }

    public final int Q(String line, int openIndex) {
        char c10 = 0;
        boolean z10 = false;
        int i10 = 0;
        while (openIndex < line.length()) {
            char charAt = line.charAt(openIndex);
            if (c10 != 0) {
                if (z10) {
                    z10 = false;
                } else if (charAt == '\\') {
                    z10 = true;
                } else if (charAt == c10) {
                    c10 = 0;
                }
            } else if (charAt == '\"' || charAt == '\'') {
                c10 = charAt;
            } else if (charAt == '(') {
                i10++;
            } else if (charAt == ')' && i10 - 1 == 0) {
                return openIndex + 1;
            }
            openIndex++;
        }
        return -1;
    }

    public final void R() {
        String str = "";
        try {
            int cursorPosition = getCursorPosition();
            String text = getText();
            try {
                String str2 = text.substring(0, cursorPosition) + "/*~@@_-CURSOR-_@@~*/" + text.substring(cursorPosition);
                try {
                    boolean z10 = true;
                    String w10 = Tc.b.w(this.f2379d, true);
                    if (!str2.contains(ExternalAnnotationProvider.CLASS_PREFIX + w10 + "")) {
                        if (!str2.contains("interface " + w10 + "")) {
                            z10 = false;
                        }
                    }
                    if (!z10) {
                        str2 = "public class REFACTOR{\n" + str2 + "\n}";
                    }
                    str2 = str2.replace("import ", "// @IMPORT@// ");
                    String formatSource = new Formatter().formatSource(str2);
                    if (!z10) {
                        String substring = formatSource.substring(23);
                        String[] split = substring.substring(0, substring.length() - 2).split("\n");
                        int i10 = 0;
                        String str3 = "";
                        for (int i11 = 0; i11 < split.length; i11++) {
                            String str4 = split[i11];
                            if (i11 >= 2 || !str4.trim().isEmpty()) {
                                if (str4.startsWith(" ")) {
                                    str4 = str4.substring(2);
                                }
                                if (i10 > 0) {
                                    str3 = str3 + "\n";
                                }
                                str3 = str3 + str4;
                                i10++;
                            }
                        }
                        formatSource = str3;
                    }
                    String M10 = M(formatSource.replace("// @IMPORT@// ", "import "));
                    int indexOf = M10.indexOf("/*~@@_-CURSOR-_@@~*/");
                    setText(M10.replace("/*~@@_-CURSOR-_@@~*/", ""));
                    setCursorPosition(indexOf);
                } catch (Error e10) {
                    e = e10;
                    str = str2;
                    System.out.println("FAILED CODE:\n" + str);
                    e.printStackTrace();
                } catch (Exception e11) {
                    e = e11;
                    str = str2;
                    System.out.println("FAILED CODE:\n" + str);
                    e.printStackTrace();
                }
            } catch (Error | Exception e12) {
                e = e12;
                str = text;
            }
        } catch (Error e13) {
            e = e13;
        } catch (Exception e14) {
            e = e14;
        }
    }

    public JavaMetaInfo S() {
        String str;
        JavaMetaInfo javaMetaInfo = this.f2377b;
        if (javaMetaInfo != null && !javaMetaInfo.f72511a.equals(this.f2376a)) {
            this.f2377b = null;
        }
        if (this.f2377b == null && (str = this.f2379d) != null && !str.isEmpty()) {
            JavaMetaInfo J10 = d8.j.J(this.f2379d);
            this.f2377b = J10;
            if (J10 != null) {
                J10.f72521k = new l();
            } else {
                System.out.println("Failed to find JavaMetaInfo");
            }
        }
        return this.f2377b;
    }

    public final void T(Context context, List<M7.g> elements) {
        elements.add(new M7.m(R.drawable.copy, "Copy", new d(), context));
        elements.add(new M7.m(R.drawable.scissors, "Cut", new e(), context));
        elements.add(new M7.k(Nc.b.l0(2.0f, context)));
        f fVar = new f();
        c.b bVar = c.b.Disconnected;
        elements.add(new M7.c(R.drawable.select_left, fVar, bVar, context).m0(Nc.b.k0(24.0f)));
        elements.add(new M7.c(R.drawable.select_rigth, new g(), bVar, context).m0(Nc.b.k0(24.0f)));
        elements.add(new M7.m(R.drawable.select_all, "Select all", new h(), context));
        elements.add(new M7.k(Nc.b.l0(2.0f, context)));
        elements.add(new M7.m(R.drawable.paste_text, new i(), context));
    }

    public final boolean U(String line, int annotationStart) {
        int i10 = annotationStart + 10;
        if (i10 > line.length() || !line.startsWith("@interface", annotationStart)) {
            return false;
        }
        return i10 == line.length() || !Character.isJavaIdentifierPart(line.charAt(i10));
    }

    public void V(String file) {
        init();
        unload();
        this.f2379d = Tc.b.w(file, true);
        d8.j jVar = W7.b.f27310j;
        if (!d8.j.f84393B) {
            unload();
            this.upperCommunication.a(c.l.MissingJava);
            return;
        }
        String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(this.context) + "/" + file;
        this.f2376a = file;
        if (str.startsWith("/")) {
            str = str.substring(1);
        }
        File file2 = new File(str.replace("//", "/"));
        if (file2.exists()) {
            this.f2378c = C2636o.g(file2);
        }
        W();
    }

    public final void W() {
        JavaMetaInfo javaMetaInfo = this.f2377b;
        if (javaMetaInfo != null) {
            javaMetaInfo.f72521k = null;
        }
        this.f2377b = null;
        setText(this.f2378c);
        d0();
        if (EditorSettings.a().recompileWhenOpenScript) {
            Y(false);
        }
        setLanguage(new C6.d(new n()));
        b0();
        if (this.f2380e == null) {
            o oVar = new o();
            this.f2380e = oVar;
            addTextWatcher(oVar);
        }
    }

    public final void Y(boolean save) {
        if (!d8.j.W()) {
            if (this.f2376a != null) {
                new Thread(new q(save)).start();
                return;
            } else {
                Vc.g.a();
                return;
            }
        }
        if (save) {
            p pVar = new p();
            pVar.setPriority(1);
            pVar.start();
        }
    }

    public final void Z() {
        TextProcessor editorView = getEditorView();
        if (editorView == null) {
            return;
        }
        int selectionStart = editorView.getSelectionStart();
        int selectionEnd = editorView.getSelectionEnd();
        if (selectionStart < 0 || selectionEnd < 0 || selectionStart == selectionEnd) {
            O();
            return;
        }
        PopupWindow popupWindow = this.f2381f;
        if (popupWindow == null || !popupWindow.isShowing()) {
            f0();
        } else {
            g0();
        }
    }

    public final void a0() {
        TextProcessor editorView = getEditorView();
        if (editorView == null) {
            return;
        }
        editorView.post(new b());
    }

    public final void c0() {
        TextProcessor editorView = getEditorView();
        if (editorView == null) {
            return;
        }
        if (this.f2382g == null) {
            t tVar = new t("java-selection-popup");
            this.f2382g = tVar;
            editorView.installPlugin(tVar);
        }
        editorView.setCustomSelectionActionModeCallback(new a(editorView));
    }

    public final void d0() {
        if (S() != null) {
            try {
                if (S().f72514d != null) {
                    for (d8.e eVar : S().f72514d) {
                        if (eVar.d()) {
                            addError(eVar.f84383c + 1);
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public F6.d duplicate() {
        return new c();
    }

    public final void e0(int line, int x10, int y10, boolean isLatest) {
        String str = "";
        try {
            if (isLatest) {
                for (d8.e eVar : S().f72514d) {
                    if (eVar.f84383c >= line - 2) {
                        str = str + eVar.j(true) + "\n";
                    }
                }
            } else if (line <= 1) {
                str = "" + new C3867a("The first line of the script displays all errors and alerts", "A primeira linha do script exibe todos os erros e alertas").toString() + "\n\n";
                Iterator<d8.e> it = S().f72514d.iterator();
                while (it.hasNext()) {
                    str = str + it.next().j(false) + "\n";
                }
            } else {
                for (d8.e eVar2 : S().f72514d) {
                    int i10 = eVar2.f84383c;
                    if (i10 >= line - 2 && i10 <= line) {
                        str = str + eVar2.j(false) + "\n";
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (str.isEmpty()) {
            return;
        }
        J6.a.A1(x10, y10, str, this.f2379d);
    }

    public final void f0() {
        O();
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        linearLayout.setBackgroundColor(Theme.i(Theme.T.BACKGROUND));
        int k02 = Nc.b.k0(4.0f);
        linearLayout.setPadding(k02, k02, k02, k02);
        M7.h hVar = new M7.h(linearLayout, getContext());
        List<M7.g> linkedList = new LinkedList<>();
        T(getContext(), linkedList);
        hVar.g(linkedList);
        PopupWindow popupWindow = new PopupWindow((View) linearLayout, -2, -2, false);
        this.f2381f = popupWindow;
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        this.f2381f.setOutsideTouchable(true);
        this.f2381f.setClippingEnabled(true);
        linearLayout.measure(0, 0);
        View rootView = getEditorView().getRootView();
        h0(linearLayout, rootView);
        this.f2381f.showAtLocation(rootView, 0, this.f2392q, this.f2393r);
        K(getEditorView());
    }

    public final void g0() {
        PopupWindow popupWindow = this.f2381f;
        if (popupWindow == null || !popupWindow.isShowing()) {
            return;
        }
        h0(this.f2381f.getContentView(), getEditorView().getRootView());
        this.f2381f.update(this.f2392q, this.f2393r, -1, -1);
    }

    @Override
    public String getOpenFile() {
        return this.f2376a;
    }

    public final void h0(View content, View rootView) {
        if (content == null || rootView == null) {
            return;
        }
        content.measure(0, 0);
        Vector2 screenPositionOfCursor = getScreenPositionOfCursor();
        if (screenPositionOfCursor == null) {
            this.f2392q = 0;
            this.f2393r = 0;
            return;
        }
        int measuredWidth = content.getMeasuredWidth();
        int measuredHeight = content.getMeasuredHeight();
        int x10 = (int) (screenPositionOfCursor.getX() - (measuredWidth / 2.0f));
        int y10 = (int) ((screenPositionOfCursor.getY() - measuredHeight) - Nc.b.k0(8.0f));
        int[] iArr = new int[2];
        rootView.getLocationOnScreen(iArr);
        this.f2392q = Math.max(0, x10 - iArr[0]);
        this.f2393r = Math.max(0, y10 - iArr[1]);
    }

    @Override
    public boolean hasScript() {
        String str;
        String str2 = this.f2378c;
        return (str2 == null || str2.isEmpty() || (str = this.f2376a) == null || str.isEmpty()) ? false : true;
    }

    @Override
    public void inflateTopBarElements(Context context, List<M7.g> elements) {
        elements.add(new M7.c(R.drawable.save_v2, new m(), c.b.Disconnected, context).m0(Nc.b.k0(24.0f)));
        super.inflateTopBarElements(context, elements);
    }

    @Override
    public void init() {
        super.init();
        X();
        setColorTheme(TextInterface.config.f71851a);
    }

    @Override
    public void onClose(Context context) {
        if (hasScript()) {
            Thread thread = new Thread(new k(this.f2376a, getText(), context, S()));
            thread.setPriority(1);
            thread.start();
        }
        unload();
        super.onClose(context);
    }

    @Override
    public void openScript(C13823b script, Context context) {
        super.openScript(script, context);
        String str = script.f92878a;
        this.f2376a = str;
        V(str);
    }

    @Override
    public void replaceScript(C13823b newScript, Context context) {
        super.replaceScript(newScript, context);
        saveScript(context);
        String str = newScript.f92878a;
        this.f2376a = str;
        V(str);
    }

    @Override
    public boolean saveScript(Context context) {
        super.saveScript(context);
        C2636o.e(getText(), new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + this.f2376a));
        return true;
    }

    @Override
    public void setColorTheme(ColorScheme colorTheme) {
        super.setColorTheme(colorTheme);
        X();
    }

    @Override
    public boolean supportFile(C13823b file) {
        return C2633l.b(file.f(), ".java");
    }

    @Override
    public void unload() {
        super.unload();
        O();
        if (this.f2382g != null) {
            TextProcessor editorView = getEditorView();
            if (editorView != null) {
                N(editorView);
                editorView.uninstallPlugin(this.f2382g.getPluginId());
            }
            this.f2382g = null;
        }
        TextWatcher textWatcher = this.f2380e;
        if (textWatcher != null) {
            removeTextWatcher(textWatcher);
            this.f2380e = null;
        }
        JavaMetaInfo javaMetaInfo = this.f2377b;
        if (javaMetaInfo != null) {
            javaMetaInfo.f72521k = null;
        }
        this.f2377b = null;
        this.f2376a = null;
        this.f2378c = null;
        this.f2379d = null;
    }
}
