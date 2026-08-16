package com.itsmagic.engine.Activities.Editor.Panels.Scripting.Interfaces.SuperClasses;

import Ic.C2630i;
import M6.b;
import M7.c;
import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.text.InputFilter;
import android.text.Layout;
import android.text.Spanned;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.Toast;
import androidx.appcompat.widget.ListPopupWindow;
import androidx.asynclayoutinflater.view.AsyncLayoutInflater;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import ei.C13155a;
import java.lang.constant.ConstantDescs;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Parameter;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import jd.C13823b;
import org.apache.commons.math3.geometry.VectorFormat;
import org.blacksquircle.ui.editorkit.utils.EditorTheme;
import org.blacksquircle.ui.editorkit.utils.OnTextChangeListener;
import org.blacksquircle.ui.editorkit.utils.RequestLineTips;
import org.blacksquircle.ui.editorkit.widget.TextProcessor;
import org.blacksquircle.ui.editorkit.widget.internal.UndoRedoEditText;
import org.blacksquircle.ui.language.base.Language;
import org.blacksquircle.ui.language.base.model.ColorScheme;
import r4.C15147a;
import y6.InterfaceC16149b;
import y6.c;

public class TextInterface implements F6.d {
    public static final int MICRO_SPACE_DP = 2;
    private static final String SNIPPET_CURSOR_MARKER = "/*CURSOR*/";
    public static Config config;
    private M6.d adapter;
    public Context context;
    private int cursorPosition;
    private EditorPanel editorPanel;
    public LayoutInflater layoutInflater;
    private LinearLayout leftBar;
    private TextProcessor mCodeView;
    private View suggestionsPanel;
    private RecyclerView suggestionsRecycler;
    private int toRemoveFrom;
    private int toRemoveTo;
    private LinearLayout topBar;
    public y6.f upperCommunication;
    public View view;
    public ConstraintLayout viewParent;
    private final InputFilter typingBlockFilter = new k();
    private int fontSize = 14;
    private int mNextThemeIndex = 0;
    public String tabStr = C13155a.f85806a;
    public boolean theresChanges = false;
    private boolean flagChange = false;
    public String textToPropagate = "";
    public int propagatePos = 0;
    public int newCursorPosAfterPropagate = 0;
    private boolean removeCurrentLine = false;
    private int refactorDelay = 1500;
    private volatile long typingBlockedUntilMs = 0;
    private volatile boolean allowProgrammaticTextChange = false;
    private volatile int typingBlockedSelectionStart = -1;
    private volatile int typingBlockedSelectionEnd = -1;
    private v3.k repeater = null;
    public ListPopupWindow autoCompletePopup = null;

    public static class Config {

        @Expose
        private String themeName = "getVISUAL_STUDIO_2013";

        @Expose
        private int fontSize = 14;

        public ColorScheme f71851a = EditorTheme.INSTANCE.getVISUAL_STUDIO_2013();

        public int b() {
            return this.fontSize;
        }

        public void c() {
            X7.a.l("textEditor", "configs.config", X7.a.m().toJson(TextInterface.config), N7.c.t());
        }

        public void d(int fontSize) {
            this.fontSize = fontSize;
        }

        public void e(String themeName, ColorScheme colorScheme) {
            boolean equalsIgnoreCase = this.themeName.equalsIgnoreCase(themeName);
            this.f71851a = colorScheme;
            this.themeName = themeName;
            if (equalsIgnoreCase) {
                return;
            }
            c();
        }
    }

