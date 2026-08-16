package J4;

import Ic.C2636o;
import K4.a;
import android.content.Context;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.load.engine.GlideException;
import com.github.anrwatchdog.ANRWatchDog;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Core.Components.JCompiler.JavaMetaInfo;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.JavaComponent.JavaComponent;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import p8.C14940d;
import t3.C15377a;

public class d extends EditorPanel {

    public static final String f10212m0 = "ConsolePanel";

    public static final Class f10213n0 = d.class;

    public static final List<s> f10214o0;

    public RecyclerView f10215X;

    public EditText f10216Y;

    public LinearLayoutManager f10217Z;

    public J4.a f10218a0;

    public boolean f10219b0;

    public final List<J4.c> f10220c0;

    public final List<J4.c> f10221d0;

    public final List<String> f10222e0;

    public final List<J4.c> f10223f0;

    public final s f10224g0;

    public final List<r> f10225h0;

    public J4.e f10226i0;

    public final Object f10227j0;

    public K4.a f10228k0;

    public int f10229l0;

    public class a extends AbstractViewOnClickListenerC12733a {
        public a() {
        }

        @Override
        public void click(View v10) {
            d.this.J1();
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {

        public final View f10231b;

        public b(final View val$v) {
            this.f10231b = val$v;
        }

        @Override
        public void click(View aaa) {
            if (this.f10231b.findViewById(R.id.smallActions).getVisibility() == 0) {
                this.f10231b.findViewById(R.id.typeActions).setVisibility(0);
                this.f10231b.findViewById(R.id.smallActions).setVisibility(8);
            } else {
                this.f10231b.findViewById(R.id.typeActions).setVisibility(8);
                this.f10231b.findViewById(R.id.smallActions).setVisibility(0);
            }
        }
    }

    public class c extends AbstractViewOnClickListenerC12733a {

        public final View f10233b;

        public c(final View val$v) {
            this.f10233b = val$v;
        }

        @Override
        public void click(View aaa) {
            if (this.f10233b.findViewById(R.id.smallActions).getVisibility() == 0) {
                this.f10233b.findViewById(R.id.typeActions).setVisibility(0);
                this.f10233b.findViewById(R.id.smallActions).setVisibility(8);
            } else {
                this.f10233b.findViewById(R.id.typeActions).setVisibility(8);
                this.f10233b.findViewById(R.id.smallActions).setVisibility(0);
            }
        }
    }

    public class C0251d extends AbstractViewOnClickListenerC12733a {
        public C0251d() {
        }

        @Override
        public void click(View v10) {
            d.this.s2();
        }
    }

    public class e extends AbstractViewOnClickListenerC12733a {
        public e() {
        }

        @Override
        public void click(View v10) {
            d.this.J1();
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override
        public void run() {
            d.this.f10218a0.k();
        }
    }

    public class g extends Writer {

        public final List f10238b;

        public g(final List val$compillerOutputs) {
            this.f10238b = val$compillerOutputs;
        }

        @Override
        public void close() throws IOException {
        }

        @Override
        public void flush() throws IOException {
        }

        @Override
        public void write(char[] cbuf, int off, int len) throws IOException {
            this.f10238b.add(new String(cbuf, off, len));
        }
    }

    public class h extends Writer {

        public final List f10239b;

        public h(final List val$compillerOutputs) {
            this.f10239b = val$compillerOutputs;
        }

        @Override
        public void close() throws IOException {
        }

        @Override
        public void flush() throws IOException {
        }

        @Override
        public void write(char[] cbuf, int off, int len) throws IOException {
            this.f10239b.add(new String(cbuf, off, len));
        }
    }

    public class i extends EditorPanel.j {
        @Override
        public Class b() {
            return d.f10213n0;
        }

        @Override
        public String c() {
            return d.f10212m0;
        }
    }

    public class j implements s {
        public j() {
        }

        @Override
        public boolean a() {
            return d.this.Q1();
        }

        @Override
        public void append(String t10) {
            d.this.A1(t10);
        }

        @Override
        public void b(String... ts) {
            d.this.C1(ts);
        }

        @Override
        public void c() {
            d.this.p2();
        }

        @Override
        public void d(String t10) {
            d.this.K1(t10);
        }

        @Override
        public void e(List<String> ts) {
            d.this.B1(ts);
        }

        @Override
        public void f() {
            d.this.i();
        }
    }

    public class k extends SteppedArrayList<r> {

        public class a extends r {
            public a(String name, String info) {
                super(name, info);
            }

            @Override
            public void a() {
                d.this.d2("Available commands:");
                for (int i10 = 0; i10 < d.this.f10225h0.size(); i10++) {
                    r rVar = (r) d.this.f10225h0.get(i10);
                    d.this.d2(GlideException.a.f59088e + rVar.c() + " == " + rVar.b());
                }
                for (int i11 = 0; i11 < C14940d.h(); i11++) {
                    J4.e g10 = C14940d.g(i11);
                    d.this.d2(GlideException.a.f59088e + g10.b() + " == " + g10.c());
                }
            }
        }

        public class b extends r {
            public b(String name, String info) {
                super(name, info);
            }

            @Override
            public void a() {
                d.this.J1();
            }
        }

        public class c extends r {
            public c(String name, String info) {
                super(name, info);
            }

            @Override
            public void a() {
                d.this.t2(new K4.b());
            }
        }

        public class C0252d extends r {

            public class a implements Runnable {
                public a() {
                }

                @Override
                public void run() {
                    new ANRWatchDog(1000).start();
                }
            }

            public C0252d(String name, String info) {
                super(name, info);
            }

            @Override
            public void a() {
                d.this.d2("ANR Watch dog started!");
                K8.a.I(new a());
            }
        }

        public class e extends r {

            public class a implements Runnable {
                public a() {
                }

                @Override
                public void run() {
                    new ANRWatchDog(1000).start();
                }
            }

            public e(String name, String info) {
                super(name, info);
            }

            @Override
            public void a() {
                d.this.d2("ANR Watch dog started!");
                N7.c.j0(new a());
            }
        }

        public k() {
            add(new a("help", "show all commands"));
            add(new b("clear", "clear terminal"));
            add(new c("shell", "open linux system shell"));
            if (C15377a.f109719g.booleanValue()) {
                return;
            }
            add(new C0252d("start-anr-watch-dog", "force crash itsmagic when ANR occurs."));
            add(new e("start-anr-watch-dog-ui", "force crash itsmagic when ANR occurs."));
        }
    }

    public class l implements a.InterfaceC0349a {
        public l() {
        }

        @Override
        public void a(List<String> text) {
            d.this.e2(text);
        }

        @Override
        public void b(String msg) {
            d.this.d2(msg);
        }

        @Override
        public void stop() {
            d.this.t2(null);
        }
    }

    public class m implements TextView.OnEditorActionListener {
        public m() {
        }

        @Override
        public boolean onEditorAction(TextView v10, int actionId, KeyEvent event) {
            if (actionId != 3 && actionId != 6) {
                if (event == null) {
                    return false;
                }
                try {
                    if (event.getAction() != 0 || event.getKeyCode() != 66) {
                        return false;
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return false;
                }
            }
            Editable text = d.this.f10216Y.getText();
            if (text != null) {
                d.this.D1("T/" + text.toString());
            }
            d.this.f10216Y.setText("");
            return true;
        }
    }

    public class n extends LinearLayoutManager {
        public n(Context context) {
            super(context);
        }

        @Override
        public boolean supportsPredictiveItemAnimations() {
            return false;
        }
    }

    public class o extends SteppedArrayList<J4.c> {
        public o() {
            add(new J4.c("==============="));
            add(new J4.c(" - - - -ITsMagic- - - - "));
            add(new J4.c("-Terminal started-"));
            add(new J4.c("==============="));
            add(new J4.c("To increase performance, the Terminal does not capture logs and exceptions while it is not visible."));
            add(new J4.c("Resolve all exceptions, it is extremely important!"));
        }
    }

    public class p extends AbstractViewOnClickListenerC12733a {
        public p() {
        }

        @Override
        public void click(View v10) {
            Editable text = d.this.f10216Y.getText();
            if (text != null) {
                d.this.D1("T/" + text.toString());
            }
            d.this.f10216Y.setText("");
        }
    }

    public class q extends AbstractViewOnClickListenerC12733a {
        public q() {
        }

        @Override
        public void click(View v10) {
            d.this.s2();
        }
    }

    public interface s {
        boolean a();

        void append(String t10);

        void b(String... ts);

        void c();

        void d(String t10);

        void e(List<String> ts);

        void f();
    }

    static {
        EditorPanel.a(new i());
        f10214o0 = new SteppedArrayList();
    }

    public d(K8.a engine) {
        super(engine);
        this.f10220c0 = new LinkedList();
        this.f10221d0 = new LinkedList();
        this.f10222e0 = new LinkedList();
        this.f10223f0 = new LinkedList();
        this.f10224g0 = new j();
        this.f10225h0 = new k();
        this.f10226i0 = null;
        this.f10227j0 = new Object();
        this.f10228k0 = null;
        this.f10229l0 = 0;
    }

    public static void E1() {
        synchronized (f10214o0) {
            int i10 = 0;
            while (true) {
                try {
                    List<s> list = f10214o0;
                    if (i10 < list.size()) {
                        list.get(i10).f();
                        i10++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static String F1(String t10) {
        return H1(t10, "15,188,249");
    }

    public static String G1(String t10) {
        return H1(t10, "69, 165, 255");
    }

    public static String H1(String t10, String c10) {
        return "'color=" + c10 + "'" + t10 + "''";
    }

    public static void L1(String line) {
        synchronized (f10214o0) {
            int i10 = 0;
            while (true) {
                try {
                    List<s> list = f10214o0;
                    if (i10 < list.size()) {
                        list.get(i10).d(line);
                        i10++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static void M1(String message) {
        L1("E/" + message);
    }

    public static void N1() {
        synchronized (f10214o0) {
            int i10 = 0;
            while (true) {
                try {
                    List<s> list = f10214o0;
                    if (i10 < list.size()) {
                        list.get(i10).c();
                        i10++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static boolean O1() {
        synchronized (f10214o0) {
            int i10 = 0;
            while (true) {
                try {
                    List<s> list = f10214o0;
                    if (i10 >= list.size()) {
                        return false;
                    }
                    if (list.get(i10).a()) {
                        return true;
                    }
                    i10++;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public boolean Q1() {
        return this.f10219b0 || EditorSettings.a().catchTerminalExceptionsEvenIfClosed;
    }

    public static void R1(float message) {
        U1("" + message);
    }

    public static void S1(int message) {
        U1("" + message);
    }

    public static void T1(J4.b log) {
        if (log == null) {
            throw new NullPointerException("log can't be null");
        }
        U1(log.f10205c);
    }

    public static void U1(String line) {
        synchronized (f10214o0) {
            int i10 = 0;
            while (true) {
                try {
                    List<s> list = f10214o0;
                    if (i10 < list.size()) {
                        list.get(i10).append(line);
                        i10++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static void V1(Throwable e10) {
        if (O1()) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            steppedArrayList.add(H1("I/vvv", "#ff0000"));
            List<String> w22 = w2(e10);
            for (int i10 = 0; i10 < w22.size(); i10++) {
                String str = Sm.b.f23785c + w22.get(i10);
                if (!str.trim().isEmpty()) {
                    steppedArrayList.add(str);
                }
            }
            steppedArrayList.add(H1("I/^^^", "#ff0000"));
            W1(steppedArrayList);
        }
    }

    public static void W1(List<String> lines) {
        synchronized (f10214o0) {
            int i10 = 0;
            while (true) {
                try {
                    List<s> list = f10214o0;
                    if (i10 < list.size()) {
                        list.get(i10).e(lines);
                        i10++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static void X1(boolean message) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("");
        sb2.append(message ? "true" : "false");
        U1(sb2.toString());
    }

    public static void Y1(String... lines) {
        synchronized (f10214o0) {
            int i10 = 0;
            while (true) {
                try {
                    List<s> list = f10214o0;
                    if (i10 < list.size()) {
                        list.get(i10).b(lines);
                        i10++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static void Z1(float message) {
        b2("" + message);
    }

    public static void a2(int message) {
        b2("" + message);
    }

    public static void b2(String message) {
        U1("E/" + message);
    }

    public static void c2(Throwable e10) {
        if (O1()) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            steppedArrayList.add(H1("E/vvv", "#ff0000"));
            List<String> w22 = w2(e10);
            for (int i10 = 0; i10 < w22.size(); i10++) {
                String str = Sm.b.f23785c + w22.get(i10);
                if (!str.trim().isEmpty()) {
                    steppedArrayList.add(str);
                }
            }
            steppedArrayList.add(H1("E/^^^", "#ff0000"));
            W1(steppedArrayList);
        }
    }

    public static void f2(byte message) {
        l2("" + ((int) message));
    }

    public static void g2(char message) {
        l2("" + message);
    }

    public static void h2(double message) {
        l2("" + message);
    }

    public static void i2(float message) {
        l2("" + message);
    }

    public static void j2(int message) {
        l2("" + message);
    }

    public static void k2(long message) {
        l2("" + message);
    }

    public static void l2(String message) {
        U1("M/" + message);
    }

    public static void m2(short message) {
        l2("" + ((int) message));
    }

    public static void n2(String line) {
        U1("W/" + line);
    }

    public static void o2(String... lines) {
        synchronized (f10214o0) {
            int i10 = 0;
            while (true) {
                try {
                    List<s> list = f10214o0;
                    if (i10 < list.size()) {
                        list.get(i10).append("W/" + ((Object) lines));
                        i10++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private boolean p1() {
        synchronized (this.f10227j0) {
            try {
                return this.f10228k0 == null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static String q2(String t10) {
        return H1(t10, "#f96966");
    }

    public void s2() {
        this.f10215X.scrollToPosition(this.f10218a0.getItemCount() - 1);
    }

    public static String u2(String t10) {
        return "__" + t10 + "__";
    }

    public static String v2(String text, String tag) {
        return "!tap=" + tag + "'" + text + "!!";
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:11|(2:13|(6:15|16|17|(9:19|20|(3:65|66|(15:68|69|70|71|72|73|74|(2:76|(18:78|79|80|81|82|83|(1:85)|86|(2:90|(9:92|93|(14:95|(1:97)(1:121)|98|(1:100)(1:120)|101|(3:103|104|(2:107|108)(1:106))|119|118|109|(5:113|114|(4:26|27|28|(7:30|31|32|(4:50|51|52|53)(1:34)|35|(2:39|40)|49))|64|49)|24|(0)|64|49)|122|23|24|(0)|64|49))|123|93|(0)|122|23|24|(0)|64|49))|131|122|23|24|(0)|64|49))|22|23|24|(0)|64|49)(1:141)|(2:44|45)|46)(1:(1:146)))|150|16|17|(0)(0)|(1:48)(3:42|44|45)|46) */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0381, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0382, code lost:
    
        r24 = r6;
        r22 = r9;
        r19 = r12;
        r20 = r13;
        r21 = r14;
        r6 = r1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:141:0x038f  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0098 A[Catch: Exception -> 0x0381, TRY_LEAVE, TryCatch #9 {Exception -> 0x0381, blocks: (B:17:0x008e, B:19:0x0098), top: B:16:0x008e }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x03a2  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x03b0 A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x013a A[Catch: Exception -> 0x0104, TryCatch #7 {Exception -> 0x0104, blocks: (B:83:0x00eb, B:85:0x00f9, B:86:0x010a, B:88:0x0110, B:90:0x0116, B:92:0x0120, B:93:0x012a, B:95:0x013a, B:97:0x013d, B:98:0x0141, B:100:0x0149, B:109:0x0182, B:111:0x0209, B:113:0x020f, B:117:0x017e, B:104:0x016c, B:108:0x0174), top: B:82:0x00eb, inners: #4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static List<String> w2(Throwable e10) {
        boolean z10;
        String str;
        LinkedList linkedList;
        String str2;
        boolean z11;
        int i10;
        String str3;
        boolean z12;
        boolean z13;
        String str4;
        String str5;
        String replace;
        String[] strArr;
        int i11;
        String str6;
        boolean z14;
        boolean z15;
        JavaMetaInfo J10;
        String str7 = "JAVARuntime.";
        String str8 = "(";
        LinkedList linkedList2 = new LinkedList();
        if (e10.getCause() != null) {
            linkedList2.addAll(w2(e10.getCause()));
        }
        LinkedList linkedList3 = new LinkedList();
        e10.printStackTrace(new PrintWriter(new g(linkedList3)));
        String name = d8.m.class.getName();
        String name2 = JavaComponent.class.getName();
        boolean z16 = false;
        int i12 = 0;
        while (i12 < linkedList3.size()) {
            String str9 = (String) linkedList3.get(i12);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(name);
            LinkedList linkedList4 = linkedList3;
            sb2.append(".execute");
            if (str9.contains(sb2.toString()) || str9.contains(name2)) {
                break;
            }
            String str10 = name;
            if (!str9.equals("\n")) {
                if (!str9.startsWith("\tat JAVARuntime.")) {
                    if (z16) {
                        break;
                    }
                } else {
                    z10 = true;
                    if (str9.trim().startsWith("at ")) {
                        str = str8;
                        linkedList = linkedList2;
                        str2 = name2;
                        z11 = z10;
                        i10 = i12;
                        str3 = str7;
                        z13 = false;
                    } else {
                        str2 = name2;
                        z11 = z10;
                        if (str9.contains(str8)) {
                            try {
                                if (str9.contains(")")) {
                                    String substring = str9.substring(str9.lastIndexOf(str8) + 1);
                                    i10 = i12;
                                    try {
                                        linkedList = linkedList2;
                                        try {
                                            String substring2 = substring.substring(0, substring.lastIndexOf(")"));
                                            if (substring2.contains(".java")) {
                                                String substring3 = substring2.substring(0, substring2.lastIndexOf(".java"));
                                                if (substring3.equals("_JContainer")) {
                                                    str4 = str7;
                                                    try {
                                                        replace = str9.substring(0, str9.indexOf(str8)).replace("at ", "");
                                                        str = str8;
                                                    } catch (Exception e11) {
                                                        e = e11;
                                                        str = str8;
                                                        str3 = str4;
                                                        z12 = false;
                                                        e.printStackTrace();
                                                        z13 = z12;
                                                        if (z13) {
                                                        }
                                                        LinkedList linkedList5 = linkedList;
                                                        linkedList5.add(str9.replace(str3, ""));
                                                        i12 = i10 + 1;
                                                        linkedList2 = linkedList5;
                                                        str7 = str3;
                                                        linkedList3 = linkedList4;
                                                        name = str10;
                                                        name2 = str2;
                                                        z16 = z11;
                                                        str8 = str;
                                                    }
                                                    try {
                                                        String substring4 = replace.substring(0, replace.lastIndexOf("."));
                                                        if (substring4.contains(".")) {
                                                            substring4 = substring4.substring(substring4.lastIndexOf(".") + 1);
                                                        }
                                                        if (!substring4.isEmpty() && (J10 = d8.j.J(substring4)) != null) {
                                                            File f10 = J10.f();
                                                            if (f10.exists()) {
                                                                strArr = C2636o.g(f10).split("\n");
                                                                String substring5 = substring2.substring(substring2.lastIndexOf(b3.s.f32937c) + 1);
                                                                int w12 = Nc.b.w1(substring5);
                                                                if (strArr != null) {
                                                                    String str11 = strArr.length > w12 ? strArr[w12] : "";
                                                                    if (str11.endsWith(d8.g.f84387b)) {
                                                                        String substring6 = str11.substring(str11.indexOf("//[I-S]LN=") + 10);
                                                                        str5 = ".";
                                                                        i11 = Nc.b.w1(substring6.substring(0, substring6.indexOf(";")));
                                                                    } else {
                                                                        str5 = ".";
                                                                        i11 = w12;
                                                                    }
                                                                    while (w12 > 0) {
                                                                        try {
                                                                            String str12 = strArr[w12];
                                                                            if (str12.startsWith("//C-R:")) {
                                                                                str6 = str12.replace("//C-R:", "");
                                                                                break;
                                                                            }
                                                                            w12--;
                                                                        } catch (Exception e12) {
                                                                            e12.printStackTrace();
                                                                        }
                                                                    }
                                                                    str6 = substring3;
                                                                    str9 = str9.replace(b3.s.f32937c + substring5, b3.s.f32937c + i11).replace(substring3, str6);
                                                                    String substring7 = str9.substring(0, str9.indexOf("at ") + 3);
                                                                    String substring8 = str9.substring(substring7.length(), str9.lastIndexOf(str6 + ".java"));
                                                                    String substring9 = str9.substring(str9.lastIndexOf(str6 + ".java") + (str6 + ".java").length());
                                                                    z14 = true;
                                                                    String substring10 = substring9.substring(1, substring9.length() - 1);
                                                                    if (!str6.contains("_JContainer") && !str6.contains("[")) {
                                                                        str9 = y2(substring7) + q2(substring8) + u2(G1(v2(str6, str6 + ".java"))) + q2(" at line:") + y2(substring10) + q2(")");
                                                                        z15 = true;
                                                                        if (!z15) {
                                                                            String str13 = str5;
                                                                            try {
                                                                                if (str9.contains(str13)) {
                                                                                    str3 = str4;
                                                                                    try {
                                                                                        str9 = str9.replace(str3, "");
                                                                                        if (str9.contains("_JContainer.java:")) {
                                                                                            try {
                                                                                                str9 = str9.substring(0, str9.indexOf("(_JContainer.java:")) + "(~)";
                                                                                            } catch (Exception e13) {
                                                                                                e = e13;
                                                                                                z12 = z15;
                                                                                                e.printStackTrace();
                                                                                                z13 = z12;
                                                                                                if (z13) {
                                                                                                }
                                                                                                LinkedList linkedList52 = linkedList;
                                                                                                linkedList52.add(str9.replace(str3, ""));
                                                                                                i12 = i10 + 1;
                                                                                                linkedList2 = linkedList52;
                                                                                                str7 = str3;
                                                                                                linkedList3 = linkedList4;
                                                                                                name = str10;
                                                                                                name2 = str2;
                                                                                                z16 = z11;
                                                                                                str8 = str;
                                                                                            }
                                                                                        }
                                                                                        String substring11 = str9.substring(4, str9.indexOf(str13));
                                                                                        if (!d8.j.X(substring11) && !substring11.contains("[")) {
                                                                                            String substring12 = str9.substring(3, str9.lastIndexOf(substring11 + str13));
                                                                                            String substring13 = str9.substring(str9.lastIndexOf(substring11 + str13) + (substring11 + str13).length());
                                                                                            StringBuilder sb3 = new StringBuilder();
                                                                                            sb3.append(y2("at "));
                                                                                            sb3.append(q2(substring12));
                                                                                            sb3.append(u2(G1(v2(substring11, substring11 + ".java"))));
                                                                                            sb3.append(q2(str13 + substring13));
                                                                                            str9 = sb3.toString();
                                                                                            z13 = z14;
                                                                                        }
                                                                                        z13 = z15;
                                                                                    } catch (Exception e14) {
                                                                                        e = e14;
                                                                                    }
                                                                                }
                                                                            } catch (Exception e15) {
                                                                                e = e15;
                                                                                str3 = str4;
                                                                            }
                                                                        }
                                                                        str3 = str4;
                                                                        z13 = z15;
                                                                    }
                                                                    z15 = false;
                                                                    if (!z15) {
                                                                    }
                                                                    str3 = str4;
                                                                    z13 = z15;
                                                                }
                                                                str5 = ".";
                                                                z14 = true;
                                                                z15 = false;
                                                                if (!z15) {
                                                                }
                                                                str3 = str4;
                                                                z13 = z15;
                                                            }
                                                        }
                                                        strArr = null;
                                                        String substring52 = substring2.substring(substring2.lastIndexOf(b3.s.f32937c) + 1);
                                                        int w122 = Nc.b.w1(substring52);
                                                        if (strArr != null) {
                                                        }
                                                        str5 = ".";
                                                        z14 = true;
                                                        z15 = false;
                                                        if (!z15) {
                                                        }
                                                        str3 = str4;
                                                        z13 = z15;
                                                    } catch (Exception e16) {
                                                        e = e16;
                                                        str3 = str4;
                                                        z12 = false;
                                                        e.printStackTrace();
                                                        z13 = z12;
                                                        if (z13) {
                                                        }
                                                        LinkedList linkedList522 = linkedList;
                                                        linkedList522.add(str9.replace(str3, ""));
                                                        i12 = i10 + 1;
                                                        linkedList2 = linkedList522;
                                                        str7 = str3;
                                                        linkedList3 = linkedList4;
                                                        name = str10;
                                                        name2 = str2;
                                                        z16 = z11;
                                                        str8 = str;
                                                    }
                                                }
                                            }
                                            str4 = str7;
                                            str = str8;
                                            str5 = ".";
                                            z14 = true;
                                            z15 = false;
                                            if (!z15) {
                                            }
                                            str3 = str4;
                                            z13 = z15;
                                        } catch (Exception e17) {
                                            e = e17;
                                            str4 = str7;
                                        }
                                    } catch (Exception e18) {
                                        e = e18;
                                        str4 = str7;
                                        str = str8;
                                        linkedList = linkedList2;
                                    }
                                }
                            } catch (Exception e19) {
                                e = e19;
                                str4 = str7;
                                str = str8;
                                linkedList = linkedList2;
                                i10 = i12;
                            }
                        }
                        str4 = str7;
                        str = str8;
                        linkedList = linkedList2;
                        str5 = ".";
                        i10 = i12;
                        z14 = true;
                        z15 = false;
                        if (!z15) {
                        }
                        str3 = str4;
                        z13 = z15;
                    }
                    if (z13 && !str9.trim().isEmpty()) {
                        str9 = q2(str9);
                    }
                    LinkedList linkedList5222 = linkedList;
                    linkedList5222.add(str9.replace(str3, ""));
                    i12 = i10 + 1;
                    linkedList2 = linkedList5222;
                    str7 = str3;
                    linkedList3 = linkedList4;
                    name = str10;
                    name2 = str2;
                    z16 = z11;
                    str8 = str;
                }
            }
            z10 = z16;
            if (str9.trim().startsWith("at ")) {
            }
            if (z13) {
                str9 = q2(str9);
            }
            LinkedList linkedList52222 = linkedList;
            linkedList52222.add(str9.replace(str3, ""));
            i12 = i10 + 1;
            linkedList2 = linkedList52222;
            str7 = str3;
            linkedList3 = linkedList4;
            name = str10;
            name2 = str2;
            z16 = z11;
            str8 = str;
        }
        return linkedList2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static List<String> x2(Throwable e10) {
        LinkedList linkedList = new LinkedList();
        if (e10.getCause() != null) {
            linkedList.addAll(x2(e10.getCause()));
        }
        LinkedList linkedList2 = new LinkedList();
        e10.printStackTrace(new PrintWriter(new h(linkedList2)));
        for (int i10 = 1; i10 < linkedList2.size(); i10++) {
            String str = (String) linkedList2.get(i10);
            if (str.contains("at org.luaj.vm2.LuaValue")) {
                break;
            }
            boolean z10 = false;
            try {
                if (str.trim().startsWith("at ") && str.contains("(") && str.contains(")")) {
                    String substring = str.substring(str.lastIndexOf("(") + 1);
                    String substring2 = substring.substring(0, substring.lastIndexOf(")"));
                    int lastIndexOf = substring2.lastIndexOf(".java");
                    String substring3 = lastIndexOf > 0 ? substring2.substring(0, lastIndexOf) : substring2;
                    String substring4 = substring2.substring(substring2.lastIndexOf(b3.s.f32937c) + 1);
                    int w12 = Nc.b.w1(substring4);
                    if (d8.j.J(substring3) != null) {
                        String replace = str.replace(b3.s.f32937c + substring4, b3.s.f32937c + w12);
                        String substring5 = replace.substring(0, replace.indexOf("at ") + 3);
                        String substring6 = replace.substring(substring5.length(), replace.lastIndexOf(substring3 + ".java"));
                        String substring7 = replace.substring(replace.lastIndexOf(substring3 + ".java") + (substring3 + ".java").length());
                        String substring8 = substring7.substring(1, substring7.length() - 1);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(y2(substring5));
                        sb2.append(q2(substring6));
                        sb2.append(u2(G1(v2(substring3 + ".java", substring3 + ".java"))));
                        sb2.append(q2(b3.s.f32937c));
                        sb2.append(y2(substring8));
                        sb2.append(q2(")"));
                        str = sb2.toString();
                        z10 = true;
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            if (!z10 && !str.trim().isEmpty()) {
                str = q2(str);
            }
            linkedList.add(str.replace("JAVARuntime.", ""));
        }
        return linkedList;
    }

    public static String y2(String t10) {
        return H1(t10, "#abc023");
    }

    public void A1(String message) {
        if (Q1()) {
            message.getClass();
            if (p1()) {
                String[] split = message.split("\n");
                synchronized (this.f10221d0) {
                    for (String str : split) {
                        try {
                            P1(str);
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
            }
        }
    }

    public void B1(List<String> ts) {
        if (Q1()) {
            ts.getClass();
            if (p1()) {
                synchronized (this.f10221d0) {
                    for (int i10 = 0; i10 < ts.size(); i10++) {
                        try {
                            for (String str : ts.get(i10).split("\n")) {
                                P1(str);
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
            }
        }
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.console_panel, (ViewGroup) null);
        this.f10215X = (RecyclerView) inflate.findViewById(R.id.recyclerView);
        EditText editText = (EditText) inflate.findViewById(R.id.textInputEditText);
        this.f10216Y = editText;
        editText.setOnEditorActionListener(new m());
        n nVar = new n(A());
        this.f10217Z = nVar;
        nVar.setStackFromEnd(true);
        this.f10215X.setLayoutManager(this.f10217Z);
        J4.a aVar = new J4.a(A(), new o());
        this.f10218a0 = aVar;
        this.f10215X.setAdapter(aVar);
        this.f10215X.setItemAnimator(null);
        View findViewById = inflate.findViewById(R.id.typeActions);
        findViewById.findViewById(R.id.send).setOnClickListener(new p());
        findViewById.findViewById(R.id.down).setOnClickListener(new q());
        findViewById.findViewById(R.id.clear).setOnClickListener(new a());
        findViewById.findViewById(R.id.colapse).setOnClickListener(new b(inflate));
        View findViewById2 = inflate.findViewById(R.id.smallActions);
        findViewById2.findViewById(R.id.colapse).setOnClickListener(new c(inflate));
        findViewById2.findViewById(R.id.down).setOnClickListener(new C0251d());
        findViewById2.findViewById(R.id.clear).setOnClickListener(new e());
        inflate.findViewById(R.id.typeActions).setVisibility(8);
        inflate.findViewById(R.id.smallActions).setVisibility(0);
        List<s> list = f10214o0;
        synchronized (list) {
            list.add(this.f10224g0);
        }
        return inflate;
    }

    public void C1(String... ts) {
        if (Q1()) {
            ts.getClass();
            if (p1()) {
                synchronized (this.f10221d0) {
                    for (String str : ts) {
                        try {
                            for (String str2 : str.split("\n")) {
                                P1(str2);
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
            }
        }
    }

    public void D1(String message) {
        message.getClass();
        String[] split = message.split("\n");
        synchronized (this.f10221d0) {
            for (String str : split) {
                try {
                    if (!str.trim().isEmpty()) {
                        this.f10221d0.add(new J4.c(str));
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    @Override
    public void G0() {
        List<s> list = f10214o0;
        synchronized (list) {
            list.remove(this.f10224g0);
        }
        super.G0();
    }

    public void I1() {
        this.f10226i0 = null;
        A1(".");
    }

    public final void J1() {
        this.f10221d0.clear();
        N7.c.j0(new f());
    }

    public void K1(String message) {
        message.getClass();
        if (p1()) {
            String[] split = message.split("\n");
            synchronized (this.f10221d0) {
                for (String str : split) {
                    try {
                        P1(str);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }

    public final void P1(String t10) {
        t10.getClass();
        if (p1() && !t10.trim().isEmpty()) {
            this.f10221d0.add(new J4.c(t10));
        }
    }

    public final void d2(String t10) {
        J4.c cVar = new J4.c(Sm.b.f23785c + t10);
        synchronized (this.f10221d0) {
            this.f10221d0.add(cVar);
        }
    }

    public final void e2(List<String> ts) {
        synchronized (this.f10221d0) {
            for (int i10 = 0; i10 < ts.size(); i10++) {
                try {
                    this.f10221d0.add(new J4.c(Sm.b.f23785c + ts.get(i10)));
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    @Override
    public void i() {
        S0();
        super.i();
    }

    @Override
    public EditorPanel k() {
        return new d();
    }

    @Override
    public void n1() {
        boolean z10 = true;
        int i10 = this.f10229l0 + 1;
        this.f10229l0 = i10;
        if (i10 < 3) {
            return;
        }
        this.f10229l0 = 0;
        synchronized (this.f10220c0) {
            try {
                if (!this.f10220c0.isEmpty()) {
                    this.f10220c0.size();
                    if (this.f10217Z.findLastVisibleItemPosition() != this.f10218a0.getItemCount() - 1) {
                        z10 = false;
                    }
                    z1(this.f10220c0);
                    this.f10220c0.clear();
                    if (z10) {
                        s2();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void p2() {
        synchronized (this.f10221d0) {
            try {
                if (!this.f10221d0.isEmpty() && Q1()) {
                    J4.c cVar = null;
                    int i10 = 0;
                    int i11 = 0;
                    while (true) {
                        if (i10 >= this.f10221d0.size()) {
                            break;
                        }
                        J4.c cVar2 = this.f10221d0.get(i10);
                        if (cVar2.f10211a.startsWith(W7.b.f27301a)) {
                            cVar2.f10211a = cVar2.f10211a.substring(7);
                            if (cVar == null) {
                                this.f10223f0.add(cVar2);
                                i11 = 0;
                                cVar = cVar2;
                            } else if (i11 == 0) {
                                this.f10223f0.add(cVar2);
                            } else {
                                this.f10223f0.clear();
                            }
                        } else if (cVar2.f10211a.startsWith("T/")) {
                            this.f10222e0.add(cVar2.f10211a);
                        } else {
                            cVar2.f10211a = Sm.b.f23785c + cVar2.f10211a;
                            if (cVar != null) {
                                i11++;
                                this.f10223f0.add(cVar2);
                            }
                        }
                        i10++;
                    }
                    this.f10221d0.removeAll(this.f10223f0);
                    this.f10223f0.clear();
                    while (!this.f10222e0.isEmpty()) {
                        r2(this.f10222e0.remove(0));
                    }
                    if (!this.f10221d0.isEmpty()) {
                        synchronized (this.f10220c0) {
                            try {
                                this.f10220c0.addAll(this.f10221d0);
                                if (this.f10220c0.size() > EditorSettings.a().maxTerminalHistory) {
                                    this.f10220c0.subList(0, this.f10220c0.size() - EditorSettings.a().maxTerminalHistory).clear();
                                }
                            } finally {
                            }
                        }
                    }
                }
                this.f10221d0.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void r2(String text) {
        String substring = text.substring(2);
        J4.e eVar = this.f10226i0;
        if (eVar != null) {
            eVar.m(substring);
            return;
        }
        synchronized (this.f10227j0) {
            try {
                K4.a aVar = this.f10228k0;
                if (aVar != null) {
                    aVar.a(substring);
                    return;
                }
                for (int i10 = 0; i10 < this.f10225h0.size(); i10++) {
                    r rVar = this.f10225h0.get(i10);
                    if (rVar.c().equals(substring)) {
                        rVar.a();
                        return;
                    }
                }
                String[] split = substring.trim().split("\\s+");
                if (split.length > 0) {
                    for (int i11 = 0; i11 < C14940d.h(); i11++) {
                        J4.e g10 = C14940d.g(i11);
                        if (g10.b().equals(split[0])) {
                            this.f10226i0 = g10;
                            g10.n((String[]) Arrays.copyOfRange(split, 1, split.length), this);
                            return;
                        }
                    }
                }
                d2("Invalid command (" + substring + ") type 'help'");
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void t2(K4.a process) {
        synchronized (this.f10227j0) {
            try {
                this.f10228k0 = process;
                if (process != null) {
                    process.f10804a = new l();
                    process.b();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void z(o4.b engineUpdateData) {
        super.z(engineUpdateData);
        this.f10219b0 = w0();
    }

    public final void z1(List<J4.c> pendingLogs) {
        this.f10218a0.g(pendingLogs);
        if (this.f10218a0.getItemCount() > EditorSettings.a().maxTerminalHistory) {
            J4.a aVar = this.f10218a0;
            this.f10218a0.m(aVar.h(0, aVar.getItemCount() - EditorSettings.a().maxTerminalHistory));
        }
    }

    public static class r {

        public String f10255a;

        public String f10256b;

        public r(String name) {
            this.f10255a = name;
        }

        public void a() {
        }

        public String b() {
            return this.f10256b;
        }

        public String c() {
            return this.f10255a;
        }

        public r(String name, String info) {
            this.f10255a = name;
            this.f10256b = info;
        }
    }

    public d() {
        super(null, Lang.l(Lang.T.TERMINAL), f10212m0);
        this.f10220c0 = new LinkedList();
        this.f10221d0 = new LinkedList();
        this.f10222e0 = new LinkedList();
        this.f10223f0 = new LinkedList();
        this.f10224g0 = new j();
        this.f10225h0 = new k();
        this.f10226i0 = null;
        this.f10227j0 = new Object();
        this.f10228k0 = null;
        this.f10229l0 = 0;
    }
}