    public class a implements M7.d {
        public a() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            TextProcessor textProcessor = TextInterface.this.mCodeView;
            String obj = textProcessor.getText().toString();
            int selectionStart = textProcessor.getSelectionStart();
            int selectionEnd = textProcessor.getSelectionEnd();
            if (selectionEnd < obj.length() - 1) {
                textProcessor.setSelection(selectionStart, selectionEnd + 1);
            }
        }
    }

    public class b implements M7.d {
        public b() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            if (N7.c.D().G0(TextInterface.this.editorPanel)) {
                N7.c.a(TextInterface.this);
            } else {
                N7.c.f0(TextInterface.this);
            }
        }
    }

    public class c implements M7.d {
        public c() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            C2630i.b();
        }
    }

    public class d implements M7.d {
        public d() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            if (TextInterface.this.mCodeView.canUndo()) {
                TextInterface.this.mCodeView.undo();
            } else {
                Toast.makeText(context, "Nothing to undo...", 0).show();
            }
        }
    }

    public class e implements M7.d {
        public e() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            if (TextInterface.this.mCodeView.canRedo()) {
                TextInterface.this.mCodeView.redo();
            } else {
                Toast.makeText(context, "Nothing to redo...", 0).show();
            }
        }
    }

    public class f implements UndoRedoEditText.OnUndoRedoChangedListener {

        public final M7.c f71857a;

        public final M7.c f71858b;

        public f(final M7.c val$undo, final M7.c val$redo) {
            this.f71857a = val$undo;
            this.f71858b = val$redo;
        }

        @Override
        public void onUndoRedoChanged() {
            this.f71857a.o(TextInterface.this.mCodeView.canUndo());
            this.f71858b.o(TextInterface.this.mCodeView.canRedo());
        }
    }

    public class g implements Runnable {

        public final List f71860b;

        public g(final List val$suggestions) {
            this.f71860b = val$suggestions;
        }

        @Override
        public void run() {
            TextInterface.this.suggestionsPanel.setVisibility(0);
            TextInterface.this.adapter.j();
            TextInterface.this.adapter.i(this.f71860b);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override
        public void run() {
            TextInterface.this.suggestionsPanel.setVisibility(8);
            TextInterface.this.adapter.j();
        }
    }

    public class i implements Runnable {

        public final M6.b f71863b;

        public i(final M6.b val$suggestion) {
            this.f71863b = val$suggestion;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void run() {
            String sb2;
            int length;
            int i10;
            String a10;
            String str;
            b.a aVar = this.f71863b.f14583q;
            String str2 = aVar.f14584a;
            String str3 = aVar.f14585b;
            if (str3 == null) {
                str3 = "";
            }
            String d10 = K6.h.d(str2);
            int b10 = TextInterface.this.b();
            if (b10 < 0) {
                b10 = this.f71863b.f14583q.f14586c;
            }
            Object[] objArr = (!EditorSettings.a().codeCompletion.e() || (str = this.f71863b.f14581o) == null || str.isEmpty()) ? false : true;
            if (TextInterface.this.m(this.f71863b) && (a10 = TextInterface.this.a(str2, str3, this.f71863b)) != null) {
                int c10 = TextInterface.this.c(TextInterface.this.mCodeView.getText().toString(), b10);
                TextInterface.this.replaceLine(a10.replace("/*CURSOR*/", ""), b10);
                int indexOf = a10.indexOf("/*CURSOR*/");
                if (indexOf < 0) {
                    indexOf = a10.length();
                }
                TextInterface.this.setCursorPosition(c10 + indexOf);
                return;
            }
            boolean endsWith = str2.endsWith("(");
            Object[] objArr2 = !endsWith && TextInterface.this.n(str3);
            Object[] objArr3 = objArr2 == true && TextInterface.this.d(str3);
            if (endsWith) {
                M6.b bVar = this.f71863b;
                if (bVar.f14572f && bVar.f14568b != null) {
                    String substring = str2.substring(0, str2.length() - 1);
                    int b11 = K6.h.b(substring);
                    if (b11 >= 0) {
                        substring = substring.substring(0, b11);
                    }
                    String str4 = substring + this.f71863b.f14568b;
                    if (objArr3 == true) {
                        sb2 = str4 + str3;
                        length = substring.length();
                        i10 = this.f71863b.f14568b.length();
                    } else if (objArr == true) {
                        String str5 = this.f71863b.f14581o;
                        boolean startsWith = str3.startsWith(")");
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(str4);
                        sb3.append("(");
                        sb3.append(str5);
                        sb3.append(startsWith ? "" : ")");
                        sb3.append(str3);
                        sb2 = sb3.toString();
                        length = substring.length() + this.f71863b.f14568b.length() + 1 + str5.length();
                        i10 = !startsWith ? 1 : 0;
                    } else {
                        boolean startsWith2 = str3.startsWith(")");
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append(str4);
                        sb4.append("(");
                        sb4.append(startsWith2 ? "" : ")");
                        sb4.append(str3);
                        sb2 = sb4.toString();
                        length = substring.length() + this.f71863b.f14568b.length() + 1;
                        i10 = !startsWith2 ? 1 : 0;
                    }
                    int i11 = length + i10;
                    TextInterface.this.replaceLine(sb2, b10);
                    TextInterface.this.setCursorPosition(i11);
                    return;
                }
            }
            if (d10.equals(".")) {
                M6.b bVar2 = this.f71863b;
                int length2 = bVar2.f14583q.f14587d + bVar2.f14568b.length();
                String str6 = str2 + this.f71863b.f14568b;
                M6.b bVar3 = this.f71863b;
                if (bVar3.f14572f) {
                    if (objArr2 == true || objArr3 == true) {
                        str6 = str6 + str3;
                    } else if (objArr == true) {
                        String str7 = bVar3.f14581o;
                        str6 = str6 + "(" + str7 + ")";
                        length2 += str7.length() + 2;
                    } else {
                        str6 = str6 + "()";
                        length2 += 2;
                    }
                }
                if (!this.f71863b.f14572f || (objArr2 == false && objArr3 == false)) {
                    str6 = str6 + str3;
                }
                TextInterface.this.replaceLine(str6, b10);
                TextInterface.this.setCursorPosition(length2);
                return;
            }
            M6.b bVar4 = this.f71863b;
            int length3 = bVar4.f14583q.f14587d + (bVar4.f14568b.length() - d10.length());
            String str8 = str2.substring(0, str2.length() - d10.length()) + this.f71863b.f14568b;
            M6.b bVar5 = this.f71863b;
            if (bVar5.f14572f) {
                if (objArr2 == true || objArr3 == true) {
                    str8 = str8 + str3;
                } else if (objArr == true) {
                    String str9 = bVar5.f14581o;
                    str8 = str8 + "(" + str9 + ")";
                    length3 += str9.length() + 2;
                } else {
                    str8 = str8 + "()";
                    length3 += 2;
                }
            }
            if (!this.f71863b.f14572f || (objArr2 == false && objArr3 == false)) {
                str8 = str8 + str3;
            }
            TextInterface.this.replaceLine(str8, b10);
            TextInterface.this.setCursorPosition(length3);
        }
    }

    public class j implements TextProcessor.OnTextSizeChangedListener {
        public j() {
        }

        @Override
        public void onChanged(float ns) {
            Config config = TextInterface.config;
            if (config != null) {
                config.d((int) ns);
                TextInterface.config.c();
            }
        }
    }

    public class k implements InputFilter {
        public k() {
        }

        @Override
        public CharSequence filter(CharSequence source, int start, int end, Spanned dest, int dstart, int dend) {
            if (!TextInterface.this.i() || TextInterface.this.h()) {
                return null;
            }
            return "";
        }
    }

    public class l implements AdapterView.OnItemClickListener {

        public final List f71867b;

        public final String f71868c;

        public l(final List val$options, final String val$typedWord) {
            this.f71867b = val$options;
            this.f71868c = val$typedWord;
        }

        public final String a(H6.j option, String textProp) {
            StringBuilder sb2 = new StringBuilder();
            int i10 = 0;
            while (true) {
                Class[] clsArr = option.f8261e;
                if (i10 >= clsArr.length) {
                    break;
                }
                Class cls = clsArr[i10];
                if (!cls.isInterface()) {
                    sb2.append(cls.getSimpleName());
                } else if (Collection.class.isAssignableFrom(cls) || Collection.class == cls || List.class.isAssignableFrom(cls) || List.class == cls || LinkedList.class.isAssignableFrom(cls) || LinkedList.class == cls || SteppedArrayList.class.isAssignableFrom(cls) || SteppedArrayList.class == cls) {
                    sb2.append(cls.getSimpleName());
                } else {
                    c(sb2, cls);
                }
                if (i10 < option.f8261e.length - 1) {
                    sb2.append(", ");
                }
                i10++;
            }
            String str = textProp + option.f8257a + "(" + sb2.toString() + ")";
            if (!option.f8258b.equals(Void.TYPE)) {
                return str;
            }
            return str + ";";
        }

        public final String b(H6.j option, String textProp) {
            if (option.f8264h.isInterface()) {
                StringBuilder sb2 = new StringBuilder();
                d(sb2, option.f8264h);
                return textProp + sb2.toString() + ")";
            }
            StringBuilder sb3 = new StringBuilder();
            int i10 = 0;
            while (true) {
                Class[] clsArr = option.f8261e;
                if (i10 >= clsArr.length) {
                    return textProp + sb3.toString() + ")";
                }
                Class cls = clsArr[i10];
                if (!cls.isInterface()) {
                    sb3.append(cls.getSimpleName());
                } else if (Collection.class.isAssignableFrom(cls) || Collection.class == cls || List.class.isAssignableFrom(cls) || List.class == cls || LinkedList.class.isAssignableFrom(cls) || LinkedList.class == cls || SteppedArrayList.class.isAssignableFrom(cls) || SteppedArrayList.class == cls) {
                    sb3.append(cls.getSimpleName());
                } else {
                    c(sb3, cls);
                }
                if (i10 < option.f8261e.length - 1) {
                    sb3.append(", ");
                }
                i10++;
            }
        }

        public final void c(StringBuilder args, Class arg) {
            String tabInLine = TextInterface.this.getTabInLine(TextInterface.this.getCurrentLine());
            args.append("new ");
            args.append(arg.getSimpleName());
            args.append("() {\n");
            for (Method method : arg.getDeclaredMethods()) {
                args.append(tabInLine);
                args.append("    @Override");
                args.append("\n");
                args.append(tabInLine);
                args.append("    public ");
                if (method.getReturnType().equals(Void.TYPE)) {
                    args.append("void");
                } else {
                    args.append(method.getReturnType().getSimpleName());
                }
                args.append(" ");
                args.append(method.getName());
                args.append("(");
                Class<?>[] parameterTypes = method.getParameterTypes();
                for (int i10 = 0; i10 < parameterTypes.length; i10++) {
                    args.append(parameterTypes[i10].getSimpleName());
                    if (i10 < parameterTypes.length - 1) {
                        args.append(", ");
                    }
                }
                args.append(") {\n");
                args.append(tabInLine);
                args.append("        ");
                if (!method.getReturnType().equals(Void.TYPE)) {
                    args.append("return null;");
                }
                args.append("\n");
                args.append(tabInLine);
                args.append("    }");
                args.append("\n");
            }
            args.append(tabInLine);
            args.append(VectorFormat.DEFAULT_SUFFIX);
        }

        public final void d(StringBuilder args, Class arg) {
            String tabInLine = TextInterface.this.getTabInLine(TextInterface.this.getCurrentLine());
            args.append(") {\n");
            for (Method method : arg.getDeclaredMethods()) {
                args.append(tabInLine);
                args.append("    @Override");
                args.append("\n");
                args.append(tabInLine);
                args.append("    public ");
                if (method.getReturnType().equals(Void.TYPE)) {
                    args.append("void");
                } else {
                    args.append(method.getReturnType().getSimpleName());
                }
                args.append(" ");
                args.append(method.getName());
                args.append("(");
                Class<?>[] parameterTypes = method.getParameterTypes();
                for (int i10 = 0; i10 < parameterTypes.length; i10++) {
                    args.append(parameterTypes[i10].getSimpleName());
                    if (i10 < parameterTypes.length - 1) {
                        args.append(", ");
                    }
                }
                args.append(") {\n");
                args.append(tabInLine);
                args.append("        ");
                if (!method.getReturnType().equals(Void.TYPE)) {
                    args.append("return null;");
                }
                args.append("\n");
                args.append(tabInLine);
                args.append("    }");
                args.append("\n");
            }
            args.append(tabInLine);
            args.append(VectorFormat.DEFAULT_SUFFIX);
        }

        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
            String a10;
            TextInterface.this.autoCompletePopup.dismiss();
            try {
                H6.j jVar = (H6.j) this.f71867b.get(position);
                if (jVar.f8263g) {
                    a10 = b(jVar, "");
                } else if (!jVar.f8259c) {
                    a10 = "" + jVar.f8257a;
                } else if (jVar.f8260d == 0) {
                    String str = "" + jVar.f8257a + "()";
                    if (jVar.f8258b.equals(Void.TYPE)) {
                        a10 = str + ";";
                    } else {
                        a10 = str;
                    }
                } else {
                    a10 = a(jVar, "");
                }
                if (this.f71868c.isEmpty()) {
                    StringBuilder sb2 = new StringBuilder();
                    TextInterface textInterface = TextInterface.this;
                    sb2.append(textInterface.textToPropagate);
                    sb2.append(a10);
                    textInterface.textToPropagate = sb2.toString();
                } else {
                    StringBuilder sb3 = new StringBuilder();
                    TextInterface textInterface2 = TextInterface.this;
                    sb3.append(textInterface2.textToPropagate);
                    sb3.append(a10.substring(a10.indexOf(this.f71868c) + this.f71868c.length()));
                    textInterface2.textToPropagate = sb3.toString();
                }
                TextInterface.this.flagChange = false;
                TextInterface textInterface3 = TextInterface.this;
                textInterface3.propagatePos = textInterface3.mCodeView.getSelectionStart();
                TextInterface textInterface4 = TextInterface.this;
                textInterface4.newCursorPosAfterPropagate = textInterface4.propagatePos + textInterface4.textToPropagate.length();
                TextInterface.this.refactor();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class m implements Runnable {

        public final int f71870b;

        public final String f71871c;

        public m(final int val$lineNumber, final String val$newLineText) {
            this.f71870b = val$lineNumber;
            this.f71871c = val$newLineText;
        }

        @Override
        public void run() {
            String[] split = TextInterface.this.mCodeView.getText().toString().split("\n");
            int length = split.length;
            int i10 = this.f71870b;
            if (length <= i10) {
                return;
            }
            split[i10] = this.f71871c;
            StringBuilder sb2 = new StringBuilder();
            for (int i11 = 0; i11 < split.length; i11++) {
                String str = split[i11];
                if (i11 > 0) {
                    sb2.append("\n");
                }
                sb2.append(str);
            }
            TextInterface.this.setText(sb2.toString());
        }
    }

    public class n implements Runnable {

        public final String[] f71873b;

        public final Semaphore f71874c;

        public n(final String[] val$text, final Semaphore val$semaphore) {
            this.f71873b = val$text;
            this.f71874c = val$semaphore;
        }

        @Override
        public void run() {
            this.f71873b[0] = TextInterface.this.mCodeView.getText().toString();
            this.f71874c.release();
        }
    }

    public class o implements Runnable {

        public final String f71876b;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                TextProcessor textProcessor = TextInterface.this.mCodeView;
                o oVar = o.this;
                textProcessor.setTextContent(TextInterface.this.removeInvisibleChars(oVar.f71876b));
            }
        }

        public o(final String val$txt) {
            this.f71876b = val$txt;
        }

        @Override
        public void run() {
            TextInterface.this.k(new a());
        }
    }

    public class p implements Runnable {

        public final String f71879b;

        public p(final String val$txt) {
            this.f71879b = val$txt;
        }

        @Override
        public void run() {
            TextInterface.this.mCodeView.setTextContent(TextInterface.this.removeInvisibleChars(this.f71879b));
        }
    }

    public class q extends AbstractViewOnClickListenerC12733a {
        public q() {
        }

        @Override
        public void click(View view) {
            TextInterface.this.clearSuggestions();
        }
    }

    public class r implements M6.a {
        public r() {
        }

        @Override
        public void a(M6.b suggestion) {
            TextInterface.this.applySuggestion(suggestion);
        }
    }

    public class s implements M7.d {
        public s() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            E4.d.F1();
        }
    }

    public class t implements M7.d {

        public class a implements dd.d {

            public final Method f71885a;

            public final ColorScheme f71886b;

            public a(final Method val$method, final ColorScheme val$theme) {
                this.f71885a = val$method;
                this.f71886b = val$theme;
            }

            @Override
            public void onSelected(View view) {
                TextInterface.config.e(this.f71885a.getName(), this.f71886b);
                TextInterface.this.setColorTheme(this.f71886b);
            }
        }

        public t() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            LinkedList linkedList = new LinkedList();
            for (Method method : EditorTheme.INSTANCE.getClass().getDeclaredMethods()) {
                if (!method.getName().contains("$") && method.getName().startsWith("get")) {
                    try {
                        linkedList.add(new C12908b(method.getName().substring(3).replace(ConstantDescs.DEFAULT_NAME, " "), new a(method, (ColorScheme) method.invoke(EditorTheme.INSTANCE, null))));
                    } catch (IllegalAccessException e10) {
                        e10.printStackTrace();
                    } catch (InvocationTargetException e11) {
                        e11.printStackTrace();
                    }
                }
                try {
                    TextInterface.config.f71851a = (ColorScheme) method.invoke(EditorTheme.INSTANCE, null);
                } catch (IllegalAccessException e12) {
                    e12.printStackTrace();
                } catch (InvocationTargetException e13) {
                    e13.printStackTrace();
                }
            }
            Y6.a.F1(v10, C15147a.e.Below, linkedList);
        }
    }

    public class u implements M7.d {
        public u() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            String e10 = C2630i.e();
            if (e10 == null || e10.isEmpty()) {
                N7.c.v0("No copied text");
                return;
            }
            TextProcessor textProcessor = TextInterface.this.mCodeView;
            int selectionStart = textProcessor.getSelectionStart();
            String obj = textProcessor.getText().toString();
            TextInterface.this.setText(obj.substring(0, selectionStart) + e10 + obj.substring(selectionStart));
            textProcessor.setSelection(selectionStart);
        }
    }

    public class v implements M7.d {
        public v() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            String str;
            TextProcessor textProcessor = TextInterface.this.mCodeView;
            int selectionStart = textProcessor.getSelectionStart();
            int selectionEnd = textProcessor.getSelectionEnd();
            if (selectionStart > selectionEnd) {
                selectionEnd = selectionStart;
                selectionStart = selectionEnd;
            }
            if (selectionStart < 0 || selectionEnd <= selectionStart) {
                Toast.makeText(context, "No text selected", 0).show();
                return;
            }
            String substring = textProcessor.getText().toString().substring(selectionStart, selectionEnd);
            if (substring.length() > 20) {
                str = substring.substring(0, 19) + "...";
            } else {
                str = substring;
            }
            Toast.makeText(context, "Copied: " + str, 0).show();
            C2630i.s(substring);
        }
    }

    public class w implements M7.d {
        public w() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            String str;
            TextProcessor textProcessor = TextInterface.this.mCodeView;
            int selectionStart = textProcessor.getSelectionStart();
            int selectionEnd = textProcessor.getSelectionEnd();
            if (selectionStart > selectionEnd) {
                selectionEnd = selectionStart;
                selectionStart = selectionEnd;
            }
            if (selectionStart < 0 || selectionEnd <= selectionStart) {
                Toast.makeText(context, "No text selected", 0).show();
                return;
            }
            String obj = textProcessor.getText().toString();
            String substring = obj.substring(selectionStart, selectionEnd);
            if (substring.length() > 20) {
                str = substring.substring(0, 19) + "...";
            } else {
                str = substring;
            }
            Toast.makeText(context, "Cropped: " + str, 0).show();
            C2630i.s(substring);
            TextInterface.this.setText(obj.substring(0, selectionStart) + obj.substring(selectionEnd));
            textProcessor.setSelection(selectionStart);
        }
    }

    public class x implements M7.d {
        public x() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            TextProcessor textProcessor = TextInterface.this.mCodeView;
            textProcessor.getText().toString();
            int selectionStart = textProcessor.getSelectionStart();
            int selectionEnd = textProcessor.getSelectionEnd();
            if (selectionEnd > selectionStart) {
                textProcessor.setSelection(selectionStart, selectionEnd - 1);
            } else if (selectionStart > 0) {
                textProcessor.setSelection(selectionStart - 1, selectionEnd - 1);
            }
        }
    }

    public TextInterface() {
        j();
    }

    public static M7.k inflateMicroSpace(Context context, LinearLayout parent, LayoutInflater layoutInflater) {
        M7.k kVar = new M7.k(Nc.b.l0(2.0f, context));
        kVar.a(parent, context, layoutInflater);
        return kVar;
    }

    public final String a(String lineText, String lineSuffix, M6.b suggestion) {
        String str;
        char charAt;
        if (lineText == null || suggestion == null || (str = suggestion.f14581o) == null || str.isEmpty()) {
            return null;
        }
        int i10 = 0;
        while (i10 < lineText.length() && ((charAt = lineText.charAt(i10)) == ' ' || charAt == '\t')) {
            i10++;
        }
        String substring = lineText.substring(0, i10);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(substring);
        sb2.append(suggestion.f14581o);
        if (lineSuffix == null) {
            lineSuffix = "";
        }
        sb2.append(lineSuffix);
        return sb2.toString();
    }

    public void addError(int line) {
        this.mCodeView.addErrorLine(line);
    }

    public void addTextWatcher(TextWatcher textWatcher) {
        this.mCodeView.addTextChangedListener(textWatcher);
    }

    public void applySuggestion(M6.b suggestion) {
        N7.c.j0(new i(suggestion));
    }

    public final int b() {
        try {
            Layout layout = this.mCodeView.getLayout();
            if (layout == null) {
                return -1;
            }
            return layout.getLineForOffset(this.mCodeView.getSelectionStart());
        } catch (Exception unused) {
            return -1;
        }
    }

    public void blockTypingFor(long durationMs) {
        this.typingBlockedUntilMs = SystemClock.uptimeMillis() + Math.max(0L, durationMs);
        TextProcessor textProcessor = this.mCodeView;
        if (textProcessor != null) {
            this.typingBlockedSelectionStart = Math.max(0, textProcessor.getSelectionStart());
            this.typingBlockedSelectionEnd = Math.max(0, this.mCodeView.getSelectionEnd());
        } else {
            this.typingBlockedSelectionStart = -1;
            this.typingBlockedSelectionEnd = -1;
        }
    }

    public final int c(String text, int lineNumber) {
        if (text != null && !text.isEmpty() && lineNumber > 0) {
            int i10 = 0;
            for (int i11 = 0; i11 < text.length() && i10 < lineNumber; i11++) {
                if (text.charAt(i11) == '\n' && (i10 = i10 + 1) == lineNumber) {
                    return i11 + 1;
                }
            }
        }
        return 0;
    }

    public Vector2 calculateCursorPositionAtCode() {
        int selectionStart = this.mCodeView.getSelectionStart();
        Layout layout = this.mCodeView.getLayout();
        int lineForOffset = layout.getLineForOffset(selectionStart);
        int lineBaseline = layout.getLineBaseline(lineForOffset);
        int lineAscent = layout.getLineAscent(lineForOffset);
        this.mCodeView.getLocationOnScreen(new int[2]);
        Vector2 vector2 = new Vector2();
        vector2.f79838x = (int) layout.getPrimaryHorizontal(selectionStart);
        vector2.f79839y = ((lineBaseline + lineAscent) + r4[1]) - this.mCodeView.getScrollY();
        return vector2;
    }

    public boolean checkCaracterCommon(String str) {
        return H6.i.a(str) || H6.i.d(str);
    }

    public void clearSuggestions() {
        if (!N7.c.N()) {
            N7.c.j0(new h());
        } else {
            this.suggestionsPanel.setVisibility(8);
            this.adapter.j();
        }
    }

    public final boolean d(String lineSuffix) {
        char charAt;
        if (n(lineSuffix) && lineSuffix.length() >= 2) {
            for (int i10 = 1; i10 < lineSuffix.length() && (charAt = lineSuffix.charAt(i10)) != ')'; i10++) {
                if (!Character.isWhitespace(charAt)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override
    public F6.d duplicate() {
        return new TextInterface();
    }

    public final void e(M7.g element) {
        element.a(this.leftBar, this.context, this.layoutInflater);
        element.n(f(this.leftBar).e());
    }

    public final M7.k f(LinearLayout parent) {
        return inflateMicroSpace(this.context, parent, this.layoutInflater);
    }

    public final void g(M7.g element) {
        element.a(this.topBar, this.context, this.layoutInflater);
        element.n(f(this.topBar).e());
    }

    public Context getContext() {
        if (this.context == null) {
            this.context = N7.c.o();
        }
        return this.context;
    }

    public String getCurrentLine() {
        String[] split = this.mCodeView.getText().toString().split("\n");
        int selectionStart = this.mCodeView.getSelectionStart();
        int i10 = 0;
        for (int i11 = 0; i11 < split.length; i11++) {
            i10 = i10 + split[i11].length() + 1;
            if (i10 >= selectionStart - 1) {
                return split[i11];
            }
        }
        return null;
    }

    public int getCursorPosition() {
        return this.mCodeView.getSelectionStart();
    }

    public TextProcessor getEditorView() {
        return this.mCodeView;
    }

    @Override
    public String getOpenFile() {
        return null;
    }

    public Vector2 getScreenPositionOfCursor() {
        int selectionStart = this.mCodeView.getSelectionStart();
        Layout layout = this.mCodeView.getLayout();
        if (layout == null) {
            System.out.println("Scripting Cursor Position NO LAYOUT");
            return null;
        }
        int lineForOffset = layout.getLineForOffset(selectionStart);
        float primaryHorizontal = layout.getPrimaryHorizontal(selectionStart);
        int lineTop = layout.getLineTop(lineForOffset);
        int lineBottom = layout.getLineBottom(lineForOffset) - lineTop;
        this.mCodeView.getLocationOnScreen(new int[2]);
        float scrollX = ((r3[0] + primaryHorizontal) - this.mCodeView.getScrollX()) + this.mCodeView.getPaddingLeft();
        float scrollY = (((r3[1] + r1) - this.mCodeView.getScrollY()) + this.mCodeView.getPaddingTop()) - (lineBottom / 2.0f);
        System.out.println("Scripting Cursor Position X: " + scrollX + ", Y: " + scrollY);
        return new Vector2(scrollX, scrollY);
    }

    public String getTabInLine(String line) {
        Pattern compile = Pattern.compile("[^a-zA-Z0-9]");
        String str = "";
        int i10 = 0;
        while (i10 < line.length()) {
            int i11 = i10 + 1;
            if (line.length() > i11) {
                String substring = line.substring(i10, i11);
                if (!compile.matcher(substring).find() || H6.i.d(substring)) {
                    return str;
                }
                str = str + " ";
            }
            i10 = i11;
        }
        return str;
    }

    public String getText() {
        if (N7.c.N()) {
            return removeInvisibleChars(this.mCodeView.getText().toString());
        }
        Semaphore semaphore = new Semaphore(0);
        String[] strArr = new String[1];
        try {
            N7.c.j0(new n(strArr, semaphore));
            semaphore.tryAcquire(15000L, TimeUnit.MILLISECONDS);
            return removeInvisibleChars(strArr[0]);
        } catch (InterruptedException e10) {
            e10.printStackTrace();
            return removeInvisibleChars(this.mCodeView.getText().toString());
        }
    }

    public int getTypingBlockedSelectionEndPublic() {
        return this.typingBlockedSelectionEnd;
    }

    public int getTypingBlockedSelectionStartPublic() {
        return this.typingBlockedSelectionStart;
    }

    public final boolean h() {
        return this.allowProgrammaticTextChange;
    }

    @Override
    public boolean hasScript() {
        return false;
    }

    @Override
    public void hideView() {
        this.view.setVisibility(8);
    }

    public final boolean i() {
        return SystemClock.uptimeMillis() < this.typingBlockedUntilMs;
    }

    public void inflateLeftbarItems(Context context, List<M7.g> elements) {
        s sVar = new s();
        c.b bVar = c.b.Disconnected;
        elements.add(new M7.c(R.drawable.interrogation, sVar, bVar, context).m0(Nc.b.k0(24.0f)));
        elements.add(new M7.c(R.drawable.theme, new t(), bVar, context).m0(Nc.b.k0(24.0f)));
        M7.c m02 = new M7.c(R.drawable.paste_text, new u(), bVar, context).m0(Nc.b.k0(24.0f));
        v vVar = new v();
        c.b bVar2 = c.b.Top;
        elements.add(new M7.c(R.drawable.copy, vVar, bVar2, context).m0(Nc.b.k0(24.0f)));
        w wVar = new w();
        c.b bVar3 = c.b.Bottom;
        elements.add(new M7.c(R.drawable.scissors, wVar, bVar3, context).m0(Nc.b.k0(24.0f)));
        elements.add(m02);
        elements.add(new M7.c(R.drawable.select_left, new x(), bVar2, context).m0(Nc.b.k0(24.0f)));
        elements.add(new M7.c(R.drawable.select_rigth, new a(), bVar3, context).m0(Nc.b.k0(24.0f)));
    }

    public void inflateTopBarElements(Context context, List<M7.g> elements) {
        b bVar = new b();
        c.b bVar2 = c.b.Disconnected;
        elements.add(new M7.c(R.drawable.maximize_v3, bVar, bVar2, context).m0(Nc.b.k0(24.0f)));
        elements.add(new M7.c(R.drawable.hide_keyboard, new c(), bVar2, context).m0(Nc.b.k0(24.0f)));
        M7.c m02 = new M7.c(R.drawable.undo, new d(), c.b.Left, context).m0(Nc.b.k0(24.0f));
        M7.c m03 = new M7.c(R.drawable.redo, new e(), c.b.Right, context).m0(Nc.b.k0(24.0f));
        elements.add(m02);
        elements.add(m03);
        m02.o(this.mCodeView.canUndo());
        m03.o(this.mCodeView.canRedo());
        this.mCodeView.setOnUndoRedoChangedListener(new f(m02, m03));
    }

    @Override
    public void inflateView(ConstraintLayout modulesContent, AsyncLayoutInflater asyncLayoutInflater, Context context, InterfaceC16149b inflateListener) {
        this.viewParent = modulesContent;
        this.context = context;
        View inflate = this.layoutInflater.inflate(R.layout.codeview_scripting, (ViewGroup) null);
        this.view = inflate;
        TextProcessor textProcessor = (TextProcessor) inflate.findViewById(R.id.editor);
        this.mCodeView = textProcessor;
        textProcessor.setHorizontallyScrolling(true);
        if (Build.VERSION.SDK_INT < 35) {
            TextProcessor textProcessor2 = this.mCodeView;
            textProcessor2.setInputType((textProcessor2.getInputType() & (-98449)) | 524288);
            this.mCodeView.setTransformationMethod(null);
            this.mCodeView.setImeOptions(268435456);
        } else {
            this.mCodeView.setInputType(655505);
            this.mCodeView.setRawInputType(655505);
            this.mCodeView.setTransformationMethod(null);
            this.mCodeView.setImeOptions(285212672);
        }
        this.mCodeView.setOnClickListener(new q());
        InputFilter[] filters = this.mCodeView.getFilters();
        if (filters == null || filters.length == 0) {
            this.mCodeView.setFilters(new InputFilter[]{this.typingBlockFilter});
        } else {
            InputFilter[] inputFilterArr = new InputFilter[filters.length + 1];
            System.arraycopy(filters, 0, inputFilterArr, 0, filters.length);
            inputFilterArr[filters.length] = this.typingBlockFilter;
            this.mCodeView.setFilters(inputFilterArr);
        }
        this.suggestionsRecycler = (RecyclerView) this.view.findViewById(R.id.suggestionsRecycler);
        View findViewById = this.view.findViewById(R.id.suggestionsPanel);
        this.suggestionsPanel = findViewById;
        findViewById.setVisibility(8);
        this.suggestionsRecycler.setLayoutManager(new LinearLayoutManager(getContext()));
        this.suggestionsRecycler.setItemAnimator(null);
        M6.d dVar = new M6.d(getContext(), new SteppedArrayList(), new r());
        this.adapter = dVar;
        this.suggestionsRecycler.setAdapter(dVar);
        j();
        modulesContent.addView(this.view);
        this.view.setLayoutParams(new ConstraintLayout.LayoutParams(-1, -1));
        this.topBar = (LinearLayout) this.view.findViewById(R.id.topBar);
        LinkedList linkedList = new LinkedList();
        inflateTopBarElements(context, linkedList);
        this.topBar.removeAllViews();
        for (int i10 = 0; i10 < linkedList.size(); i10++) {
            g(linkedList.get(i10));
        }
        this.leftBar = (LinearLayout) this.view.findViewById(R.id.leftBar);
        LinkedList linkedList2 = new LinkedList();
        inflateLeftbarItems(context, linkedList2);
        this.leftBar.removeAllViews();
        for (int i11 = 0; i11 < linkedList2.size(); i11++) {
            e(linkedList2.get(i11));
        }
        inflateListener.a(this.view);
    }

    public void init() {
        this.mCodeView.setDropDownBackgroundDrawable(this.context.getResources().getDrawable(R.drawable.codeview_dropdown_background));
        l(config.b());
        this.mCodeView.setOnTextSizeChangedListener(new j());
    }

    public boolean isProgrammaticTextChangeAllowedPublic() {
        return h();
    }

    public boolean isTypingTemporarilyBlockedPublic() {
        return i();
    }

    public final void j() {
        try {
            config = (Config) X7.a.m().fromJson(X7.a.C("textEditor", "configs.config", N7.c.t()), Config.class);
        } catch (JsonSyntaxException e10) {
            e10.printStackTrace();
            config = new Config();
        }
        if (config == null) {
            config = new Config();
        }
        for (Method method : EditorTheme.INSTANCE.getClass().getDeclaredMethods()) {
            if (method.getName().equalsIgnoreCase(config.themeName)) {
                try {
                    config.f71851a = (ColorScheme) method.invoke(EditorTheme.INSTANCE, null);
                } catch (IllegalAccessException | InvocationTargetException e11) {
                    e11.printStackTrace();
                }
            }
        }
    }

    public final void k(Runnable runnable) {
        boolean z10 = this.allowProgrammaticTextChange;
        this.allowProgrammaticTextChange = true;
        try {
            runnable.run();
        } finally {
            this.allowProgrammaticTextChange = z10;
        }
    }

    public final void l(int size) {
        this.mCodeView.setTextSize(size);
        this.fontSize = size;
    }

    public final boolean m(M6.b suggestion) {
        String str;
        return (suggestion == null || !suggestion.f14582p || (str = suggestion.f14581o) == null || str.isEmpty()) ? false : true;
    }

    @Override
    public boolean matchState(c.l state) {
        return false;
    }

    public int measureContentWidth(ListAdapter listAdapter) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        int i10 = 0;
        int i11 = 0;
        FrameLayout frameLayout = null;
        View view = null;
        for (int i12 = 0; i12 < count; i12++) {
            int itemViewType = listAdapter.getItemViewType(i12);
            if (itemViewType != i11) {
                view = null;
                i11 = itemViewType;
            }
            if (frameLayout == null) {
                frameLayout = new FrameLayout(this.context);
            }
            view = listAdapter.getView(i12, view, frameLayout);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth > i10) {
                i10 = measuredWidth;
            }
        }
        return i10;
    }

    public final boolean n(String lineSuffix) {
        return lineSuffix != null && lineSuffix.startsWith("(");
    }

    @Override
    public void onClose(Context context) {
        this.viewParent.removeAllViews();
    }

    @Override
    public void onStart(Context context, LayoutInflater layoutInflater, y6.f upperCommunication, EditorPanel editorPanel) {
        this.context = context;
        this.layoutInflater = layoutInflater;
        this.upperCommunication = upperCommunication;
        this.editorPanel = editorPanel;
    }

    @Override
    public void openScript(C13823b script, Context context) {
        this.context = context;
        init();
    }

    public void refactor() {
        int i10;
        this.cursorPosition = this.mCodeView.getSelectionStart();
        String obj = this.mCodeView.getText().toString();
        int i11 = this.toRemoveFrom;
        if (i11 <= 0 || i11 <= this.toRemoveTo) {
            i10 = 0;
        } else {
            obj = obj.substring(0, this.toRemoveTo) + obj.substring(this.toRemoveFrom);
            i10 = this.toRemoveFrom - this.toRemoveTo;
            this.toRemoveTo = 0;
            this.toRemoveFrom = 0;
        }
        if (!this.textToPropagate.equals("")) {
            obj = obj.substring(0, this.propagatePos) + this.textToPropagate + obj.substring(this.propagatePos);
            if (this.textToPropagate.contains("\n")) {
                this.cursorPosition += this.textToPropagate.length();
            }
            this.textToPropagate = "";
            this.cursorPosition = this.newCursorPosAfterPropagate;
            this.newCursorPosAfterPropagate = 0;
        }
        this.cursorPosition -= i10;
        this.mCodeView.setText(obj);
        try {
            int length = this.mCodeView.getText().toString().length();
            int i12 = this.cursorPosition;
            if (length > i12) {
                this.mCodeView.setSelection(i12);
            } else {
                this.mCodeView.setSelection(r0.getText().toString().length() - 1);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.theresChanges = false;
    }

    public void removeAllErrors() {
        this.mCodeView.removeAllErrors();
    }

    public void removeErrors(int line) {
        this.mCodeView.removeErrorLine(line);
    }

    public String removeInvisibleChars(String t10) {
        return t10.replaceAll("[\\p{Cntrl}&&[^\r\n\t]]", "");
    }

    public void removeTextWatcher(TextWatcher textWatcher) {
        this.mCodeView.removeTextChangedListener(textWatcher);
    }

    public void replaceLine(String newLineText, int lineNumber) {
        try {
            k(new m(lineNumber, newLineText));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public void replaceScript(C13823b newScript, Context context) {
        init();
    }

    @Override
    public boolean saveScript(Context context) {
        return false;
    }

    public void setColorTheme(ColorScheme colorTheme) {
        Config config2 = config;
        if (config2.f71851a != colorTheme) {
            config2.f71851a = colorTheme;
            config2.c();
        }
        this.mCodeView.setColorScheme(colorTheme);
        l(this.fontSize);
    }

    public void setCursorPosition(int index) {
        try {
            this.mCodeView.setSelection(index, index);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void setDefaultConfigs() {
        com.itsmagic.engine.Activities.Editor.Panels.Scripting.Interfaces.SuperClasses.a.f71892a.f(this.mCodeView, this.context);
    }

    public void setLanguage(Language language) {
        this.mCodeView.setLanguage(language);
    }

    public void setOnTextChangeListener(OnTextChangeListener onTextChangeListener) {
        this.mCodeView.setOnTextChangeListener(onTextChangeListener);
    }

    public void setRequestLineTips(RequestLineTips requestLineTips) {
        this.mCodeView.setRequestLineTips(requestLineTips);
    }

    public void setText(String txt) {
        if (txt == null) {
            throw new NullPointerException("Text can't be null");
        }
        if (N7.c.N()) {
            k(new p(txt));
        } else {
            N7.c.j0(new o(txt));
        }
    }

    public void showAutoComplete(List<H6.j> options, View v10, int x10, int y10, String typedWord) {
        String str;
        LinkedList linkedList = new LinkedList();
        Iterator<H6.j> it = options.iterator();
        while (true) {
            int i10 = 0;
            if (!it.hasNext()) {
                break;
            }
            H6.j next = it.next();
            if (next.f8263g) {
                StringBuilder sb2 = new StringBuilder();
                while (i10 < next.f8261e.length) {
                    Parameter[] parameterArr = next.f8262f;
                    if (parameterArr != null && parameterArr.length > i10 && parameterArr[i10].isNamePresent()) {
                        sb2.append(next.f8262f[i10].getName());
                        sb2.append(b3.s.f32937c);
                    }
                    sb2.append(next.f8261e[i10].getSimpleName());
                    if (i10 < next.f8261e.length - 1) {
                        sb2.append(", ");
                    }
                    i10++;
                }
                linkedList.add("new " + next.f8257a + "(" + sb2.toString() + ")");
            } else if (!next.f8259c) {
                linkedList.add(next.f8257a);
            } else if (next.f8260d == 0) {
                linkedList.add(next.f8257a + "()");
            } else {
                StringBuilder sb3 = new StringBuilder();
                while (i10 < next.f8261e.length) {
                    Parameter[] parameterArr2 = next.f8262f;
                    if (parameterArr2 != null && parameterArr2.length > i10 && parameterArr2[i10].isNamePresent()) {
                        sb3.append(next.f8262f[i10].getName());
                        sb3.append(b3.s.f32937c);
                    }
                    sb3.append(next.f8261e[i10].getSimpleName());
                    if (i10 < next.f8261e.length - 1) {
                        sb3.append(", ");
                    }
                    i10++;
                }
                if (next.f8258b.equals(Void.TYPE)) {
                    str = "";
                } else {
                    str = "->" + next.f8258b.getSimpleName();
                }
                linkedList.add(next.f8257a + "(" + sb3.toString() + ")" + str);
            }
        }
        ListPopupWindow listPopupWindow = this.autoCompletePopup;
        if (listPopupWindow != null && listPopupWindow.isShowing()) {
            this.autoCompletePopup.dismiss();
        }
        this.autoCompletePopup = new ListPopupWindow(N7.c.o());
        ArrayAdapter arrayAdapter = new ArrayAdapter(N7.c.o(), R.layout.codeview_autocomplete_row_direct, linkedList);
        this.autoCompletePopup.setBackgroundDrawable(this.context.getResources().getDrawable(R.drawable.autocomplete_background));
        this.autoCompletePopup.setAdapter(arrayAdapter);
        this.autoCompletePopup.setAnchorView(N7.c.E());
        this.autoCompletePopup.setHeight(Nc.b.l0(110.0f, this.context));
        this.autoCompletePopup.setModal(false);
        try {
            this.autoCompletePopup.setContentWidth(measureContentWidth(arrayAdapter));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.autoCompletePopup.setVerticalOffset(y10);
        this.autoCompletePopup.setHorizontalOffset(x10);
        this.autoCompletePopup.setOnItemClickListener(new l(options, typedWord));
        this.autoCompletePopup.show();
    }

    public void showSuggestions(List<M6.b> suggestions) {
        if (suggestions == null || suggestions.isEmpty()) {
            clearSuggestions();
        } else {
            if (!N7.c.N()) {
                N7.c.j0(new g(suggestions));
                return;
            }
            this.suggestionsPanel.setVisibility(0);
            this.adapter.j();
            this.adapter.i(suggestions);
        }
    }

    @Override
    public void showView() {
        this.view.setVisibility(0);
    }

    @Override
    public boolean supportFile(C13823b file) {
        return false;
    }

    public void unload() {
    }

    @Override
    public void updateVisible() {
    }
}
