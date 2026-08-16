package d8;

import Ic.C2633l;
import Ic.C2636o;
import JAVARuntime.Component;
import JAVARuntime.FilesPanelCustomIcon;
import JAVARuntime.FilesPanelDirectoryMenu;
import JAVARuntime.FilesPanelFileMenu;
import JAVARuntime.ObjectsPanelMenu;
import JAVARuntime.PanelInflateMenu;
import JAVARuntime.ScriptingExtension;
import JAVARuntime.SpatialObject;
import JAVARuntime.Terminal;
import JAVARuntime.TerminalCLIExtension;
import JAVARuntime.ViewPanel;
import android.app.Activity;
import android.content.Context;
import android.util.Log;
import bd.C3867a;
import com.android.dex.DexFormat;
import com.itsmagic.engine.Core.Components.JCompiler.ClassDic;
import com.itsmagic.engine.Core.Components.JCompiler.CompiledDictionary;
import com.itsmagic.engine.Core.Components.JCompiler.JavaMetaInfo;
import com.itsmagic.engine.Core.Components.JCompiler.TooManyErrorsException;
import com.itsmagic.engine.Core.Components.JCompiler.UnknownError;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.FolderManifest;
import com.itsmagic.engine.Core.Components.Settings.Server.UserSystem.UserController;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.JavaComponent.JavaComponent;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import d8.r;
import da.C12894h;
import dalvik.system.DexClassLoader;
import eb.C13050a;
import i8.C13591b;
import id.C13696a;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.Writer;
import java.lang.constant.ConstantDescs;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Predicate;
import k8.C13949b;
import k8.C13950c;
import n8.C14362a;
import n8.C14363b;
import n8.C14364c;
import n8.C14365d;
import nb.C14375a;
import o8.InterfaceC14487a;
import ob.b;
import org.eclipse.jdt.internal.compiler.batch.Main;
import org.google.googlejavaformat.java.Formatter;
import org.google.googlejavaformat.java.FormatterException;
import p8.C14937a;
import p8.C14938b;
import p8.C14939c;
import p8.C14940d;
import p8.C14941e;
import p8.C14942f;
import q8.C15046a;
import r8.C15153a;
import t3.C15377a;
import t8.C15384a;
import ug.C15608a;
import z8.C16273a;

public class j {

    public static final List<JavaMetaInfo> f84392A;

    public static boolean f84393B = false;

    public static String f84394C = null;

    public static final AtomicBoolean f84395D;

    public static String f84396E = null;

    public static final AtomicBoolean f84397F;

    public static boolean f84398a = false;

    public static boolean f84399b = false;

    public static boolean f84400c = false;

    public static boolean f84401d = false;

    public static final String f84402e = "C-R:";

    public static final int f84403f = 100;

    public static final String f84404g = "1.8";

    public static final String f84405h = "1.8";

    public static String f84406i = null;

    public static final C15046a f84407j;

    public static final String f84408k = "JCompiler";

    public static final String f84409l = "JAVARuntime";

    public static final String f84410m = "JAVARuntime";

    public static final String f84411n = "jc.javac";

    public static final String f84412o = "jpc.javac";

    public static final String f84413p = "_LIBS";

    public static CompiledDictionary f84414q;

    public static final List<JavaMetaInfo> f84415r;

    public static final List<JavaMetaInfo> f84416s;

    public static final List<e8.c> f84417t;

    public static final List<d8.r> f84418u;

    public static final List<y> f84419v;

    public static final AtomicBoolean f84420w;

    public static final AtomicBoolean f84421x;

    public static final List<Runnable> f84422y;

    public static final List<JavaMetaInfo> f84423z;

    public class a extends Writer {

        public final List f84424b;

        public a(final List val$compillerOutputs) {
            this.f84424b = val$compillerOutputs;
        }

        @Override
        public void close() throws IOException {
        }

        @Override
        public void flush() throws IOException {
        }

        @Override
        public void write(char[] cbuf, int off, int len) throws IOException {
            this.f84424b.add(new String(cbuf, off, len));
        }
    }

    public class b implements r.a {

        public final o8.g f84425a;

        public b(final o8.g val$listener) {
            this.f84425a = val$listener;
        }

        @Override
        public void onError(String msg) {
            o8.g gVar = this.f84425a;
            if (gVar != null) {
                gVar.onError(msg);
            }
        }
    }

    public class c implements r.a {

        public final o8.h f84426a;

        public c(final o8.h val$listener) {
            this.f84426a = val$listener;
        }

        @Override
        public void onError(String msg) {
            o8.h hVar = this.f84426a;
            if (hVar != null) {
                hVar.onError(msg);
            }
        }
    }

    public class d implements r.a {

        public final InterfaceC14487a f84427a;

        public d(final InterfaceC14487a val$listener) {
            this.f84427a = val$listener;
        }

        @Override
        public void onError(String msg) {
            InterfaceC14487a interfaceC14487a = this.f84427a;
            if (interfaceC14487a != null) {
                interfaceC14487a.onError(msg);
            }
        }
    }

    public class e implements r.a {
        @Override
        public void onError(String msg) {
        }
    }

    public class f implements r.a {

        public final d8.r f84428a;

        public f(final d8.r val$loadedClass) {
            this.f84428a = val$loadedClass;
        }

        @Override
        public void onError(String msg) {
            J4.d.E1();
            J4.d.M1(this.f84428a.f84452a.f72515e + b3.s.f32937c + msg);
        }
    }

    public class g implements r.a {
        @Override
        public void onError(String msg) {
            Terminal.log(msg);
        }
    }

    public class h implements r.a {
        @Override
        public void onError(String msg) {
            Terminal.log(msg);
        }
    }

    public class i implements r.a {
        @Override
        public void onError(String msg) {
            Terminal.log(msg);
        }
    }

    public class C1573j implements r.a {
        @Override
        public void onError(String msg) {
            Terminal.log(msg);
        }
    }

    public class k implements x8.b {
        public k() {
        }

        @Override
        public void a() {
            j.n0(N7.c.o());
        }

        @Override
        public void b() {
            j.t0();
        }
    }

    public class l implements Runnable {

        public final Activity f84430b;

        public class a implements Predicate<JavaMetaInfo> {
            public a() {
            }

            @Override
            public boolean test(JavaMetaInfo javaMetaInfo) {
                return !javaMetaInfo.f72511a.startsWith("_PROJECT");
            }
        }

        public l(final Activity val$activity) {
            this.f84430b = val$activity;
        }

        public void a(File folder) {
            File[] listFiles = folder.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    if (file.isDirectory()) {
                        if (file.getName().startsWith("_I") && file.getName().endsWith(".meta")) {
                            C16273a.d(file);
                        } else {
                            a(file);
                        }
                    } else if (file.getName().startsWith("_I")) {
                        file.delete();
                    }
                }
            }
        }

        @Override
        public void run() {
            j.f84394C = "Loading project";
            j.f84418u.clear();
            List<JavaMetaInfo> list = j.f84415r;
            list.clear();
            j.f84416s.clear();
            j.f84407j.b();
            C13050a.e();
            C13696a.e(this.f84430b);
            j.f84393B = j.q(this.f84430b);
            if (UserController.P()) {
                a(new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/"));
            }
            j.d0(this.f84430b);
            j.B0();
            C14375a.d();
            if (j.p(N7.c.t())) {
                j.I();
                return;
            }
            if (!UserController.P()) {
                for (JavaMetaInfo javaMetaInfo : list) {
                    if (!javaMetaInfo.f72511a.startsWith("_PROJECT")) {
                        List<d8.e> list2 = javaMetaInfo.f72514d;
                        if (list2 != null) {
                            list2.clear();
                        }
                        javaMetaInfo.f72519i = false;
                    }
                }
                j.f84416s.removeIf(new a());
            }
            if (j.e()) {
                j.U(N7.c.t());
            } else {
                j.f84394C = "Failed to extract core!";
            }
        }
    }

    public class m implements r.a {
        @Override
        public void onError(String msg) {
            Terminal.log(msg);
        }
    }

    public class n implements r.a {
        @Override
        public void onError(String msg) {
            Terminal.log(msg);
        }
    }

    public class o implements b.a {

        public final Activity f84432a;

        public o(final Activity val$activity) {
            this.f84432a = val$activity;
        }

        @Override
        public boolean run() {
            if (j.f84420w.get()) {
                return true;
            }
            j.f84397F.set(false);
            j.n0(this.f84432a);
            return false;
        }
    }

    public class p implements Runnable {

        public final JavaMetaInfo f84433b;

        public class a implements Predicate<JavaMetaInfo> {
            public a() {
            }

            @Override
            public boolean test(JavaMetaInfo javaMetaInfo) {
                return !javaMetaInfo.f72511a.startsWith("_PROJECT");
            }
        }

        public p(final JavaMetaInfo val$javaMetaInfo) {
            this.f84433b = val$javaMetaInfo;
        }

        @Override
        public void run() {
            j.h0("The script " + this.f84433b.f72515e + " will be recompiled");
            JavaMetaInfo javaMetaInfo = this.f84433b;
            javaMetaInfo.f72516f = false;
            javaMetaInfo.f72519i = false;
            javaMetaInfo.f72517g = false;
            List<JavaMetaInfo> list = j.f84416s;
            if (list.contains(javaMetaInfo)) {
                j.h0("the pendingJava list already contains the script");
            } else {
                list.add(this.f84433b);
            }
            if (j.p(N7.c.t())) {
                j.I();
                return;
            }
            if (!UserController.P()) {
                for (JavaMetaInfo javaMetaInfo2 : j.f84415r) {
                    if (!javaMetaInfo2.f72511a.startsWith("_PROJECT")) {
                        List<d8.e> list2 = javaMetaInfo2.f72514d;
                        if (list2 != null) {
                            list2.clear();
                        }
                        javaMetaInfo2.f72519i = false;
                    }
                }
                j.f84416s.removeIf(new a());
            }
            j.U(N7.c.t());
        }
    }

    public class q implements b.a {

        public final String f84435a;

        public final JavaMetaInfo f84436b;

        public q(final String val$projectName, final JavaMetaInfo val$javaMetaInfo) {
            this.f84435a = val$projectName;
            this.f84436b = val$javaMetaInfo;
        }

        @Override
        public boolean run() {
            if (!this.f84435a.equals(com.itsmagic.engine.Core.Components.ProjectController.a.T())) {
                return false;
            }
            if (j.f84420w.get()) {
                return true;
            }
            j.r0(this.f84436b);
            return false;
        }
    }

    public class r extends C15384a {

        public final List f84437b;

        public r(final List val$compillerOutputs) {
            this.f84437b = val$compillerOutputs;
        }

        @Override
        public void write(char[] cbuf, int off, int len) throws IOException {
            String str = new String(cbuf, off, len);
            if (!str.isEmpty() && str.length() >= 3 && !str.equals("----------")) {
                this.f84437b.add(str);
            }
            if (j.f84398a) {
                System.out.println("ECJ OUTPUT:" + str);
            }
        }
    }

    public class s extends SteppedArrayList<C14362a> {
        public s() {
            if (j.f84400c || UserController.P()) {
                return;
            }
            add(new C14365d());
            add(new C14363b());
            add(new C14364c());
        }
    }

    public class t extends C15384a {

        public final List f84438b;

        public t(final List val$compillerOutputs) {
            this.f84438b = val$compillerOutputs;
        }

        @Override
        public void write(char[] cbuf, int off, int len) throws IOException {
            String str = new String(cbuf, off, len);
            if (!str.isEmpty() && str.length() >= 3 && !str.equals("----------")) {
                this.f84438b.add(str);
            }
            if (j.f84398a) {
                System.out.println("ECJ OUTPUT:" + str);
            }
        }
    }

    public class u implements r.a {
        @Override
        public void onError(String msg) {
        }
    }

    public static class v {

        public File f84439a = null;

        public File f84440b = null;
    }

    public enum w {
        JAVA,
        CSHARP
    }

    public interface x {
        void a();

        void b(boolean success, List<d8.e> logs, String compiledCode);
    }

    public static class y {

        public WeakReference<Object> f84441a;

        public y(Object object) {
            this.f84441a = null;
            this.f84441a = new WeakReference<>(object);
        }

        public Object a() {
            return this.f84441a.get();
        }

        public boolean b() {
            return this.f84441a.get() != null;
        }
    }

    public static class z {

        public boolean f84442a = false;
    }

    static {
        if (C15377a.f109719g.booleanValue()) {
            f84398a = false;
            f84399b = false;
            f84400c = false;
            f84401d = false;
        }
        f84407j = new C15046a();
        f84415r = Collections.synchronizedList(new SteppedArrayList());
        f84416s = Collections.synchronizedList(new SteppedArrayList());
        f84417t = new SteppedArrayList();
        f84418u = new SteppedArrayList();
        f84419v = new SteppedArrayList();
        f84420w = new AtomicBoolean(false);
        f84421x = new AtomicBoolean(false);
        f84422y = new SteppedArrayList();
        f84423z = new SteppedArrayList();
        f84392A = new SteppedArrayList();
        f84394C = "";
        f84395D = new AtomicBoolean();
        f84397F = new AtomicBoolean();
    }

    public static void A(String PROJECT_ROOT) {
        String str = PROJECT_ROOT + "JAVARuntime/";
        new File(str).mkdirs();
        new File(str + "JAVARuntime/").mkdirs();
    }

    public static void A0(Context context) {
        C15046a c15046a = f84407j;
        if (c15046a != null) {
            X7.a.b("JAVARuntime/jlibs.config", c15046a.f(), context);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:8|9|10|(1:12)(2:44|(1:46)(9:47|14|(5:33|34|35|36|37)|16|17|18|19|20|21))|13|14|(0)|16|17|18|19|20|21) */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0183, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0191, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0196, code lost:
    
        if (d8.j.f84398a != false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x018f, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0198, code lost:
    
        JAVARuntime.Terminal.log(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0181, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0185, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x018a, code lost:
    
        if (d8.j.f84398a != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x018c, code lost:
    
        JAVARuntime.Terminal.log(r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00da A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void B(w language, String className, String code, x listener) {
        File file;
        File file2;
        String str = code;
        if (f84420w.get()) {
            listener.a();
            return;
        }
        if (!f84421x.compareAndSet(false, true)) {
            listener.a();
            return;
        }
        try {
            String str2 = com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/";
            String str3 = str2 + "JAVARuntime/";
            A(str2);
            h0("Debug Compiling " + className);
            if (language == w.JAVA) {
                file2 = new File(str3 + className + ".java");
                C2636o.e(str, file2);
            } else {
                if (language != w.CSHARP) {
                    str = null;
                    file = null;
                    String str4 = str2 + "./JAVARuntime/" + className + ".java";
                    if (!UserController.P()) {
                        try {
                            File file3 = new File(str4.replace("/./", "/"));
                            C13950c c13950c = new C13950c(Tc.b.w(str4, true));
                            c13950c.i(C2636o.c(file3));
                            new d8.g().b(c13950c);
                            c13950c.i("package JAVARuntime;\n\n" + c13950c.d());
                            C2636o.a(c13950c.d(), file3);
                            str = c13950c.d();
                        } catch (IOException e10) {
                            e10.printStackTrace();
                        }
                        C13949b.f(null, str4, str3);
                        try {
                            str = C2636o.c(new File(str4.replace("/./", "/")));
                        } catch (Exception e11) {
                            e11.printStackTrace();
                        }
                    }
                    LinkedList linkedList = new LinkedList();
                    t tVar = new t(linkedList);
                    h0("instantiating the compiler and compiling the java file");
                    boolean z10 = new Main(new PrintWriter(tVar), new PrintWriter(tVar), false, null).compile(new String[]{"-1.8", "-proc:none", "-classpath", str3, "-maxProblems", Dd.c.f5131w, "-noExit", str4});
                    h0(" ecjMain.compile result " + z10);
                    file.delete();
                    listener.b(z10, L(linkedList), str);
                    f84421x.set(false);
                }
                file2 = new File(str3 + className + ".java");
                N7.c.t();
                t8.b bVar = new t8.b(str);
                bVar.a();
                str = bVar.m();
                h0(str);
                C2636o.e(str, file2);
            }
            file = file2;
            String str42 = str2 + "./JAVARuntime/" + className + ".java";
            if (!UserController.P()) {
            }
            LinkedList linkedList2 = new LinkedList();
            t tVar2 = new t(linkedList2);
            h0("instantiating the compiler and compiling the java file");
            boolean z102 = new Main(new PrintWriter(tVar2), new PrintWriter(tVar2), false, null).compile(new String[]{"-1.8", "-proc:none", "-classpath", str3, "-maxProblems", Dd.c.f5131w, "-noExit", str42});
            h0(" ecjMain.compile result " + z102);
            file.delete();
            listener.b(z102, L(linkedList2), str);
            f84421x.set(false);
        } catch (Throwable th2) {
            f84421x.set(false);
            throw th2;
        }
    }

    public static void B0() {
        File[] listFiles;
        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/");
        if (file.exists() && file.isDirectory() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                if (!file2.getName().equals("_EDITOR") && !file2.getName().equals("JAVARuntime")) {
                    N(file2);
                }
            }
        }
    }

    public static void C(File metaFolder) {
        File[] listFiles;
        if (!metaFolder.exists() || (listFiles = metaFolder.listFiles()) == null) {
            return;
        }
        for (File file : listFiles) {
            if (!file.getName().equals(f84412o)) {
                if (file.getName().startsWith(ConstantDescs.DEFAULT_NAME)) {
                    C16273a.d(file);
                } else {
                    String v10 = Tc.b.v(file.getAbsolutePath());
                    if (v10.endsWith(".class")) {
                        new File(new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/JAVARuntime/JAVARuntime/"), v10).delete();
                    }
                    file.delete();
                }
            }
        }
    }

    public static void C0(boolean value) {
        f84420w.set(value);
    }

    public static void D(File metaFolder) {
        File[] listFiles;
        if (!metaFolder.exists() || (listFiles = metaFolder.listFiles()) == null) {
            return;
        }
        for (File file : listFiles) {
            if (!file.getName().equals(f84411n)) {
                if (file.getName().startsWith(ConstantDescs.DEFAULT_NAME)) {
                    C16273a.d(file);
                } else {
                    String v10 = Tc.b.v(file.getAbsolutePath());
                    if (v10.endsWith(".class")) {
                        new File(new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/JAVARuntime/JAVARuntime/"), v10).delete();
                    }
                    file.delete();
                }
            }
        }
    }

    public static boolean D0(JavaMetaInfo javaMetaInfo) {
        if (javaMetaInfo == null || !javaMetaInfo.f72517g) {
            return false;
        }
        javaMetaInfo.f72518h = false;
        javaMetaInfo.f72519i = false;
        return true;
    }

    public static String E(Class classType) {
        for (int i10 = 0; i10 < K0(); i10++) {
            d8.r J02 = J0(i10);
            if (J02.f84454c == classType) {
                return J02.f84452a.f72511a;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static List<String> E0(Throwable e10) {
        LinkedList linkedList = new LinkedList();
        e10.printStackTrace(new PrintWriter(new a(linkedList)));
        String name = d8.m.class.getName();
        String name2 = JavaComponent.class.getName();
        LinkedList linkedList2 = new LinkedList();
        for (int i10 = 0; i10 < linkedList.size(); i10++) {
            String str = (String) linkedList.get(i10);
            if (str.contains(name + ".execute") || str.contains(name2)) {
                break;
            }
            try {
                if (str.trim().startsWith("at ") && str.contains("(") && str.contains(")")) {
                    String substring = str.substring(str.lastIndexOf("(") + 1);
                    String substring2 = substring.substring(0, substring.lastIndexOf(")"));
                    if (substring2.contains(".java")) {
                        String substring3 = substring2.substring(0, substring2.lastIndexOf(".java"));
                        String substring4 = substring2.substring(substring2.lastIndexOf(b3.s.f32937c) + 1);
                        int w12 = Nc.b.w1(substring4);
                        j jVar = W7.b.f27310j;
                        if (J(substring3) != null) {
                            str = str.replace(b3.s.f32937c + substring4, b3.s.f32937c + w12);
                        }
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            linkedList2.add(str.replace("JAVARuntime.", ""));
        }
        return linkedList2;
    }

    public static String F(String className) {
        for (int i10 = 0; i10 < K0(); i10++) {
            d8.r J02 = J0(i10);
            if (J02.f84453b.equals(className)) {
                return J02.f84452a.f72511a;
            }
        }
        return null;
    }

    public static void F0(GameObject gameObject, String className, InterfaceC14487a listener) {
        if (gameObject == null) {
            if (listener != null) {
                listener.onError("Null gameObject");
                return;
            }
            return;
        }
        for (int i10 = 0; i10 < K0(); i10++) {
            d8.r J02 = J0(i10);
            if (J02.f84453b.equals(className)) {
                if (!J02.e()) {
                    if (listener != null) {
                        listener.onError(new C3867a("Java class doesn't extends Component", "Classe Java precisa extender Component").toString());
                        return;
                    }
                    return;
                }
                Object j10 = J02.j(new d(listener));
                if (j10 == null || j10 == Component.class || !Component.class.isAssignableFrom(j10.getClass())) {
                    return;
                }
                JavaComponent javaComponent = new JavaComponent((Component) j10, J02.f84454c, J02.f84452a);
                javaComponent.f79250n = gameObject;
                gameObject.r(javaComponent);
                return;
            }
        }
        if (listener != null) {
            listener.onError(new C3867a("Script not found, check that the script compiled without errors. When it is compiled it will appear here, it is not necessary to remove and put it again!\nThe settings of the variables are still saved.", "Script n\u00e3o encontrado, verifique se o script compilou sem erros. Quando ele for compilado ir\u00e1 aparecer aqui, n\u00e3o \u00e9 necessario remover e colocar novamente!\nAs configura\u00e7\u00f5es das variaveis continuam salvas.").toString());
        }
    }

    public static void G() {
        List<y> list;
        int i10 = 0;
        C0(false);
        com.itsmagic.engine.Engines.Engine.World.a.i(new d8.s());
        synchronized (f84419v) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            int i11 = 0;
            while (true) {
                list = f84419v;
                if (i11 >= list.size()) {
                    break;
                }
                y yVar = list.get(i11);
                if (yVar.b()) {
                    Object a10 = yVar.a();
                    for (Method method : a10.getClass().getDeclaredMethods()) {
                        if (method.getName().equals("onCompilerFinish") && method.getParameterTypes().length == 0 && Modifier.isPublic(method.getModifiers())) {
                            try {
                                method.invoke(a10, null);
                            } catch (IllegalAccessException e10) {
                                e10.printStackTrace();
                            } catch (InvocationTargetException e11) {
                                e11.printStackTrace();
                            }
                        }
                    }
                } else {
                    steppedArrayList.add(yVar);
                }
                i11++;
            }
            list.removeAll(steppedArrayList);
            steppedArrayList.clear();
        }
        synchronized (f84422y) {
            while (true) {
                try {
                    List<Runnable> list2 = f84422y;
                    if (i10 < list2.size()) {
                        list2.get(i10).run();
                        i10++;
                    }
                } finally {
                }
            }
        }
    }

    public static Class G0(String className) {
        String y10 = y(className);
        for (int i10 = 0; i10 < K0(); i10++) {
            d8.r J02 = J0(i10);
            if (J02 != null && J02.f84453b.equals(y10)) {
                return J02.f84454c;
            }
        }
        return null;
    }

    public static void H() {
        Context t10 = N7.c.t();
        h0("Compiler finished");
        g0(t10);
        C0(false);
        Iterator<JavaMetaInfo> it = f84415r.iterator();
        while (true) {
            if (!it.hasNext()) {
                f84394C = "Success";
                break;
            } else if (!it.next().f72516f) {
                f84394C = "Failed";
                break;
            }
        }
        if (f84395D.compareAndSet(true, false)) {
            n0(N7.c.o());
            System.out.println("RESTARTING PROJECT DUE FAILS");
        }
    }

    public static void H0(String className, o8.g listener) {
        for (int i10 = 0; i10 < K0(); i10++) {
            d8.r J02 = J0(i10);
            if (J02 != null && J02.f84453b.equals(className)) {
                if (!J02.e()) {
                    if (listener != null) {
                        listener.onError(new C3867a("Java class doesn't extends Component", "Classe Java precisa extender Component").toString());
                        return;
                    }
                    return;
                } else {
                    Object j10 = J02.j(new b(listener));
                    if (j10 == null || J02.f84454c == Component.class || !Component.class.isAssignableFrom(j10.getClass())) {
                        return;
                    }
                    listener.a((Component) j10, J02.f84454c, J02.f84452a);
                    return;
                }
            }
        }
        if (listener != null) {
            listener.onError(new C3867a("Script not found, check that the script compiled without errors. When it is compiled it will appear here, it is not necessary to remove and put it again!\nThe settings of the variables are still saved.", "Script n\u00e3o encontrado, verifique se o script compilou sem erros. Quando ele for compilado ir\u00e1 aparecer aqui, n\u00e3o \u00e9 necessario remover e colocar novamente!\nAs configura\u00e7\u00f5es das variaveis continuam salvas.").toString());
        }
    }

    public static void I() {
        N7.c.t();
        h0("Compiler finished");
        C0(false);
        f84394C = "Failed";
        G();
        if (f84395D.compareAndSet(true, false)) {
            n0(N7.c.o());
            System.out.println("RESTARTING PROJECT DUE FAILS");
        }
    }

    public static void I0(String className, o8.h listener) {
        for (int i10 = 0; i10 < K0(); i10++) {
            d8.r J02 = J0(i10);
            if (J02 != null && J02.f84453b.equals(className)) {
                if (!J02.i()) {
                    if (listener != null) {
                        listener.onError(new C3867a("Java class doesn't extends ViewPanel", "Classe Java precisa extender ViewPanel").toString());
                        return;
                    }
                    return;
                } else {
                    Object j10 = J02.j(new c(listener));
                    if (j10 == null || J02.f84454c == ViewPanel.class || !ViewPanel.class.isAssignableFrom(j10.getClass())) {
                        return;
                    }
                    listener.a((ViewPanel) j10, J02.f84454c, J02.f84452a);
                    return;
                }
            }
        }
        if (listener != null) {
            listener.onError(new C3867a("Script not found, check that the script compiled without errors. When it is compiled it will appear here, it is not necessary to remove and put it again!\nThe settings of the variables are still saved.", "Script n\u00e3o encontrado, verifique se o script compilou sem erros. Quando ele for compilado ir\u00e1 aparecer aqui, n\u00e3o \u00e9 necessario remover e colocar novamente!\nAs configura\u00e7\u00f5es das variaveis continuam salvas.").toString());
        }
    }

    public static JavaMetaInfo J(String name) {
        JavaMetaInfo javaMetaInfo;
        if (name == null || name.isEmpty()) {
            throw new NullPointerException("name can`t be null or empty");
        }
        if (name.startsWith("JAVARuntime.")) {
            name = name.substring(12);
        }
        int i10 = 0;
        while (true) {
            List<JavaMetaInfo> list = f84415r;
            if (i10 >= list.size()) {
                return null;
            }
            try {
                javaMetaInfo = list.get(i10);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (javaMetaInfo.f72515e.equals(name)) {
                return javaMetaInfo;
            }
            i10++;
        }
    }

    public static d8.r J0(int idx) {
        d8.r rVar;
        List<d8.r> list = f84418u;
        synchronized (list) {
            try {
                try {
                    rVar = list.get(idx);
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return rVar;
    }

    public static Class K(String name) {
        if (name.startsWith("JAVARuntime.")) {
            name = name.substring(12);
        }
        for (d8.r rVar : f84418u) {
            if (rVar.f84454c.getSimpleName().equals(name)) {
                return rVar.f84454c;
            }
        }
        return null;
    }

    public static int K0() {
        int size;
        List<d8.r> list = f84418u;
        synchronized (list) {
            size = list.size();
        }
        return size;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x010c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0011 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static List<d8.e> L(List<String> stringOutputs) {
        d8.e gVar;
        LinkedList linkedList = new LinkedList();
        while (true) {
            d8.e eVar = null;
            for (String str : stringOutputs) {
                if (eVar == null) {
                    try {
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        if (!f84398a) {
                        }
                    }
                    if (str.contains(". WARNING in ")) {
                        gVar = new t8.g();
                    } else if (str.contains(". ERROR in ")) {
                        gVar = new t8.d();
                    }
                    eVar = gVar;
                } else if (str.startsWith(" (at line")) {
                    eVar.f(Nc.b.x1(str.replace(" (at line ", "").replace(")", ""), 0) - 1);
                    String[] split = str.split("\n");
                    StringBuilder sb2 = new StringBuilder();
                    for (int i10 = 1; i10 < split.length; i10++) {
                        String str2 = split[i10];
                        if (i10 >= split.length - 1) {
                            String replace = str2.replace("\n", "");
                            if (replace.length() > 1) {
                                sb2.append(replace.substring(1));
                            } else {
                                sb2.append(replace);
                            }
                        } else if (str2.length() > 1) {
                            sb2.append(str2.substring(1));
                            sb2.append("\n");
                        } else {
                            sb2.append(str2);
                            sb2.append("\n");
                        }
                    }
                    eVar.g(sb2.toString());
                } else {
                    if (str.contains("Syntax error, parameterized types are only available if source level is 1.5 or greater")) {
                        str = eVar.f84381a.contains("SteppedArrayList<") ? "Use of <> with SteppedArrayList is not supported yet, you can fix it by using non-typed: SteppedArrayList variableName" : eVar.f84381a.contains("List<") ? "Use of <> with List is not supported yet, you can fix it by using non-typed: List variableName" : "Use of <> is not support yet, is not necessary in this case, remove <>";
                    } else if (str.contains("Syntax error, annotations are only available if source level is 1.5 or greater")) {
                        str = "annotations is not supported yet.";
                    } else if (str.contains("are only available if source level is 1.5 or greater")) {
                        str = str.replace("are only available if source level is 1.5 or greater", "are not supported yet.");
                    }
                    eVar.e(str);
                    if (str.contains("The serializable class Controller does not declare a static final serialVersionUID field of type long")) {
                        eVar = null;
                    }
                    if (eVar != null) {
                        try {
                            linkedList.add(eVar);
                            break;
                        } catch (Exception e11) {
                            e11.printStackTrace();
                            if (f84398a) {
                                J4.d.V1(e11);
                            }
                        }
                    } else {
                        continue;
                    }
                }
                e10.printStackTrace();
                if (!f84398a) {
                    J4.d.V1(e10);
                }
            }
            return linkedList;
        }
    }

    public static List<d8.o> M() {
        Object j10;
        LinkedList linkedList = new LinkedList();
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < K0(); i10++) {
            d8.r J02 = J0(i10);
            try {
                if (J02.e() && (j10 = J02.j(new e())) != null && !J02.b().contains("$")) {
                    String componentMenu = ((Component) j10).getComponentMenu();
                    if (componentMenu == null) {
                        componentMenu = "";
                    }
                    String str = componentMenu + "/" + J02.f84453b;
                    if (str.startsWith("/")) {
                        str = str.substring(1);
                    }
                    String replace = str.replace("//", "/");
                    String v10 = Tc.b.v(J02.f84452a.originalFileName);
                    if (!hashSet.contains(v10)) {
                        linkedList.add(new d8.o(replace, ((Component) j10).getComponentColor(), v10));
                        hashSet.add(v10);
                    }
                }
            } catch (Error e10) {
                e = e10;
                e.printStackTrace();
            } catch (Exception e11) {
                e = e11;
                e.printStackTrace();
            }
        }
        return linkedList;
    }

    public static void N(File file) {
        if (file == null || !file.exists()) {
            return;
        }
        if (!file.isDirectory()) {
            if (C2633l.b(Tc.b.t(file.getPath()), C2633l.d(".java"))) {
                j(file);
                return;
            }
            return;
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                N(file2);
            }
        }
    }

    public static String O(File file) {
        String w10 = Tc.b.w(file.getAbsolutePath(), true);
        return Tc.b.u(file.getAbsolutePath()) + "/" + w10 + ".meta/";
    }

    public static String[] P(File runtimeFolder) {
        File[] listFiles = runtimeFolder.listFiles(new FilenameFilter() {
            @Override
            public final boolean accept(File file, String str) {
                boolean b02;
                b02 = j.b0(file, str);
                return b02;
            }
        });
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (File file : listFiles) {
            if (file.getName().startsWith("rj_")) {
                if (!file.setReadOnly()) {
                    throw new RuntimeException("Failed to set readonly " + file.getAbsolutePath());
                }
                steppedArrayList.add(file.getAbsolutePath());
            }
        }
        return (String[]) steppedArrayList.toArray(new String[0]);
    }

    public static List<d8.q> Q() {
        LinkedList linkedList = new LinkedList();
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < K0(); i10++) {
            d8.r J02 = J0(i10);
            try {
                if (J02.i()) {
                    J02.j(new f(J02));
                    if (!J02.b().contains("$")) {
                        PanelInflateMenu panelInflateMenu = (PanelInflateMenu) J02.f84454c.getAnnotation(PanelInflateMenu.class);
                        String str = (panelInflateMenu != null ? panelInflateMenu.value() : "") + "/" + J02.f84453b;
                        if (str.startsWith("/")) {
                            str = str.substring(1);
                        }
                        String replace = str.replace("//", "/");
                        String v10 = Tc.b.v(J02.f84452a.originalFileName);
                        if (!hashSet.contains(v10)) {
                            linkedList.add(new d8.q(replace, v10));
                            hashSet.add(v10);
                        }
                    }
                }
            } catch (Error e10) {
                e = e10;
                e.printStackTrace();
            } catch (Exception e11) {
                e = e11;
                e.printStackTrace();
            }
        }
        return linkedList;
    }

    public static boolean R() {
        boolean z10;
        List<d8.r> list = f84418u;
        synchronized (list) {
            z10 = !list.isEmpty();
        }
        return z10;
    }

    public static int S(DexClassLoader cl2, JavaMetaInfo javaMetaInfo, String classFile) {
        h0("instantiating DexClassLoader and loading class");
        try {
            d8.r rVar = new d8.r(javaMetaInfo, classFile, cl2.loadClass("JAVARuntime." + classFile));
            javaMetaInfo.f72526p.add(rVar);
            n(rVar);
            return 0;
        } catch (Throwable th2) {
            h0("Error while instantiating class: " + th2.getMessage());
            th2.printStackTrace();
            if (f84398a) {
                J4.d.V1(th2);
            }
            javaMetaInfo.f72516f = false;
            javaMetaInfo.f72519i = true;
            javaMetaInfo.f72513c.clear();
            d8.e eVar = new d8.e(true);
            List<String> E02 = E0(th2);
            eVar.f84381a = "";
            eVar.f84383c = 0;
            for (int i10 = 0; i10 < E02.size(); i10++) {
                String str = E02.get(i10);
                if (str.contains("java.lang.VMClassLoader")) {
                    break;
                }
                if (str.contains("(declaration of")) {
                    try {
                        str = str.substring(0, str.indexOf("(declaration of"));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                eVar.f84381a += str.replace("LJAVARuntime/", "").replace("java.lang.LinkageError: ", "").replace(classFile + ".", "");
                if (i10 >= 3) {
                    break;
                }
            }
            eVar.f84382b = "Failed to initialize class after compilation";
            javaMetaInfo.f72514d.add(eVar);
            return 1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0154  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int T(DexClassLoader cl2) {
        JavaMetaInfo javaMetaInfo;
        File[] listFiles;
        File[] fileArr;
        int i10;
        JavaMetaInfo javaMetaInfo2;
        int i11;
        JavaMetaInfo javaMetaInfo3;
        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/");
        int i12 = 0;
        int i13 = 0;
        while (true) {
            List<JavaMetaInfo> list = f84415r;
            if (i13 >= list.size()) {
                javaMetaInfo = null;
                break;
            }
            javaMetaInfo = list.get(i13);
            if (javaMetaInfo.f72511a.equals("_PROJECT/Scripts/_JContainer.java")) {
                break;
            }
            i13++;
        }
        if (javaMetaInfo == null) {
            return 0;
        }
        File file2 = new File(file, javaMetaInfo.f72512b);
        if (!file2.exists() || !file2.isDirectory() || (listFiles = file2.listFiles()) == null) {
            return 0;
        }
        int i14 = 0;
        int i15 = 0;
        for (int length = listFiles.length; i14 < length; length = i10) {
            File file3 = listFiles[i14];
            if (file3.getAbsolutePath().endsWith(".class")) {
                String replace = Tc.b.w(file3.getAbsolutePath(), true).replace("_JContainer$", "");
                if (replace.contains("$")) {
                    replace = replace.substring(i12, replace.indexOf("$"));
                }
                int i16 = i12;
                while (true) {
                    List<JavaMetaInfo> list2 = f84415r;
                    fileArr = listFiles;
                    if (i16 >= list2.size()) {
                        javaMetaInfo3 = null;
                        break;
                    }
                    JavaMetaInfo javaMetaInfo4 = list2.get(i16);
                    if (Tc.b.w(javaMetaInfo4.f72511a, true).equals(replace)) {
                        javaMetaInfo3 = javaMetaInfo4;
                        break;
                    }
                    i16++;
                    listFiles = fileArr;
                }
                if (javaMetaInfo3 != null) {
                    if (f84392A.contains(javaMetaInfo3)) {
                        C2636o.f(javaMetaInfo.compiledCode, javaMetaInfo3.f());
                    }
                    C13696a.a(file3, new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + Tc.b.O(javaMetaInfo3.f72511a) + ".meta/" + file3.getName()));
                    List<d8.d> list3 = javaMetaInfo3.f72513c;
                    String replace2 = Tc.b.v(file3.getAbsolutePath()).replace("_JContainer$", "");
                    StringBuilder sb2 = new StringBuilder();
                    i10 = length;
                    sb2.append(Tc.b.v(file3.getAbsolutePath()).replace("_JContainer$", ""));
                    sb2.append(".dex");
                    list3.add(new d8.d(replace2, sb2.toString()));
                    if (!file3.getAbsolutePath().endsWith("Scripts/_JContainer.meta/_JContainer.dex")) {
                        i15 += S(cl2, javaMetaInfo, Tc.b.w(file3.getAbsolutePath(), true));
                    } else if (file3.getAbsolutePath().endsWith(".dex")) {
                        String replace3 = Tc.b.w(file3.getAbsolutePath(), true).replace("_JContainer$", "");
                        String substring = replace3.contains("$") ? replace3.substring(0, replace3.indexOf("$")) : replace3;
                        int i17 = 0;
                        while (true) {
                            List<JavaMetaInfo> list4 = f84415r;
                            if (i17 >= list4.size()) {
                                javaMetaInfo2 = null;
                                break;
                            }
                            javaMetaInfo2 = list4.get(i17);
                            if (Tc.b.w(javaMetaInfo2.f72511a, true).equals(substring)) {
                                break;
                            }
                            i17++;
                        }
                        if (javaMetaInfo2 != null) {
                            C13696a.a(file3, new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + Tc.b.O(javaMetaInfo2.f72511a) + ".meta/" + file3.getName()));
                            javaMetaInfo2.f72516f = true;
                            i11 = 0;
                            javaMetaInfo2.f72519i = false;
                            i15 += S(cl2, javaMetaInfo2, replace3);
                            i14++;
                            i12 = i11;
                            listFiles = fileArr;
                        }
                    }
                    i11 = 0;
                    i14++;
                    i12 = i11;
                    listFiles = fileArr;
                }
            } else {
                fileArr = listFiles;
            }
            i10 = length;
            if (!file3.getAbsolutePath().endsWith("Scripts/_JContainer.meta/_JContainer.dex")) {
            }
            i11 = 0;
            i14++;
            i12 = i11;
            listFiles = fileArr;
        }
        return i15;
    }

    public static void U(Context context) {
        int i10;
        List<JavaMetaInfo> list = f84416s;
        if (list.isEmpty()) {
            H();
            return;
        }
        Iterator<JavaMetaInfo> it = list.iterator();
        boolean z10 = true;
        while (true) {
            i10 = 0;
            if (!it.hasNext()) {
                break;
            } else if (!it.next().f72517g) {
                z10 = false;
            }
        }
        if (z10) {
            h0("Compiler stopped with pending scripts " + f84416s.size());
            g0(context);
            f84394C = "Failed";
            if (f84395D.compareAndSet(true, false)) {
                n0(N7.c.o());
                System.out.println("RESTARTING PROJECT DUE FAILS");
                return;
            }
            return;
        }
        C0(true);
        f84394C = "Building";
        JavaMetaInfo javaMetaInfo = null;
        while (true) {
            if (javaMetaInfo != null && !javaMetaInfo.f72517g) {
                h0("Starting file " + javaMetaInfo.f72511a + " ===========================");
                List<JavaMetaInfo> list2 = f84416s;
                list2.remove(javaMetaInfo);
                t(javaMetaInfo);
                if (javaMetaInfo.f72520j) {
                    list2.remove(javaMetaInfo);
                    f84415r.remove(javaMetaInfo);
                } else if (javaMetaInfo.f72516f) {
                    o8.f fVar = javaMetaInfo.f72521k;
                    if (fVar != null) {
                        fVar.a();
                    }
                    h0(javaMetaInfo.f72511a + " compile success");
                } else {
                    o8.f fVar2 = javaMetaInfo.f72521k;
                    if (fVar2 != null) {
                        fVar2.b();
                    }
                    h0(javaMetaInfo.f72511a + " compile errors, scheduling");
                }
                h0("Finish file " + javaMetaInfo.f72511a + " ===========================");
                U(context);
                return;
            }
            if (javaMetaInfo != null) {
                try {
                    if (javaMetaInfo.f72517g) {
                        i10++;
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    if (f84398a) {
                        Terminal.log(e10);
                    }
                    g0(context);
                    return;
                }
            }
            List<JavaMetaInfo> list3 = f84416s;
            if (list3.size() <= i10) {
                U(context);
                return;
            }
            javaMetaInfo = list3.get(i10);
        }
    }

    public static boolean V() {
        int i10 = 0;
        while (true) {
            List<JavaMetaInfo> list = f84415r;
            if (i10 >= list.size()) {
                return true;
            }
            try {
                JavaMetaInfo javaMetaInfo = list.get(i10);
                if (javaMetaInfo != null && !javaMetaInfo.f72516f) {
                    return false;
                }
                i10++;
            } catch (Exception e10) {
                e10.printStackTrace();
                return true;
            }
        }
    }

    public static boolean W() {
        return f84420w.get();
    }

    public static boolean X(String className) {
        return Y(className, true);
    }

    public static boolean Y(String className, boolean caseSensitive) {
        if (className != null && !className.isEmpty()) {
            if (className.equals("temp")) {
                return true;
            }
            String y10 = y(className);
            for (int i10 = 0; i10 < k0(); i10++) {
                e8.c j02 = j0(i10);
                if (caseSensitive) {
                    if (j02 != null && j02.d().equals(y10)) {
                        return true;
                    }
                } else if (j02 != null && j02.d().equalsIgnoreCase(y10)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean Z(String className) {
        return a0(className, true);
    }

    public static boolean a0(String className, boolean caseSensitive) {
        if (className != null && !className.isEmpty()) {
            if (className.equals("temp")) {
                return true;
            }
            String y10 = y(className);
            for (int i10 = 0; i10 < k0(); i10++) {
                e8.c j02 = j0(i10);
                if (caseSensitive) {
                    if (j02 != null && j02.d().equals(y10)) {
                        return true;
                    }
                } else if (j02 != null && j02.d().equalsIgnoreCase(y10)) {
                    return true;
                }
            }
            for (int i11 = 0; i11 < K0(); i11++) {
                d8.r J02 = J0(i11);
                if (caseSensitive) {
                    if (J02.f84453b.equals(y10)) {
                        return true;
                    }
                } else if (J02.f84453b.equalsIgnoreCase(y10)) {
                    return true;
                }
            }
            try {
                Class.forName("JAVARuntime." + y10);
                return true;
            } catch (ClassNotFoundException e10) {
                e10.printStackTrace();
            }
        }
        return false;
    }

    public static boolean b0(File file, String str) {
        return str.endsWith(".dex");
    }

    public static boolean c0(JavaMetaInfo javaMetaInfo, File metaFolder, File preCompiledFile, C13950c javaCode) {
        File[] listFiles = metaFolder.listFiles();
        if (listFiles == null || listFiles.length <= 0) {
            return true;
        }
        boolean z10 = false;
        boolean z11 = false;
        for (File file : listFiles) {
            if (file.getName().endsWith(".class")) {
                z11 = true;
            }
            if (file.getName().endsWith(".dex")) {
                z10 = true;
            }
        }
        if (!z10 || !z11 || listFiles == null || listFiles.length <= 0) {
            return true;
        }
        String s10 = X7.a.s(javaMetaInfo.f72511a, N7.c.t());
        if (s10 == null) {
            s10 = "";
        }
        File file2 = new File(metaFolder, f84411n);
        if (!file2.exists() || !s10.equals(X7.a.z(file2.getAbsolutePath(), N7.c.t())) || !preCompiledFile.exists()) {
            return true;
        }
        try {
            javaCode.i(C2636o.c(preCompiledFile));
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return true;
        }
    }

    public static void d0(Context context) {
        f84407j.c(X7.a.s("JAVARuntime/jlibs.config", context));
    }

    public static boolean e() {
        return e0();
    }

    public static boolean e0() {
        return C13696a.p(com.itsmagic.engine.Core.Components.ProjectController.a.T());
    }

    public static String f0(File file) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            InputStreamReader inputStreamReader = new InputStreamReader(fileInputStream);
            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
            String str = "";
            for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                str = str + readLine + "\n";
            }
            bufferedReader.close();
            inputStreamReader.close();
            fileInputStream.close();
            return str;
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
            if (f84398a) {
                Terminal.log((Exception) e10);
            }
            return "";
        } catch (IOException e11) {
            e11.printStackTrace();
            if (f84398a) {
                Terminal.log((Exception) e11);
            }
            return "";
        }
    }

    public static void g0(Context context) {
        f84394C = "Preparing ambient";
        d8.k.b();
        if (!UserController.P()) {
            f84394C = "Importing libs";
            d8.k.i();
        }
        f84394C = "Loading classes";
        try {
            s0();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        f84394C = "Cleaning ambient";
        d8.k.f();
        if (!UserController.P()) {
            f84394C = "Saving libs";
            A0(context);
        }
        u0();
        G();
        int i10 = 0;
        while (true) {
            List<JavaMetaInfo> list = f84415r;
            if (i10 >= list.size()) {
                return;
            }
            JavaMetaInfo javaMetaInfo = list.get(i10);
            if (javaMetaInfo.f72516f && !javaMetaInfo.referencesUpdatedV2 && !UserController.P()) {
                try {
                    javaMetaInfo.referencesUpdatedV2 = true;
                    File file = new File(new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/"), javaMetaInfo.f72512b);
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    String z10 = X7.a.z(new File(file, f84411n).getAbsolutePath(), N7.c.t());
                    if (z10 != null && !z10.isEmpty()) {
                        C12884a.a(z10, javaMetaInfo);
                    }
                    File file2 = javaMetaInfo.f72523m;
                    if (file2 != null) {
                        X7.a.h(file2, X7.a.m().toJson(javaMetaInfo));
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
            i10++;
        }
    }

    public static void h0(String message) {
        if (f84398a) {
            if (!f84399b) {
                Log.d(f84408k, message);
                return;
            }
            Terminal.log("JCompiler:" + message);
        }
    }

    public static Object i0(String name) {
        if (name.startsWith("JAVARuntime.")) {
            name = name.substring(12);
        }
        for (d8.r rVar : f84418u) {
            if (rVar.f84454c.getSimpleName().equals(name)) {
                return rVar.j(new u());
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00bd A[Catch: Exception -> 0x004c, TryCatch #0 {Exception -> 0x004c, blocks: (B:6:0x0012, B:7:0x0037, B:9:0x003d, B:15:0x004f, B:18:0x0060, B:20:0x006b, B:22:0x0071, B:26:0x009f, B:28:0x00bd, B:29:0x00d9, B:32:0x00ce, B:35:0x0085, B:25:0x0077), top: B:5:0x0012, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ce A[Catch: Exception -> 0x004c, TryCatch #0 {Exception -> 0x004c, blocks: (B:6:0x0012, B:7:0x0037, B:9:0x003d, B:15:0x004f, B:18:0x0060, B:20:0x006b, B:22:0x0071, B:26:0x009f, B:28:0x00bd, B:29:0x00d9, B:32:0x00ce, B:35:0x0085, B:25:0x0077), top: B:5:0x0012, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static JavaMetaInfo j(File file) {
        JavaMetaInfo javaMetaInfo;
        String x10;
        if (!C2633l.b(file.getAbsolutePath(), ".java")) {
            return null;
        }
        try {
            String replace = file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/", "");
            for (JavaMetaInfo javaMetaInfo2 : f84415r) {
                if (javaMetaInfo2.f72511a.equals(replace)) {
                    return javaMetaInfo2;
                }
            }
            String O10 = O(file);
            File file2 = new File(O10);
            if (file2.exists()) {
                File file3 = new File(file2, "jmi.config");
                if (file3.exists() && (x10 = X7.a.x(file3)) != null && !x10.isEmpty()) {
                    try {
                        javaMetaInfo = (JavaMetaInfo) X7.a.m().fromJson(x10, JavaMetaInfo.class);
                    } catch (Exception e10) {
                        System.out.println("FAILED JSON:" + x10);
                        e10.printStackTrace();
                    }
                    String replace2 = O10.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/", "");
                    if (javaMetaInfo != null) {
                        javaMetaInfo = new JavaMetaInfo();
                        javaMetaInfo.m(replace, replace2, Tc.b.w(file.getAbsolutePath(), true));
                    } else {
                        javaMetaInfo.m(replace, replace2, Tc.b.w(file.getAbsolutePath(), true));
                    }
                    javaMetaInfo.f72523m = new File(file2, "jmi.config");
                    f84416s.add(javaMetaInfo);
                    f84415r.add(javaMetaInfo);
                    javaMetaInfo.f72517g = false;
                    h0("Java found " + replace + " meta " + replace2);
                    return javaMetaInfo;
                }
            }
            javaMetaInfo = null;
            String replace22 = O10.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/", "");
            if (javaMetaInfo != null) {
            }
            javaMetaInfo.f72523m = new File(file2, "jmi.config");
            f84416s.add(javaMetaInfo);
            f84415r.add(javaMetaInfo);
            javaMetaInfo.f72517g = false;
            h0("Java found " + replace + " meta " + replace22);
            return javaMetaInfo;
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static e8.c j0(int idx) {
        e8.c cVar;
        List<e8.c> list = f84417t;
        synchronized (list) {
            cVar = list.get(idx);
        }
        return cVar;
    }

    public static void k(Runnable r10) {
        List<Runnable> list = f84422y;
        synchronized (list) {
            list.add(r10);
        }
    }

    public static int k0() {
        int size;
        List<e8.c> list = f84417t;
        synchronized (list) {
            size = list.size();
        }
        return size;
    }

    public static void l(Object object) {
        boolean z10 = false;
        for (Method method : object.getClass().getDeclaredMethods()) {
            if (method.getName().equals("onCompilerFinish") && method.getParameterTypes().length == 0 && Modifier.isPublic(method.getModifiers())) {
                z10 = true;
            }
        }
        if (!z10) {
            throw new IllegalArgumentException("the listener object should have a \"onCompilerFinish\" public method");
        }
        if (u(object)) {
            return;
        }
        List<y> list = f84419v;
        synchronized (list) {
            list.add(new y(object));
        }
    }

    public static void l0() {
        int i10;
        for (int i11 = 0; i11 < K0(); i11++) {
            d8.r J02 = J0(i11);
            List<Field> j10 = J02.f84452a.j(J02.f84454c);
            for (0; i10 < j10.size(); i10 + 1) {
                Field field = j10.get(i10);
                try {
                    field.setAccessible(true);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                i10 = (field.getType() == SpatialObject.class || field.getType() == Component.class) ? 0 : i10 + 1;
                field.set(null, null);
            }
        }
    }

    public static void m(e8.c officialClass) {
        List<e8.c> list = f84417t;
        synchronized (list) {
            try {
                if (!list.contains(officialClass)) {
                    list.add(officialClass);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void n(d8.r loadedClass) {
        List<d8.r> list = f84418u;
        synchronized (list) {
            try {
                if (!list.contains(loadedClass)) {
                    if (loadedClass.a() != null) {
                        try {
                            for (d8.r rVar : list) {
                                if (rVar != null && rVar.a() != null && rVar.b().equals(loadedClass.b())) {
                                    return;
                                }
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                    f84418u.add(loadedClass);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void n0(Activity activity) {
        if (com.itsmagic.engine.Core.Components.ProjectController.a.T().equals("") || Objects.equals(f84406i, com.itsmagic.engine.Core.Components.ProjectController.a.T())) {
            return;
        }
        if (f84420w.compareAndSet(false, true)) {
            O9.b.d(new l(activity));
        } else if (f84397F.compareAndSet(false, true)) {
            K8.a.J(new ob.b(new o(activity)));
        }
    }

    public static boolean o(JavaMetaInfo javaMetaInfo, File metaFolder, String PROJECT_ROOT, String RUNTIME_FOLDER, File projectRoot, C15153a totalCode, C13950c javaCode, File preCompiledFile) {
        if (!Tc.b.w(javaMetaInfo.f72511a, true).equals("R")) {
            if (o0(javaMetaInfo, metaFolder, PROJECT_ROOT, RUNTIME_FOLDER, projectRoot, totalCode, javaCode).f84442a) {
                return false;
            }
            D0(javaMetaInfo);
            return true;
        }
        try {
            javaCode.i(C2636o.c(preCompiledFile));
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return true;
        }
    }

    public static z o0(JavaMetaInfo javaMetaInfo, File metaFolder, String PROJECT_ROOT, String RUNTIME_FOLDER, File projectRoot, C15153a totalCode, C13950c javaCode) {
        z zVar = new z();
        D(metaFolder);
        v p02 = p0(javaMetaInfo, PROJECT_ROOT, RUNTIME_FOLDER, projectRoot);
        File file = p02.f84439a;
        if (file != null) {
            if (file.exists()) {
                try {
                    javaCode.i(C2636o.c(file));
                    file.delete();
                    new d8.g().b(javaCode);
                    C13591b.c(javaMetaInfo, javaCode);
                    if (D0(javaMetaInfo)) {
                        return zVar;
                    }
                    C2636o.a(javaCode.d(), p02.f84440b);
                    zVar.f84442a = true;
                } catch (Exception e10) {
                    e10.printStackTrace();
                    h0("Failed to pre compile: " + file.getAbsolutePath());
                    javaMetaInfo.f72516f = false;
                    javaMetaInfo.f72519i = true;
                    zVar.f84442a = false;
                    return zVar;
                }
            } else {
                h0("runtime file not found: " + file.getAbsolutePath());
                javaMetaInfo.f72516f = false;
                javaMetaInfo.f72519i = true;
                zVar.f84442a = false;
            }
        }
        return zVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:53:0x02e2  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x03dd A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean p(Context context) {
        String str;
        String str2;
        String str3;
        int i10;
        HashSet hashSet;
        HashMap hashMap;
        HashSet hashSet2;
        C15153a c15153a;
        String str4;
        String str5;
        boolean z10;
        boolean z11 = true;
        C0(true);
        String str6 = "/_PROJECT/Scripts/_JContainer.meta/";
        String str7 = "/_PROJECT/Scripts/_JContainer.java";
        if (UserController.P()) {
            new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_PROJECT/Scripts/_JContainer.java").delete();
            C16273a.d(new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_PROJECT/Scripts/_JContainer.meta/"));
            return false;
        }
        f84394C = "Building container";
        String str8 = com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/";
        File file = new File(str8);
        String str9 = str8 + "JAVARuntime/";
        A(str8);
        C15153a c15153a2 = new C15153a();
        c15153a2.a("package JAVARuntime;\n");
        String str10 = "\n";
        c15153a2.a("\n");
        c15153a2.a("public class _JContainer{}\n");
        c15153a2.a("\n");
        f84392A.clear();
        f84423z.clear();
        HashSet hashSet3 = new HashSet();
        HashMap hashMap2 = new HashMap();
        HashSet hashSet4 = new HashSet();
        int i11 = 0;
        boolean z12 = false;
        boolean z13 = false;
        int i12 = 0;
        while (true) {
            List<JavaMetaInfo> list = f84415r;
            if (i11 >= list.size()) {
                String str11 = str6;
                String str12 = str7;
                Set set = hashSet4;
                C15153a c15153a3 = c15153a2;
                if (!z12) {
                    File file2 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + str12);
                    boolean exists = file2.exists();
                    if (z13 || !exists) {
                        g8.b.c(null, c15153a3);
                        C2636o.e(c15153a3.toString(), new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + str12));
                        File file3 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + str11);
                        if (file3.exists()) {
                            File file4 = new File(file3, f84411n);
                            if (file4.exists()) {
                                file4.delete();
                            }
                            File[] listFiles = file3.listFiles();
                            if (listFiles != null) {
                                for (File file5 : listFiles) {
                                    if (file5.getName().endsWith(".class") || file5.getName().endsWith(".dex")) {
                                        file5.delete();
                                    }
                                }
                            }
                        }
                        if (!exists) {
                            j(file2);
                        }
                        Iterator<JavaMetaInfo> it = f84415r.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            JavaMetaInfo next = it.next();
                            if (next.f72511a.equals("_PROJECT/Scripts/_JContainer.java")) {
                                next.f72516f = false;
                                next.f72519i = false;
                                next.f72517g = false;
                                f84416s.add(next);
                                break;
                            }
                        }
                    } else {
                        C2636o.e(c15153a3.toString(), new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + str12));
                        Iterator<JavaMetaInfo> it2 = list.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            JavaMetaInfo next2 = it2.next();
                            if (next2.f72511a.equals("_PROJECT/Scripts/_JContainer.java")) {
                                next2.f72516f = true;
                                next2.f72519i = false;
                                next2.f72514d.clear();
                                next2.f72517g = false;
                                break;
                            }
                        }
                    }
                } else {
                    for (JavaMetaInfo javaMetaInfo : list) {
                        if (javaMetaInfo.f72511a.equals("_PROJECT/Scripts/_JContainer.java")) {
                            javaMetaInfo.f72516f = false;
                            javaMetaInfo.f72519i = true;
                            javaMetaInfo.f72514d.clear();
                            javaMetaInfo.f72517g = false;
                        } else if (!javaMetaInfo.f72511a.startsWith("_PROJECT") && !set.contains(javaMetaInfo)) {
                            javaMetaInfo.f72518h = false;
                            javaMetaInfo.f72516f = false;
                            javaMetaInfo.f72519i = false;
                            javaMetaInfo.f72514d.clear();
                            javaMetaInfo.f72517g = false;
                        }
                    }
                    f84416s.clear();
                }
                return z12;
            }
            try {
                JavaMetaInfo javaMetaInfo2 = list.get(i11);
                if (Tc.b.w(javaMetaInfo2.f72511a, z11).equals("R") || Tc.b.w(javaMetaInfo2.f72511a, z11).equals("_JContainer") || hashSet3.contains(javaMetaInfo2.f72511a)) {
                    str = str6;
                    str2 = str7;
                    str3 = str9;
                    i10 = i11;
                    hashSet = hashSet4;
                    hashMap = hashMap2;
                    hashSet2 = hashSet3;
                    c15153a = c15153a2;
                    str4 = str8;
                    str5 = str10;
                } else {
                    hashSet3.add(javaMetaInfo2.f72511a);
                    if (hashMap2.get(javaMetaInfo2.f72515e) != 0) {
                        JavaMetaInfo javaMetaInfo3 = (JavaMetaInfo) hashMap2.get(javaMetaInfo2.f72515e);
                        File file6 = new File(file, javaMetaInfo3.f72512b);
                        if (!file6.exists()) {
                            file6.mkdirs();
                        }
                        d8.e eVar = new d8.e(z11);
                        eVar.f84383c = 0;
                        StringBuilder sb2 = new StringBuilder();
                        i10 = i11;
                        sb2.append("Duplicate class name\nFile path: ");
                        hashSet2 = hashSet3;
                        sb2.append(javaMetaInfo2.f72511a);
                        sb2.append("\nOther file path: ");
                        String str13 = str10;
                        sb2.append(javaMetaInfo3.f72511a);
                        eVar.f84381a = sb2.toString();
                        eVar.f84382b = "Duplicate class name";
                        javaMetaInfo3.f72514d.clear();
                        javaMetaInfo3.f72514d.add(eVar);
                        javaMetaInfo3.f72516f = false;
                        javaMetaInfo3.f72519i = true;
                        javaMetaInfo3.f72517g = false;
                        javaMetaInfo3.f72518h = false;
                        hashSet4.add(javaMetaInfo3);
                        D(file6);
                        File file7 = new File(file, javaMetaInfo2.f72512b);
                        if (!file7.exists()) {
                            file7.mkdirs();
                        }
                        d8.e eVar2 = new d8.e(true);
                        eVar2.f84383c = 0;
                        eVar2.f84381a = "Duplicate class name\nFile path: " + javaMetaInfo2.f72511a + "\nOther file path: " + javaMetaInfo3.f72511a;
                        eVar2.f84382b = "Duplicate class name";
                        javaMetaInfo2.f72514d.clear();
                        javaMetaInfo2.f72514d.add(eVar2);
                        javaMetaInfo2.f72516f = false;
                        javaMetaInfo2.f72519i = true;
                        javaMetaInfo2.f72517g = false;
                        javaMetaInfo2.f72518h = false;
                        hashSet4.add(javaMetaInfo2);
                        D(file7);
                        str2 = str7;
                        str3 = str9;
                        hashSet = hashSet4;
                        hashMap = hashMap2;
                        c15153a = c15153a2;
                        str4 = str8;
                        str5 = str13;
                        z12 = true;
                        str = str6;
                    } else {
                        i10 = i11;
                        hashSet2 = hashSet3;
                        String str14 = str10;
                        hashMap2.put(javaMetaInfo2.f72515e, javaMetaInfo2);
                        if (D0(javaMetaInfo2)) {
                            return false;
                        }
                        File file8 = new File(file, javaMetaInfo2.f72512b);
                        if (!file8.exists()) {
                            file8.mkdirs();
                        }
                        C13950c c13950c = new C13950c(Tc.b.w(javaMetaInfo2.f72511a, true));
                        c13950c.f94984d = javaMetaInfo2;
                        File file9 = new File(file8, f84412o);
                        if (c0(javaMetaInfo2, file8, file9, c13950c)) {
                            HashSet hashSet5 = hashSet4;
                            String str15 = str9;
                            hashMap = hashMap2;
                            str3 = str9;
                            hashSet = hashSet5;
                            str4 = str8;
                            str5 = str14;
                            str = str6;
                            str2 = str7;
                            c15153a = c15153a2;
                            if (!o(javaMetaInfo2, file8, str8, str15, file, c15153a2, c13950c, file9)) {
                                javaMetaInfo2.f72514d.clear();
                                javaMetaInfo2.f72519i = false;
                                if (i12 > 0) {
                                    c15153a.a(str5);
                                }
                                try {
                                    new Formatter().formatSource(t8.e.a(c13950c));
                                } catch (FormatterException e10) {
                                    String message = e10.getMessage();
                                    int w12 = Nc.b.w1(message.substring(0, message.indexOf(b3.s.f32937c))) - 1;
                                    String substring = message.substring(message.indexOf("error: ") + 7);
                                    if (substring.equals("reached end of file while parsing")) {
                                        substring = substring + ", maybe missing } to end the block?";
                                    }
                                    String str16 = substring;
                                    String e11 = c13950c.e(w12);
                                    if (e11.endsWith(d8.g.f84387b)) {
                                        try {
                                            String substring2 = e11.substring(e11.indexOf("//[I-S]LN=") + 10);
                                            w12 = Nc.b.w1(substring2.substring(0, substring2.indexOf(";")));
                                        } catch (Exception e12) {
                                            e12.printStackTrace();
                                        }
                                    }
                                    d8.e eVar3 = new d8.e(true);
                                    eVar3.f84383c = w12;
                                    eVar3.f84381a = str16;
                                    eVar3.f84382b = "Syntax error";
                                    javaMetaInfo2.f72514d.clear();
                                    javaMetaInfo2.f72514d.add(eVar3);
                                    javaMetaInfo2.f72516f = false;
                                    javaMetaInfo2.f72519i = true;
                                    javaMetaInfo2.f72517g = false;
                                    javaMetaInfo2.f72518h = false;
                                    hashSet.add(javaMetaInfo2);
                                    D(file8);
                                    z10 = true;
                                    z12 = true;
                                    if (z10) {
                                        f84392A.add(javaMetaInfo2);
                                        c15153a.a("//C-R:" + javaMetaInfo2.f72515e + str5);
                                        c15153a.a(c13950c.d());
                                        i12++;
                                        javaMetaInfo2.f72514d.clear();
                                        z13 = true;
                                    }
                                    i11 = i10 + 1;
                                    c15153a2 = c15153a;
                                    hashSet4 = hashSet;
                                    str10 = str5;
                                    hashSet3 = hashSet2;
                                    str6 = str;
                                    hashMap2 = hashMap;
                                    str9 = str3;
                                    str8 = str4;
                                    str7 = str2;
                                    z11 = true;
                                } catch (Throwable unused) {
                                    z10 = false;
                                    if (z10) {
                                    }
                                    i11 = i10 + 1;
                                    c15153a2 = c15153a;
                                    hashSet4 = hashSet;
                                    str10 = str5;
                                    hashSet3 = hashSet2;
                                    str6 = str;
                                    hashMap2 = hashMap;
                                    str9 = str3;
                                    str8 = str4;
                                    str7 = str2;
                                    z11 = true;
                                }
                            }
                        } else {
                            str2 = str7;
                            str3 = str9;
                            hashSet = hashSet4;
                            hashMap = hashMap2;
                            c15153a = c15153a2;
                            str4 = str8;
                            str5 = str14;
                            str = str6;
                            f84423z.add(javaMetaInfo2);
                            javaMetaInfo2.f72514d.clear();
                            javaMetaInfo2.f72519i = false;
                            javaMetaInfo2.f72516f = true;
                            h0("Copying .class files to JAVARuntime/JAVARuntime/");
                            File[] listFiles2 = file8.listFiles();
                            if (listFiles2 != null) {
                                for (File file10 : listFiles2) {
                                    if (file10.getName().endsWith(".class")) {
                                        File file11 = new File(file, "JAVARuntime/JAVARuntime/");
                                        if (!file11.exists()) {
                                            file11.mkdirs();
                                        }
                                        File file12 = new File(file, "JAVARuntime/JAVARuntime/" + Tc.b.v(file10.getAbsolutePath()));
                                        if (file12.exists()) {
                                            file12.delete();
                                        }
                                        try {
                                            file12.createNewFile();
                                        } catch (IOException e13) {
                                            e13.printStackTrace();
                                            if (f84398a) {
                                                Terminal.log((Exception) e13);
                                            }
                                        }
                                        try {
                                            h0("Copying " + file10.getAbsolutePath() + " to " + file12.getAbsolutePath());
                                            d8.k.e(file10, file12);
                                        } catch (IOException e14) {
                                            e14.printStackTrace();
                                            if (f84398a) {
                                                Terminal.log((Exception) e14);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            } catch (Exception e15) {
                str = str6;
                str2 = str7;
                str3 = str9;
                i10 = i11;
                hashSet = hashSet4;
                hashMap = hashMap2;
                hashSet2 = hashSet3;
                c15153a = c15153a2;
                str4 = str8;
                str5 = str10;
                e15.printStackTrace();
            }
            i11 = i10 + 1;
            c15153a2 = c15153a;
            hashSet4 = hashSet;
            str10 = str5;
            hashSet3 = hashSet2;
            str6 = str;
            hashMap2 = hashMap;
            str9 = str3;
            str8 = str4;
            str7 = str2;
            z11 = true;
        }
    }

    public static v p0(JavaMetaInfo javaMetaInfo, String PROJECT_ROOT, String RUNTIME_FOLDER, File projectRoot) {
        File file;
        v vVar = new v();
        File file2 = new File(projectRoot, javaMetaInfo.f72512b);
        if (C2633l.b(javaMetaInfo.f72511a, ".java")) {
            file = new File(RUNTIME_FOLDER + Tc.b.v(javaMetaInfo.f72511a));
            File file3 = new File(projectRoot, javaMetaInfo.f72511a);
            File file4 = new File(file2, f84411n);
            if (file3.exists()) {
                try {
                    d8.k.e(file3, file);
                    d8.k.e(file3, file4);
                } catch (IOException e10) {
                    e10.printStackTrace();
                    javaMetaInfo.f72516f = false;
                    if (f84398a) {
                        Terminal.log((Exception) e10);
                    }
                }
            } else {
                javaMetaInfo.f72520j = true;
            }
        } else {
            file = null;
        }
        vVar.f84440b = new File(file2, f84412o);
        vVar.f84439a = file;
        return vVar;
    }

    public static boolean q(Context context) {
        String str = (com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/") + "JAVARuntime/";
        if (!new File(str).exists()) {
            return false;
        }
        X7.a.j(str + "f.manifest", X7.a.m().toJson(new FolderManifest(true)));
        return new File(str + "JAVARuntime/").exists();
    }

    public static void q0() {
        if (R()) {
            y6.d.b();
            C14940d.f();
            for (int i10 = 0; i10 < K0(); i10++) {
                d8.r J02 = J0(i10);
                try {
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                if (ScriptingExtension.class.isAssignableFrom(J02.f84454c)) {
                    try {
                        if (((ScriptingExtension) J02.j(new g())).getScriptingInterface() != null) {
                            y6.d.a(J02);
                        }
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                } else if (FilesPanelDirectoryMenu.class.isAssignableFrom(J02.f84454c)) {
                    try {
                        C14940d.d(new C14938b((FilesPanelDirectoryMenu) J02.j(new h())));
                    } catch (Exception e12) {
                        e12.printStackTrace();
                    }
                } else if (FilesPanelFileMenu.class.isAssignableFrom(J02.f84454c)) {
                    try {
                        C14940d.e(new C14939c((FilesPanelFileMenu) J02.j(new i())));
                    } catch (Exception e13) {
                        e13.printStackTrace();
                    }
                } else if (ObjectsPanelMenu.class.isAssignableFrom(J02.f84454c)) {
                    try {
                        C14940d.b(new C14941e((ObjectsPanelMenu) J02.j(new C1573j())));
                    } catch (Exception e14) {
                        e14.printStackTrace();
                    }
                } else if (FilesPanelCustomIcon.class.isAssignableFrom(J02.f84454c)) {
                    try {
                        C14940d.c(new C14937a((FilesPanelCustomIcon) J02.j(new m())));
                    } catch (Exception e15) {
                        e15.printStackTrace();
                    }
                } else {
                    if (TerminalCLIExtension.class.isAssignableFrom(J02.f84454c)) {
                        try {
                            C14940d.a(new C14942f((TerminalCLIExtension) J02.j(new n())));
                        } catch (Exception e16) {
                            e16.printStackTrace();
                        }
                    }
                }
                e10.printStackTrace();
            }
        }
    }

    public static void r() {
        List<e8.c> list = f84417t;
        synchronized (list) {
            list.clear();
        }
    }

    public static void r0(JavaMetaInfo javaMetaInfo) {
        String T10 = com.itsmagic.engine.Core.Components.ProjectController.a.T();
        if (f84421x.get()) {
            return;
        }
        if (!f84420w.compareAndSet(false, true)) {
            K8.a.J(new ob.b(new q(T10, javaMetaInfo)));
        } else {
            javaMetaInfo.getClass();
            O9.b.d(new p(javaMetaInfo));
        }
    }

    public static void s() {
        List<d8.r> list = f84418u;
        synchronized (list) {
            list.clear();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0143, code lost:
    
        throw new java.lang.RuntimeException("Failed to set readonly " + r3.getAbsolutePath());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void s0() {
        String str;
        int i10;
        String str2;
        File[] listFiles;
        JavaMetaInfo javaMetaInfo;
        JavaMetaInfo javaMetaInfo2;
        o8.f fVar;
        String str3;
        String str4;
        File[] fileArr;
        File[] listFiles2;
        File[] fileArr2;
        File file;
        f84414q = new CompiledDictionary();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()));
        sb2.append("/");
        String str5 = "JAVARuntime";
        sb2.append("JAVARuntime");
        sb2.append("/runtime/");
        File file2 = new File(sb2.toString());
        C13696a.g(file2);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        File file3 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/JAVARuntime/runtime.zip");
        if (file3.exists()) {
            file3.delete();
        }
        String str6 = com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/";
        File file4 = new File(str6);
        int i11 = 0;
        int i12 = 1;
        loop0: while (true) {
            List<JavaMetaInfo> list = f84415r;
            String str7 = ".dex";
            if (i11 >= list.size()) {
                String str8 = str5;
                File file5 = file4;
                d8.k.B(f84414q, i12);
                File e10 = new d8.c().e();
                File[] listFiles3 = e10.listFiles();
                int length = listFiles3.length;
                int i13 = 0;
                while (true) {
                    str = "rj_";
                    if (i13 >= length) {
                        break;
                    }
                    int i14 = length;
                    File file6 = listFiles3[i13];
                    if (file6.isDirectory()) {
                        fileArr = listFiles3;
                    } else {
                        fileArr = listFiles3;
                        if (file6.getName().endsWith(".dex") && file6.getName().startsWith("rj_")) {
                            if (f84398a) {
                                h0("DELETING DEXCACHE FILE:" + file6.getName() + " d:" + file6.isDirectory());
                            }
                            try {
                                if (file6.setWritable(true)) {
                                    if (f84398a) {
                                        h0("Read-only attribute removed:" + file6.getName());
                                    }
                                } else if (f84398a) {
                                    h0("Failed to remove the read-only attribute:" + file6.getName());
                                }
                            } catch (Error e11) {
                                e = e11;
                                e.printStackTrace();
                                file6.delete();
                                i13++;
                                length = i14;
                                listFiles3 = fileArr;
                            } catch (Exception e12) {
                                e = e12;
                                e.printStackTrace();
                                file6.delete();
                                i13++;
                                length = i14;
                                listFiles3 = fileArr;
                            }
                            file6.delete();
                        }
                    }
                    i13++;
                    length = i14;
                    listFiles3 = fileArr;
                }
                File[] listFiles4 = file2.listFiles();
                if (listFiles4 != null) {
                    int length2 = listFiles4.length;
                    int i15 = 0;
                    while (i15 < length2) {
                        int i16 = length2;
                        File file7 = listFiles4[i15];
                        File[] fileArr3 = listFiles4;
                        if (file7.getName().endsWith(str7)) {
                            try {
                                str3 = str7;
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append(str);
                                str4 = str;
                                sb3.append(file7.getName());
                                File file8 = new File(e10, sb3.toString());
                                if (f84398a) {
                                    h0("Copying .dex from (" + file7.getAbsolutePath() + ") to (" + file8.getAbsolutePath() + ")");
                                }
                                d8.k.e(file7, file8);
                                if (!file8.setReadOnly()) {
                                    throw new RuntimeException("Failed to set readonly " + file8.getAbsolutePath());
                                }
                            } catch (IOException e13) {
                                throw new RuntimeException(e13);
                            }
                        } else {
                            str4 = str;
                            str3 = str7;
                        }
                        i15++;
                        length2 = i16;
                        listFiles4 = fileArr3;
                        str7 = str3;
                        str = str4;
                    }
                }
                String str9 = str7;
                try {
                    new nd.f().j(file2.getAbsolutePath() + "/", file3.getAbsolutePath());
                } catch (Exception e14) {
                    e14.printStackTrace();
                    if (f84398a) {
                        J4.d.V1(e14);
                    }
                }
                s();
                DexClassLoader dexClassLoader = new DexClassLoader(String.join(File.pathSeparator, P(e10)), str6 + str8 + "/", null, new t8.f(Component.class.getClassLoader()));
                if (f84398a) {
                    h0("DEXCACHE:" + e10.getAbsolutePath());
                    File[] listFiles5 = e10.listFiles();
                    for (File file9 : listFiles5) {
                        h0("DEXCACHE FILE:" + file9.getName() + " d:" + file9.isDirectory());
                    }
                }
                d8.k.p(dexClassLoader);
                if (!UserController.P()) {
                    T(dexClassLoader);
                    int i17 = 0;
                    i10 = 0;
                    while (true) {
                        List<JavaMetaInfo> list2 = f84415r;
                        if (i17 >= list2.size()) {
                            break;
                        }
                        JavaMetaInfo javaMetaInfo3 = list2.get(i17);
                        File file10 = file5;
                        File file11 = new File(file10, javaMetaInfo3.f72512b);
                        if (javaMetaInfo3.f72511a.startsWith("_PROJECT") && !javaMetaInfo3.f72511a.equals("_PROJECT/Scripts/_JContainer.java")) {
                            if (!javaMetaInfo3.f72525o) {
                                javaMetaInfo3.f72514d.clear();
                            }
                            javaMetaInfo3.f72525o = false;
                            if (file11.exists() && file11.isDirectory() && (listFiles = file11.listFiles()) != null) {
                                int length3 = listFiles.length;
                                int i18 = 0;
                                while (i18 < length3) {
                                    File file12 = listFiles[i18];
                                    String str10 = str9;
                                    if (file12.getAbsolutePath().endsWith(str10)) {
                                        i10 += S(dexClassLoader, javaMetaInfo3, Tc.b.w(file12.getAbsolutePath(), true));
                                    }
                                    i18++;
                                    str9 = str10;
                                }
                            }
                            str2 = str9;
                        } else {
                            str2 = str9;
                        }
                        i17++;
                        file5 = file10;
                        str9 = str2;
                    }
                } else {
                    i10 = 0;
                }
                for (int i19 = 0; i19 < K0(); i19++) {
                    d8.r J02 = J0(i19);
                    if (J02 != null && (javaMetaInfo2 = J02.f84452a) != null && !javaMetaInfo2.f72522l && (fVar = javaMetaInfo2.f72521k) != null) {
                        fVar.a();
                    }
                }
                if (i10 > 0) {
                    f84394C = i10 + " failed";
                }
                for (int i20 = 0; i20 < K0(); i20++) {
                    d8.r J03 = J0(i20);
                    if (J03 != null && (javaMetaInfo = J03.f84452a) != null && !javaMetaInfo.f72522l) {
                        f84414q.javaScripts.add(new ClassDic(J03.f84453b, javaMetaInfo.f72512b, javaMetaInfo.f72511a));
                    }
                }
                z0();
                q0();
                return;
            }
            JavaMetaInfo javaMetaInfo4 = list.get(i11);
            javaMetaInfo4.b();
            String str11 = str5;
            File file13 = new File(file4, javaMetaInfo4.f72512b);
            if ((UserController.P() || javaMetaInfo4.f72511a.startsWith("_PROJECT")) && file13.exists() && file13.isDirectory() && (listFiles2 = file13.listFiles()) != null) {
                int i21 = 0;
                while (i21 < listFiles2.length) {
                    File file14 = listFiles2[i21];
                    if (file14.getAbsolutePath().endsWith(".dex")) {
                        fileArr2 = listFiles2;
                        Tc.b.w(file14.getAbsolutePath(), true);
                        try {
                            File file15 = new File(file2, d8.k.g(i12));
                            if (f84398a) {
                                StringBuilder sb4 = new StringBuilder();
                                sb4.append("Copying .dex from (");
                                file = file4;
                                sb4.append(file14.getAbsolutePath());
                                sb4.append(") to (");
                                sb4.append(file15.getAbsolutePath());
                                sb4.append(")");
                                h0(sb4.toString());
                            } else {
                                file = file4;
                            }
                            d8.k.e(file14, file15);
                            if (!file15.setReadOnly()) {
                                break loop0;
                            } else {
                                i12++;
                            }
                        } catch (IOException e15) {
                            throw new RuntimeException(e15);
                        }
                    } else {
                        fileArr2 = listFiles2;
                        file = file4;
                    }
                    i21++;
                    listFiles2 = fileArr2;
                    file4 = file;
                }
            }
            i11++;
            str5 = str11;
            file4 = file4;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(6:63|64|(3:65|66|67)|(5:68|69|70|71|(8:123|124|125|126|(2:127|(3:129|(5:131|132|133|134|(1:136)(1:169))(2:182|183)|170)(2:184|185))|144|145|146)(3:73|74|75))|76|77) */
    /* JADX WARN: Can't wrap try/catch for region: R(9:597|598|599|(8:600|601|602|603|604|605|606|(8:608|609|610|(6:613|(1:693)(4:616|617|618|(10:620|621|622|623|624|625|(2:630|631)|627|628|629))|688|689|629|611)|694|695|696|697)(2:701|(1:703)))|643|644|646|647|595) */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0243, code lost:
    
        r11 = r10.S(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0248, code lost:
    
        w(r11, r7, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x024b, code lost:
    
        if (r11 == null) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x024d, code lost:
    
        r11.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0254, code lost:
    
        t8.c.a(r7, r3, r1, r8, r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0258, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x025a, code lost:
    
        if (r11 != null) goto L689;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x0265, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x025c, code lost:
    
        r11.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x0260, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x0262, code lost:
    
        r0.addSuppressed(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:351:0x073b, code lost:
    
        if (r9.contains(" is never used") != false) goto L374;
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x072b, code lost:
    
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:375:0x0729, code lost:
    
        if (r9.contains(" does not declare a static final serialVersionUID field of type long") != false) goto L374;
     */
    /* JADX WARN: Code restructure failed: missing block: B:648:0x0c26, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:649:0x0c27, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:650:0x0c2d, code lost:
    
        if (d8.j.f84398a != false) goto L613;
     */
    /* JADX WARN: Code restructure failed: missing block: B:651:0x0c2f, code lost:
    
        JAVARuntime.Terminal.log(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x038f, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0390, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0396, code lost:
    
        if (d8.j.f84398a != false) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0398, code lost:
    
        JAVARuntime.Terminal.log(r0);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0312 A[Catch: Exception -> 0x02d1, Error -> 0x02d3, TooManyErrorsException -> 0x02d5, UnknownError -> 0x02d7, TryCatch #52 {TooManyErrorsException -> 0x02d5, UnknownError -> 0x02d7, Error -> 0x02d3, Exception -> 0x02d1, blocks: (B:98:0x02f9, B:100:0x0312, B:101:0x0315, B:103:0x031b, B:104:0x031e, B:106:0x0322, B:75:0x02b9), top: B:97:0x02f9 }] */
    /* JADX WARN: Removed duplicated region for block: B:103:0x031b A[Catch: Exception -> 0x02d1, Error -> 0x02d3, TooManyErrorsException -> 0x02d5, UnknownError -> 0x02d7, TryCatch #52 {TooManyErrorsException -> 0x02d5, UnknownError -> 0x02d7, Error -> 0x02d3, Exception -> 0x02d1, blocks: (B:98:0x02f9, B:100:0x0312, B:101:0x0315, B:103:0x031b, B:104:0x031e, B:106:0x0322, B:75:0x02b9), top: B:97:0x02f9 }] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0322 A[Catch: Exception -> 0x02d1, Error -> 0x02d3, TooManyErrorsException -> 0x02d5, UnknownError -> 0x02d7, TRY_LEAVE, TryCatch #52 {TooManyErrorsException -> 0x02d5, UnknownError -> 0x02d7, Error -> 0x02d3, Exception -> 0x02d1, blocks: (B:98:0x02f9, B:100:0x0312, B:101:0x0315, B:103:0x031b, B:104:0x031e, B:106:0x0322, B:75:0x02b9), top: B:97:0x02f9 }] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x035d  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0c82  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x03f5 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:276:0x03f6  */
    /* JADX WARN: Removed duplicated region for block: B:332:0x05ac  */
    /* JADX WARN: Removed duplicated region for block: B:350:0x0735 A[Catch: Exception -> 0x0715, TRY_LEAVE, TryCatch #25 {Exception -> 0x0715, blocks: (B:346:0x0718, B:374:0x0723, B:362:0x0748, B:364:0x074f, B:348:0x072d, B:350:0x0735, B:390:0x070a, B:392:0x0710, B:355:0x0740), top: B:373:0x0723, inners: #68 }] */
    /* JADX WARN: Removed duplicated region for block: B:354:0x0740 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:369:0x076b  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x076e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:372:0x076e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:373:0x0723 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:479:0x077d A[EDGE_INSN: B:479:0x077d->B:480:0x077d BREAK  A[LOOP:6: B:330:0x059c->B:358:0x076e], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:482:0x0787 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:483:0x0788  */
    /* JADX WARN: Removed duplicated region for block: B:491:0x07cf A[Catch: Exception -> 0x07e3, TryCatch #15 {Exception -> 0x07e3, blocks: (B:489:0x07c9, B:491:0x07cf, B:493:0x07d6), top: B:488:0x07c9 }] */
    /* JADX WARN: Removed duplicated region for block: B:500:0x07ee A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:501:0x07ef  */
    /* JADX WARN: Removed duplicated region for block: B:521:0x083d  */
    /* JADX WARN: Removed duplicated region for block: B:544:0x08a3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:664:0x0bdc  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 7 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 8 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void t(JavaMetaInfo javaMetaInfo) {
        CharSequence charSequence;
        File file;
        String str;
        String str2;
        String str3;
        boolean z10;
        boolean z11;
        String str4;
        File file2;
        boolean z12;
        Iterator it;
        boolean z13;
        String[] split;
        Exception exc;
        boolean z14;
        String str5;
        String str6;
        String str7;
        File file3;
        String str8;
        String str9;
        List<d8.e> list;
        List<d8.e> list2;
        String str10;
        String str11;
        s sVar;
        int i10;
        Exception exc2;
        String str12;
        Iterator it2;
        String str13;
        d8.e dVar;
        CharSequence charSequence2;
        CharSequence charSequence3;
        File file4;
        File[] listFiles;
        String str14;
        File[] fileArr;
        int i11;
        int i12;
        String str15;
        String str16;
        File file5;
        UnknownError unknownError;
        boolean z15;
        boolean z16;
        StringBuilder sb2;
        File file6;
        C15608a c15608a;
        Iterator<Bg.j> it3;
        JavaMetaInfo javaMetaInfo2 = javaMetaInfo;
        StringBuilder sb3 = new StringBuilder();
        sb3.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()));
        String str17 = "/";
        sb3.append("/");
        String sb4 = sb3.toString();
        File file7 = new File(sb4);
        File file8 = new File(file7, javaMetaInfo2.f72512b);
        if (!file8.exists()) {
            file8.mkdirs();
        }
        if (javaMetaInfo2.f72516f) {
            return;
        }
        javaMetaInfo2.f72518h = true;
        if (D0(javaMetaInfo)) {
            return;
        }
        File[] listFiles2 = file8.listFiles();
        String str18 = ".zip";
        String str19 = "./";
        String str20 = "//C-R:";
        String str21 = ".class";
        CharSequence charSequence4 = "are only available if source level is 1.7 or greater";
        if (listFiles2 == null || listFiles2.length <= 0) {
            charSequence = "are only available if source level is 1.5 or greater";
        } else {
            charSequence = "are only available if source level is 1.5 or greater";
            String s10 = X7.a.s(javaMetaInfo2.f72511a, N7.c.t());
            if (s10 == null) {
                s10 = "";
            }
            File file9 = new File(file8, f84411n);
            if (file9.exists()) {
                String absolutePath = file9.getAbsolutePath();
                str2 = f84411n;
                if (s10.equals(X7.a.z(absolutePath, N7.c.t()))) {
                    SteppedArrayList steppedArrayList = new SteppedArrayList();
                    int length = listFiles2.length;
                    int i13 = 0;
                    while (i13 < length) {
                        int i14 = length;
                        File file10 = listFiles2[i13];
                        File file11 = file7;
                        if (file10.getName().endsWith(".class")) {
                            steppedArrayList.add(file10);
                        }
                        i13++;
                        length = i14;
                        file7 = file11;
                    }
                    file = file7;
                    if (!steppedArrayList.isEmpty()) {
                        Iterator it4 = steppedArrayList.iterator();
                        while (it4.hasNext()) {
                            String replace = ((File) it4.next()).getName().replace(".class", "");
                            int length2 = listFiles2.length;
                            int i15 = 0;
                            while (i15 < length2) {
                                File file12 = listFiles2[i15];
                                Iterator it5 = it4;
                                if (file12.getName().endsWith(".dex") && replace.equals(file12.getName().replace(".dex", ""))) {
                                    h0("ONLY DEX COMPILATION FAILED, dex found for " + replace + ".class");
                                } else {
                                    i15++;
                                    it4 = it5;
                                }
                            }
                        }
                        javaMetaInfo2.f72516f = true;
                        javaMetaInfo2.f72519i = false;
                        String str22 = sb4 + "JAVARuntime/";
                        h0("ONLY DEX COMPILATION DETECTED");
                        File[] listFiles3 = file8.listFiles();
                        if (listFiles3 != null && listFiles3.length > 0) {
                            int length3 = listFiles3.length;
                            int i16 = 0;
                            while (i16 < length3) {
                                File file13 = listFiles3[i16];
                                if (D0(javaMetaInfo)) {
                                    return;
                                }
                                if (file13.getName().endsWith(".class")) {
                                    String absolutePath2 = file13.getAbsolutePath();
                                    fileArr = listFiles3;
                                    StringBuilder sb5 = new StringBuilder();
                                    i11 = length3;
                                    sb5.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()));
                                    sb5.append("/");
                                    sb5.append("JAVARuntime");
                                    sb5.append("/");
                                    i12 = i16;
                                    sb5.append(Tc.b.w(absolutePath2, true));
                                    sb5.append(".class");
                                    String sb6 = sb5.toString();
                                    try {
                                        v(file13, new File(sb6));
                                    } catch (IOException e10) {
                                        e10.printStackTrace();
                                    }
                                    File file14 = new File(file8, Tc.b.w(absolutePath2, true) + ".dex");
                                    if (file14.exists()) {
                                        javaMetaInfo2 = javaMetaInfo;
                                        str14 = str22;
                                        str15 = str18;
                                        str16 = str19;
                                    } else {
                                        String str23 = sb4 + str19 + "JAVARuntime/" + Tc.b.w(sb6, true) + ".class";
                                        StringBuilder sb7 = new StringBuilder();
                                        sb7.append(str22);
                                        str14 = str22;
                                        sb7.append(Tc.b.w(sb6, true));
                                        sb7.append(str18);
                                        String sb8 = sb7.toString();
                                        h0("calling DEX and dexifying the class");
                                        try {
                                            sb2 = new StringBuilder();
                                            str15 = str18;
                                        } catch (TooManyErrorsException e11) {
                                            e = e11;
                                            javaMetaInfo2 = javaMetaInfo;
                                            str15 = str18;
                                        } catch (UnknownError e12) {
                                            e = e12;
                                            javaMetaInfo2 = javaMetaInfo;
                                            str15 = str18;
                                        } catch (Error e13) {
                                            e = e13;
                                            javaMetaInfo2 = javaMetaInfo;
                                            str15 = str18;
                                            str16 = str19;
                                            Throwable th2 = e;
                                            th2.printStackTrace();
                                            javaMetaInfo2.f72516f = false;
                                            javaMetaInfo2.f72519i = true;
                                            file5 = new File(file13.getAbsolutePath().replace(".class", ".dex"));
                                            if (file5.exists()) {
                                                file5.delete();
                                            }
                                            if (f84398a) {
                                                Terminal.log(th2);
                                            }
                                            new File(sb8).delete();
                                            new File(sb6).delete();
                                            i16 = i12 + 1;
                                            listFiles3 = fileArr;
                                            length3 = i11;
                                            str22 = str14;
                                            str18 = str15;
                                            str19 = str16;
                                        } catch (Exception e14) {
                                            e = e14;
                                            javaMetaInfo2 = javaMetaInfo;
                                            str15 = str18;
                                            str16 = str19;
                                            Throwable th22 = e;
                                            th22.printStackTrace();
                                            javaMetaInfo2.f72516f = false;
                                            javaMetaInfo2.f72519i = true;
                                            file5 = new File(file13.getAbsolutePath().replace(".class", ".dex"));
                                            if (file5.exists()) {
                                            }
                                            if (f84398a) {
                                            }
                                            new File(sb8).delete();
                                            new File(sb6).delete();
                                            i16 = i12 + 1;
                                            listFiles3 = fileArr;
                                            length3 = i11;
                                            str22 = str14;
                                            str18 = str15;
                                            str19 = str16;
                                        }
                                        try {
                                            sb2.append("--output=");
                                            sb2.append(sb8);
                                            C12885b.a(sb4, new String[]{"--dex", sb2.toString(), str23});
                                            try {
                                                if (new File(sb8).exists()) {
                                                    try {
                                                        c15608a = new C15608a(sb8);
                                                        try {
                                                            Iterator<Bg.j> it6 = c15608a.R().iterator();
                                                            while (true) {
                                                                if (!it6.hasNext()) {
                                                                    str16 = str19;
                                                                    break;
                                                                }
                                                                Bg.j next = it6.next();
                                                                if (!next.s()) {
                                                                    it3 = it6;
                                                                    str16 = str19;
                                                                    try {
                                                                        if (DexFormat.DEX_IN_JAR_NAME.equals(next.j())) {
                                                                            break;
                                                                        }
                                                                    } catch (Throwable th3) {
                                                                        th = th3;
                                                                        Throwable th4 = th;
                                                                        try {
                                                                            c15608a.close();
                                                                        } catch (Throwable th5) {
                                                                            th4.addSuppressed(th5);
                                                                        }
                                                                        throw th4;
                                                                        break;
                                                                    }
                                                                } else {
                                                                    it3 = it6;
                                                                    str16 = str19;
                                                                }
                                                                it6 = it3;
                                                                str19 = str16;
                                                            }
                                                        } catch (Throwable th6) {
                                                            th = th6;
                                                            str16 = str19;
                                                        }
                                                    } catch (TooManyErrorsException e15) {
                                                        e = e15;
                                                        str16 = str19;
                                                    } catch (UnknownError e16) {
                                                        e = e16;
                                                        str16 = str19;
                                                    } catch (IOException e17) {
                                                        e = e17;
                                                        str16 = str19;
                                                    } catch (Error e18) {
                                                        e = e18;
                                                        str16 = str19;
                                                        javaMetaInfo2 = javaMetaInfo;
                                                        Throwable th222 = e;
                                                        th222.printStackTrace();
                                                        javaMetaInfo2.f72516f = false;
                                                        javaMetaInfo2.f72519i = true;
                                                        file5 = new File(file13.getAbsolutePath().replace(".class", ".dex"));
                                                        if (file5.exists()) {
                                                        }
                                                        if (f84398a) {
                                                        }
                                                        new File(sb8).delete();
                                                        new File(sb6).delete();
                                                        i16 = i12 + 1;
                                                        listFiles3 = fileArr;
                                                        length3 = i11;
                                                        str22 = str14;
                                                        str18 = str15;
                                                        str19 = str16;
                                                    } catch (Exception e19) {
                                                        e = e19;
                                                        str16 = str19;
                                                        javaMetaInfo2 = javaMetaInfo;
                                                        Throwable th2222 = e;
                                                        th2222.printStackTrace();
                                                        javaMetaInfo2.f72516f = false;
                                                        javaMetaInfo2.f72519i = true;
                                                        file5 = new File(file13.getAbsolutePath().replace(".class", ".dex"));
                                                        if (file5.exists()) {
                                                        }
                                                        if (f84398a) {
                                                        }
                                                        new File(sb8).delete();
                                                        new File(sb6).delete();
                                                        i16 = i12 + 1;
                                                        listFiles3 = fileArr;
                                                        length3 = i11;
                                                        str22 = str14;
                                                        str18 = str15;
                                                        str19 = str16;
                                                    }
                                                    try {
                                                        c15608a.close();
                                                        javaMetaInfo2 = javaMetaInfo;
                                                    } catch (TooManyErrorsException e20) {
                                                        e = e20;
                                                        javaMetaInfo2 = javaMetaInfo;
                                                        e.printStackTrace();
                                                        javaMetaInfo2.f72516f = false;
                                                        javaMetaInfo2.f72519i = true;
                                                        f84395D.set(true);
                                                        new File(sb8).delete();
                                                        new File(sb6).delete();
                                                        i16 = i12 + 1;
                                                        listFiles3 = fileArr;
                                                        length3 = i11;
                                                        str22 = str14;
                                                        str18 = str15;
                                                        str19 = str16;
                                                    } catch (UnknownError e21) {
                                                        e = e21;
                                                        unknownError = e;
                                                        z16 = false;
                                                        z15 = true;
                                                        javaMetaInfo2 = javaMetaInfo;
                                                        unknownError.printStackTrace();
                                                        javaMetaInfo2.f72516f = z16;
                                                        javaMetaInfo2.f72519i = z15;
                                                        f84395D.set(z15);
                                                        new File(sb8).delete();
                                                        new File(sb6).delete();
                                                        i16 = i12 + 1;
                                                        listFiles3 = fileArr;
                                                        length3 = i11;
                                                        str22 = str14;
                                                        str18 = str15;
                                                        str19 = str16;
                                                    } catch (IOException e22) {
                                                        e = e22;
                                                        javaMetaInfo2 = javaMetaInfo;
                                                        IOException iOException = e;
                                                        try {
                                                            iOException.printStackTrace();
                                                            javaMetaInfo2.f72516f = false;
                                                            file6 = new File(file13.getAbsolutePath().replace(".class", ".dex"));
                                                            if (file6.exists()) {
                                                            }
                                                            if (file13.exists()) {
                                                            }
                                                            if (f84398a) {
                                                            }
                                                        } catch (TooManyErrorsException e23) {
                                                            e = e23;
                                                            e.printStackTrace();
                                                            javaMetaInfo2.f72516f = false;
                                                            javaMetaInfo2.f72519i = true;
                                                            f84395D.set(true);
                                                            new File(sb8).delete();
                                                            new File(sb6).delete();
                                                            i16 = i12 + 1;
                                                            listFiles3 = fileArr;
                                                            length3 = i11;
                                                            str22 = str14;
                                                            str18 = str15;
                                                            str19 = str16;
                                                        } catch (UnknownError e24) {
                                                            e = e24;
                                                            unknownError = e;
                                                            z16 = false;
                                                            z15 = true;
                                                            unknownError.printStackTrace();
                                                            javaMetaInfo2.f72516f = z16;
                                                            javaMetaInfo2.f72519i = z15;
                                                            f84395D.set(z15);
                                                            new File(sb8).delete();
                                                            new File(sb6).delete();
                                                            i16 = i12 + 1;
                                                            listFiles3 = fileArr;
                                                            length3 = i11;
                                                            str22 = str14;
                                                            str18 = str15;
                                                            str19 = str16;
                                                        } catch (Error e25) {
                                                            e = e25;
                                                            Throwable th22222 = e;
                                                            th22222.printStackTrace();
                                                            javaMetaInfo2.f72516f = false;
                                                            javaMetaInfo2.f72519i = true;
                                                            file5 = new File(file13.getAbsolutePath().replace(".class", ".dex"));
                                                            if (file5.exists()) {
                                                            }
                                                            if (f84398a) {
                                                            }
                                                            new File(sb8).delete();
                                                            new File(sb6).delete();
                                                            i16 = i12 + 1;
                                                            listFiles3 = fileArr;
                                                            length3 = i11;
                                                            str22 = str14;
                                                            str18 = str15;
                                                            str19 = str16;
                                                        } catch (Exception e26) {
                                                            e = e26;
                                                            Throwable th222222 = e;
                                                            th222222.printStackTrace();
                                                            javaMetaInfo2.f72516f = false;
                                                            javaMetaInfo2.f72519i = true;
                                                            file5 = new File(file13.getAbsolutePath().replace(".class", ".dex"));
                                                            if (file5.exists()) {
                                                            }
                                                            if (f84398a) {
                                                            }
                                                            new File(sb8).delete();
                                                            new File(sb6).delete();
                                                            i16 = i12 + 1;
                                                            listFiles3 = fileArr;
                                                            length3 = i11;
                                                            str22 = str14;
                                                            str18 = str15;
                                                            str19 = str16;
                                                        }
                                                        new File(sb8).delete();
                                                        new File(sb6).delete();
                                                        i16 = i12 + 1;
                                                        listFiles3 = fileArr;
                                                        length3 = i11;
                                                        str22 = str14;
                                                        str18 = str15;
                                                        str19 = str16;
                                                    } catch (Error e27) {
                                                        e = e27;
                                                        javaMetaInfo2 = javaMetaInfo;
                                                        Throwable th2222222 = e;
                                                        th2222222.printStackTrace();
                                                        javaMetaInfo2.f72516f = false;
                                                        javaMetaInfo2.f72519i = true;
                                                        file5 = new File(file13.getAbsolutePath().replace(".class", ".dex"));
                                                        if (file5.exists()) {
                                                        }
                                                        if (f84398a) {
                                                        }
                                                        new File(sb8).delete();
                                                        new File(sb6).delete();
                                                        i16 = i12 + 1;
                                                        listFiles3 = fileArr;
                                                        length3 = i11;
                                                        str22 = str14;
                                                        str18 = str15;
                                                        str19 = str16;
                                                    } catch (Exception e28) {
                                                        e = e28;
                                                        javaMetaInfo2 = javaMetaInfo;
                                                        Throwable th22222222 = e;
                                                        th22222222.printStackTrace();
                                                        javaMetaInfo2.f72516f = false;
                                                        javaMetaInfo2.f72519i = true;
                                                        file5 = new File(file13.getAbsolutePath().replace(".class", ".dex"));
                                                        if (file5.exists()) {
                                                        }
                                                        if (f84398a) {
                                                        }
                                                        new File(sb8).delete();
                                                        new File(sb6).delete();
                                                        i16 = i12 + 1;
                                                        listFiles3 = fileArr;
                                                        length3 = i11;
                                                        str22 = str14;
                                                        str18 = str15;
                                                        str19 = str16;
                                                    }
                                                } else {
                                                    javaMetaInfo2 = javaMetaInfo;
                                                    str16 = str19;
                                                    try {
                                                        javaMetaInfo2.f72516f = false;
                                                        h0("failed to compile file, zip not found " + sb8);
                                                    } catch (IOException e29) {
                                                        e = e29;
                                                        IOException iOException2 = e;
                                                        iOException2.printStackTrace();
                                                        javaMetaInfo2.f72516f = false;
                                                        file6 = new File(file13.getAbsolutePath().replace(".class", ".dex"));
                                                        if (file6.exists()) {
                                                            file6.delete();
                                                        }
                                                        if (file13.exists()) {
                                                            file13.delete();
                                                        }
                                                        if (f84398a) {
                                                            Terminal.log((Exception) iOException2);
                                                        }
                                                        new File(sb8).delete();
                                                        new File(sb6).delete();
                                                        i16 = i12 + 1;
                                                        listFiles3 = fileArr;
                                                        length3 = i11;
                                                        str22 = str14;
                                                        str18 = str15;
                                                        str19 = str16;
                                                    }
                                                }
                                            } catch (IOException e30) {
                                                e = e30;
                                                javaMetaInfo2 = javaMetaInfo;
                                                str16 = str19;
                                            }
                                        } catch (TooManyErrorsException e31) {
                                            e = e31;
                                            javaMetaInfo2 = javaMetaInfo;
                                            str16 = str19;
                                            e.printStackTrace();
                                            javaMetaInfo2.f72516f = false;
                                            javaMetaInfo2.f72519i = true;
                                            f84395D.set(true);
                                            new File(sb8).delete();
                                            new File(sb6).delete();
                                            i16 = i12 + 1;
                                            listFiles3 = fileArr;
                                            length3 = i11;
                                            str22 = str14;
                                            str18 = str15;
                                            str19 = str16;
                                        } catch (UnknownError e32) {
                                            e = e32;
                                            javaMetaInfo2 = javaMetaInfo;
                                            str16 = str19;
                                            unknownError = e;
                                            z16 = false;
                                            z15 = true;
                                            unknownError.printStackTrace();
                                            javaMetaInfo2.f72516f = z16;
                                            javaMetaInfo2.f72519i = z15;
                                            f84395D.set(z15);
                                            new File(sb8).delete();
                                            new File(sb6).delete();
                                            i16 = i12 + 1;
                                            listFiles3 = fileArr;
                                            length3 = i11;
                                            str22 = str14;
                                            str18 = str15;
                                            str19 = str16;
                                        } catch (Error e33) {
                                            e = e33;
                                            javaMetaInfo2 = javaMetaInfo;
                                            str16 = str19;
                                            Throwable th222222222 = e;
                                            th222222222.printStackTrace();
                                            javaMetaInfo2.f72516f = false;
                                            javaMetaInfo2.f72519i = true;
                                            file5 = new File(file13.getAbsolutePath().replace(".class", ".dex"));
                                            if (file5.exists()) {
                                            }
                                            if (f84398a) {
                                            }
                                            new File(sb8).delete();
                                            new File(sb6).delete();
                                            i16 = i12 + 1;
                                            listFiles3 = fileArr;
                                            length3 = i11;
                                            str22 = str14;
                                            str18 = str15;
                                            str19 = str16;
                                        } catch (Exception e34) {
                                            e = e34;
                                            javaMetaInfo2 = javaMetaInfo;
                                            str16 = str19;
                                            Throwable th2222222222 = e;
                                            th2222222222.printStackTrace();
                                            javaMetaInfo2.f72516f = false;
                                            javaMetaInfo2.f72519i = true;
                                            file5 = new File(file13.getAbsolutePath().replace(".class", ".dex"));
                                            if (file5.exists()) {
                                            }
                                            if (f84398a) {
                                            }
                                            new File(sb8).delete();
                                            new File(sb6).delete();
                                            i16 = i12 + 1;
                                            listFiles3 = fileArr;
                                            length3 = i11;
                                            str22 = str14;
                                            str18 = str15;
                                            str19 = str16;
                                        }
                                        new File(sb8).delete();
                                    }
                                    try {
                                        new File(sb6).delete();
                                    } catch (Exception e35) {
                                        e35.printStackTrace();
                                        if (f84398a) {
                                            Terminal.log(e35);
                                        }
                                    }
                                } else {
                                    str14 = str22;
                                    fileArr = listFiles3;
                                    i11 = length3;
                                    i12 = i16;
                                    str15 = str18;
                                    str16 = str19;
                                }
                                i16 = i12 + 1;
                                listFiles3 = fileArr;
                                length3 = i11;
                                str22 = str14;
                                str18 = str15;
                                str19 = str16;
                            }
                        }
                        str4 = ".class";
                        file2 = file8;
                        if (javaMetaInfo2.f72511a.equals("_PROJECT/Scripts/_JContainer.java") || UserController.P()) {
                            file4 = file;
                        } else {
                            file4 = file;
                            x(javaMetaInfo2, file4, file2);
                        }
                        h0("Copying .class files to JAVARuntime/JAVARuntime/");
                        listFiles = file2.listFiles();
                        if (listFiles != null) {
                            for (File file15 : listFiles) {
                                if (file15.getAbsolutePath().endsWith(str4)) {
                                    File file16 = new File(file4, "JAVARuntime/JAVARuntime/");
                                    if (!file16.exists()) {
                                        file16.mkdirs();
                                    }
                                    File file17 = new File(file4, "JAVARuntime/JAVARuntime/" + Tc.b.v(file15.getAbsolutePath()));
                                    if (file17.exists()) {
                                        file17.delete();
                                    }
                                    try {
                                        file17.createNewFile();
                                    } catch (IOException e36) {
                                        e36.printStackTrace();
                                        if (f84398a) {
                                            Terminal.log((Exception) e36);
                                        }
                                    }
                                    try {
                                        h0("Copying " + file15.getAbsolutePath() + " to " + file17.getAbsolutePath());
                                        d8.k.e(file15, file17);
                                    } catch (IOException e37) {
                                        e37.printStackTrace();
                                        if (f84398a) {
                                            Terminal.log((Exception) e37);
                                        }
                                    }
                                }
                            }
                        }
                        javaMetaInfo2.f72518h = false;
                        return;
                    }
                    str = ".zip";
                    str3 = "./";
                    if (D0(javaMetaInfo)) {
                        return;
                    }
                    File[] listFiles4 = file8.listFiles();
                    if (listFiles4 == null || listFiles4.length == 0) {
                        h0("REASON: Meta folder is empty or doesnt exist");
                        z10 = true;
                        z11 = true;
                    } else {
                        z10 = false;
                        z11 = false;
                    }
                    if (!z10) {
                        if (D0(javaMetaInfo)) {
                            return;
                        }
                        z10 = true;
                        z11 = true;
                    }
                    if (!z10) {
                        str4 = ".class";
                        file2 = file8;
                        javaMetaInfo2.f72516f = true;
                        javaMetaInfo2.f72519i = false;
                    } else {
                        if (D0(javaMetaInfo)) {
                            return;
                        }
                        String str24 = sb4 + "JAVARuntime/";
                        A(sb4);
                        C(file8);
                        if (D0(javaMetaInfo)) {
                            return;
                        }
                        h0("Compiling " + javaMetaInfo2.f72511a);
                        File file18 = new File(str24 + Tc.b.v(javaMetaInfo2.f72511a));
                        File file19 = file;
                        File file20 = new File(file19, javaMetaInfo2.f72511a);
                        File file21 = new File(file8, str2);
                        if (!file20.exists()) {
                            javaMetaInfo2.f72520j = true;
                            return;
                        }
                        try {
                            d8.k.e(file20, file18);
                            d8.k.e(file20, file21);
                            if (D0(javaMetaInfo)) {
                                return;
                            }
                            StringBuilder sb9 = new StringBuilder();
                            sb9.append(sb4);
                            sb9.append(str3);
                            sb9.append("JAVARuntime");
                            sb9.append("/");
                            file = file19;
                            sb9.append(Tc.b.w(javaMetaInfo2.f72511a, true));
                            sb9.append(".java");
                            String sb10 = sb9.toString();
                            if (!Tc.b.w(javaMetaInfo2.f72511a, true).equals("R") && z11 && !UserController.P()) {
                                if (D0(javaMetaInfo)) {
                                    return;
                                }
                                C13949b.f(javaMetaInfo2, sb10, str24);
                                if (D0(javaMetaInfo)) {
                                    return;
                                }
                            }
                            LinkedList linkedList = new LinkedList();
                            r rVar = new r(linkedList);
                            if (D0(javaMetaInfo)) {
                                return;
                            }
                            String str25 = sb4;
                            File file22 = new File(sb10.replace("/./", "/"));
                            String str26 = ".dex";
                            if (file22.exists()) {
                                try {
                                    javaMetaInfo2.compiledCode = C2636o.c(file22).split("\n");
                                } catch (IOException e38) {
                                    e38.printStackTrace();
                                }
                            }
                            if (D0(javaMetaInfo)) {
                                return;
                            }
                            h0("instantiating the compiler and compiling the java file");
                            File file23 = file8;
                            String str27 = "JAVARuntime";
                            Main main = new Main(new PrintWriter(rVar), new PrintWriter(rVar), false, null);
                            try {
                            } catch (Error e39) {
                                e39.printStackTrace();
                                if (f84398a) {
                                    Terminal.log(e39);
                                }
                                z12 = false;
                                javaMetaInfo2.f72514d.clear();
                                javaMetaInfo2.f72525o = true;
                                it = linkedList.iterator();
                                d8.e eVar = null;
                                while (true) {
                                    z13 = z12;
                                    if (!it.hasNext()) {
                                    }
                                    charSequence = charSequence3;
                                    charSequence4 = charSequence2;
                                    z12 = z13;
                                    it = it2;
                                    str17 = str13;
                                    str21 = str12;
                                }
                                String str28 = str21;
                                String str29 = str17;
                                if (D0(javaMetaInfo)) {
                                }
                            } catch (Exception e40) {
                                e40.printStackTrace();
                                if (f84398a) {
                                    Terminal.log(e40);
                                }
                                z12 = false;
                                javaMetaInfo2.f72514d.clear();
                                javaMetaInfo2.f72525o = true;
                                it = linkedList.iterator();
                                d8.e eVar2 = null;
                                while (true) {
                                    z13 = z12;
                                    if (!it.hasNext()) {
                                    }
                                    charSequence = charSequence3;
                                    charSequence4 = charSequence2;
                                    z12 = z13;
                                    it = it2;
                                    str17 = str13;
                                    str21 = str12;
                                }
                                String str282 = str21;
                                String str292 = str17;
                                if (D0(javaMetaInfo)) {
                                }
                            }
                            if (D0(javaMetaInfo)) {
                                return;
                            }
                            z12 = main.compile(new String[]{"-1.8", "-proc:none", "-classpath", str24, "-maxProblems", Dd.c.f5131w, "-noExit", sb10});
                            h0(" ecjMain.compile result " + z12);
                            if (D0(javaMetaInfo)) {
                                return;
                            }
                            javaMetaInfo2.f72514d.clear();
                            javaMetaInfo2.f72525o = true;
                            it = linkedList.iterator();
                            d8.e eVar22 = null;
                            while (true) {
                                z13 = z12;
                                if (!it.hasNext()) {
                                    break;
                                }
                                String str30 = (String) it.next();
                                if (eVar22 == null) {
                                    try {
                                        if (str30.contains(". WARNING in ")) {
                                            dVar = new t8.g();
                                        } else if (str30.contains(". ERROR in ")) {
                                            dVar = new t8.d();
                                        } else {
                                            str12 = str21;
                                            it2 = it;
                                            str13 = str17;
                                        }
                                        str12 = str21;
                                        it2 = it;
                                        eVar22 = dVar;
                                        str13 = str17;
                                    } catch (Exception e41) {
                                        exc2 = e41;
                                        str12 = str21;
                                        it2 = it;
                                        str13 = str17;
                                        charSequence2 = charSequence4;
                                        charSequence3 = charSequence;
                                        exc2.printStackTrace();
                                        if (!f84398a) {
                                        }
                                        charSequence = charSequence3;
                                        charSequence4 = charSequence2;
                                        z12 = z13;
                                        it = it2;
                                        str17 = str13;
                                        str21 = str12;
                                    }
                                } else {
                                    it2 = it;
                                    try {
                                    } catch (Exception e42) {
                                        e = e42;
                                        str12 = str21;
                                        str13 = str17;
                                    }
                                    if (str30.startsWith(" (at line")) {
                                        try {
                                            str13 = str17;
                                            try {
                                                int x12 = Nc.b.x1(str30.replace(" (at line ", "").replace(")", ""), 0);
                                                if (UserController.P()) {
                                                    str12 = str21;
                                                } else {
                                                    str12 = str21;
                                                    try {
                                                        if (!Tc.b.w(javaMetaInfo2.f72511a, true).equals("_JContainer")) {
                                                            String[] strArr = javaMetaInfo2.compiledCode;
                                                            String str31 = (strArr == null || strArr.length <= x12) ? "" : strArr[x12];
                                                            if (str31.endsWith(d8.g.f84387b)) {
                                                                String substring = str31.substring(str31.indexOf("//[I-S]LN=") + 10);
                                                                x12 = Nc.b.w1(substring.substring(0, substring.indexOf(";")));
                                                            }
                                                        }
                                                    } catch (Exception e43) {
                                                        e = e43;
                                                        exc2 = e;
                                                        charSequence2 = charSequence4;
                                                        charSequence3 = charSequence;
                                                        exc2.printStackTrace();
                                                        if (!f84398a) {
                                                        }
                                                        charSequence = charSequence3;
                                                        charSequence4 = charSequence2;
                                                        z12 = z13;
                                                        it = it2;
                                                        str17 = str13;
                                                        str21 = str12;
                                                    }
                                                }
                                                eVar22.f(x12 - 1);
                                                String[] split2 = !str30.isEmpty() ? str30.split("\n") : new String[0];
                                                StringBuilder sb11 = new StringBuilder();
                                                for (int i17 = 1; i17 < split2.length; i17++) {
                                                    String str32 = split2[i17];
                                                    if (i17 >= split2.length - 1) {
                                                        String replace2 = str32.replace("\n", "");
                                                        if (replace2.length() > 1) {
                                                            sb11.append(replace2.substring(1));
                                                        } else {
                                                            sb11.append(replace2);
                                                        }
                                                    } else if (str32.length() > 1) {
                                                        sb11.append(str32.substring(1));
                                                        sb11.append("\n");
                                                    } else {
                                                        sb11.append(str32);
                                                        sb11.append("\n");
                                                    }
                                                }
                                                eVar22.g(sb11.toString());
                                            } catch (Exception e44) {
                                                e = e44;
                                                str12 = str21;
                                            }
                                        } catch (Exception e45) {
                                            e = e45;
                                            str12 = str21;
                                            str13 = str17;
                                        }
                                    } else {
                                        str12 = str21;
                                        str13 = str17;
                                        try {
                                        } catch (Exception e46) {
                                            e = e46;
                                            charSequence2 = charSequence4;
                                            charSequence3 = charSequence;
                                            exc2 = e;
                                            exc2.printStackTrace();
                                            if (!f84398a) {
                                            }
                                            charSequence = charSequence3;
                                            charSequence4 = charSequence2;
                                            z12 = z13;
                                            it = it2;
                                            str17 = str13;
                                            str21 = str12;
                                        }
                                        if (str30.contains("Syntax error, parameterized types are only available if source level is 1.5 or greater")) {
                                            str30 = eVar22.f84381a.contains("SteppedArrayList<") ? "Use of <> with SteppedArrayList is not supported yet, you can fix it by using non-typed: SteppedArrayList variableName" : eVar22.f84381a.contains("List<") ? "Use of <> with List is not supported yet, you can fix it by using non-typed: List variableName" : "Use of <> is not support yet, is not necessary in this case, remove <>";
                                        } else if (str30.contains("Syntax error, annotations are only available if source level is 1.5 or greater")) {
                                            str30 = "annotations is not supported yet.";
                                        } else {
                                            charSequence3 = charSequence;
                                            try {
                                                if (str30.contains(charSequence3)) {
                                                    try {
                                                        str30 = str30.replace(charSequence3, "are not supported yet.");
                                                        charSequence2 = charSequence4;
                                                    } catch (Exception e47) {
                                                        exc2 = e47;
                                                        charSequence2 = charSequence4;
                                                        exc2.printStackTrace();
                                                        if (!f84398a) {
                                                        }
                                                        charSequence = charSequence3;
                                                        charSequence4 = charSequence2;
                                                        z12 = z13;
                                                        it = it2;
                                                        str17 = str13;
                                                        str21 = str12;
                                                    }
                                                } else {
                                                    charSequence2 = charSequence4;
                                                    if (str30.contains(charSequence2)) {
                                                        str30 = str30.replace(charSequence2, "are not supported yet.");
                                                    }
                                                }
                                                eVar22.e(str30);
                                                if (str30.contains("The serializable class ")) {
                                                    try {
                                                    } catch (Exception e48) {
                                                        e = e48;
                                                        exc2 = e;
                                                        exc2.printStackTrace();
                                                        if (!f84398a) {
                                                            Terminal.log(exc2);
                                                        }
                                                        charSequence = charSequence3;
                                                        charSequence4 = charSequence2;
                                                        z12 = z13;
                                                        it = it2;
                                                        str17 = str13;
                                                        str21 = str12;
                                                    }
                                                }
                                                if (str30.contains("The import ")) {
                                                }
                                                if (eVar22 == null) {
                                                    try {
                                                        javaMetaInfo2.f72514d.add(eVar22);
                                                    } catch (Exception e49) {
                                                        e49.printStackTrace();
                                                        if (f84398a) {
                                                            Terminal.log(e49);
                                                        }
                                                    }
                                                    eVar22 = null;
                                                }
                                            } catch (Exception e50) {
                                                e = e50;
                                                charSequence2 = charSequence4;
                                                exc2 = e;
                                                exc2.printStackTrace();
                                                if (!f84398a) {
                                                }
                                                charSequence = charSequence3;
                                                charSequence4 = charSequence2;
                                                z12 = z13;
                                                it = it2;
                                                str17 = str13;
                                                str21 = str12;
                                            }
                                            charSequence = charSequence3;
                                            charSequence4 = charSequence2;
                                            z12 = z13;
                                            it = it2;
                                            str17 = str13;
                                            str21 = str12;
                                        }
                                        charSequence2 = charSequence4;
                                        charSequence3 = charSequence;
                                        eVar22.e(str30);
                                        if (str30.contains("The serializable class ")) {
                                        }
                                        if (str30.contains("The import ")) {
                                        }
                                        if (eVar22 == null) {
                                        }
                                        charSequence = charSequence3;
                                        charSequence4 = charSequence2;
                                        z12 = z13;
                                        it = it2;
                                        str17 = str13;
                                        str21 = str12;
                                    }
                                }
                                charSequence2 = charSequence4;
                                charSequence3 = charSequence;
                                charSequence = charSequence3;
                                charSequence4 = charSequence2;
                                z12 = z13;
                                it = it2;
                                str17 = str13;
                                str21 = str12;
                            }
                            String str2822 = str21;
                            String str2922 = str17;
                            if (D0(javaMetaInfo)) {
                                return;
                            }
                            String s11 = X7.a.s("JAVARuntime/" + Tc.b.w(javaMetaInfo2.f72511a, true) + ".java", N7.c.t());
                            if (s11 != null) {
                                try {
                                } catch (Exception e51) {
                                    exc = e51;
                                    z14 = z13;
                                    exc.printStackTrace();
                                    if (!D0(javaMetaInfo)) {
                                    }
                                }
                                if (!s11.isEmpty()) {
                                    split = s11.split("\n");
                                    sVar = new s();
                                    z14 = z13;
                                    for (i10 = 0; i10 < sVar.size(); i10++) {
                                        try {
                                            if (D0(javaMetaInfo)) {
                                                return;
                                            }
                                            z14 = sVar.get(i10).a(z14, s11, split, javaMetaInfo2);
                                        } catch (Exception e52) {
                                            exc = e52;
                                            exc.printStackTrace();
                                            if (!D0(javaMetaInfo)) {
                                            }
                                        }
                                    }
                                    if (!D0(javaMetaInfo)) {
                                        return;
                                    }
                                    if (Tc.b.w(javaMetaInfo2.f72511a, true).equals("_JContainer") && (list2 = javaMetaInfo2.f72514d) != null) {
                                        for (d8.e eVar3 : list2) {
                                            int i18 = eVar3.f84383c;
                                            while (true) {
                                                if (i18 <= 0) {
                                                    str10 = str20;
                                                    break;
                                                }
                                                try {
                                                    str11 = javaMetaInfo2.compiledCode[i18];
                                                    str10 = str20;
                                                } catch (Exception e53) {
                                                    e = e53;
                                                    str10 = str20;
                                                }
                                                try {
                                                    if (str11.startsWith(str10)) {
                                                        eVar3.f84385e = str11.replace(str10, "");
                                                        break;
                                                    } else {
                                                        i18--;
                                                        str20 = str10;
                                                    }
                                                } catch (Exception e54) {
                                                    e = e54;
                                                    e.printStackTrace();
                                                    if (eVar3.f84385e == null) {
                                                    }
                                                    str20 = str10;
                                                }
                                            }
                                            if (eVar3.f84385e == null) {
                                                Iterator<JavaMetaInfo> it7 = f84415r.iterator();
                                                while (true) {
                                                    if (it7.hasNext()) {
                                                        JavaMetaInfo next2 = it7.next();
                                                        if (next2.f72515e.equals(eVar3.f84385e)) {
                                                            int i19 = eVar3.f84383c;
                                                            String[] strArr2 = javaMetaInfo2.compiledCode;
                                                            String str33 = (strArr2 == null || strArr2.length <= i19) ? "" : strArr2[i19];
                                                            if (str33.endsWith(d8.g.f84387b)) {
                                                                String substring2 = str33.substring(str33.indexOf("//[I-S]LN=") + 10);
                                                                i19 = Nc.b.w1(substring2.substring(0, substring2.indexOf(";")));
                                                            }
                                                            eVar3.f84383c = i19;
                                                            eVar3.f84382b = d8.g.d(eVar3.f84382b);
                                                            eVar3.f84381a = d8.g.d(eVar3.f84381a);
                                                            next2.f72514d.add(eVar3);
                                                            if (eVar3.d()) {
                                                                next2.f72519i = true;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            str20 = str10;
                                        }
                                    }
                                    if (f84398a && (list = javaMetaInfo2.f72514d) != null && !list.isEmpty()) {
                                        h0("Compilled (" + z14 + ") Outputs:");
                                        for (d8.e eVar4 : javaMetaInfo2.f72514d) {
                                            h0("----------------------------------------");
                                            h0(eVar4.toString());
                                        }
                                    }
                                    if (file18.exists()) {
                                        file18.delete();
                                    }
                                    javaMetaInfo2.f72516f = z14;
                                    javaMetaInfo2.f72519i = !z14;
                                    File file24 = javaMetaInfo2.f72523m;
                                    if (file24 != null) {
                                        X7.a.h(file24, X7.a.m().toJson(javaMetaInfo2));
                                    }
                                    if (z14) {
                                        String[] list3 = new File(str24).list();
                                        javaMetaInfo2.f72513c.clear();
                                        LinkedList linkedList2 = new LinkedList();
                                        if (list3 != null) {
                                            int i20 = 0;
                                            while (i20 < list3.length) {
                                                String str34 = list3[i20];
                                                String str35 = str2822;
                                                if (str34.endsWith(str35)) {
                                                    StringBuilder sb12 = new StringBuilder();
                                                    sb12.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()));
                                                    str8 = str2922;
                                                    sb12.append(str8);
                                                    str9 = str27;
                                                    sb12.append(str9);
                                                    sb12.append(str8);
                                                    sb12.append(Tc.b.v(str34));
                                                    String sb13 = sb12.toString();
                                                    String str36 = com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + str8 + str9 + str8 + str9 + str8 + Tc.b.v(str34);
                                                    File file25 = new File(sb13);
                                                    File file26 = new File(str36);
                                                    file3 = file23;
                                                    File file27 = new File(file3, Tc.b.v(sb13));
                                                    try {
                                                        d8.k.e(file25, file26);
                                                        d8.k.e(file25, file27);
                                                    } catch (IOException e55) {
                                                        e55.printStackTrace();
                                                        if (f84398a) {
                                                            Terminal.log((Exception) e55);
                                                        }
                                                    }
                                                    linkedList2.add(str36);
                                                    List<d8.d> list4 = javaMetaInfo2.f72513c;
                                                    String v10 = Tc.b.v(str34);
                                                    StringBuilder sb14 = new StringBuilder();
                                                    sb14.append(Tc.b.w(str34, true));
                                                    str7 = str26;
                                                    sb14.append(str7);
                                                    list4.add(new d8.d(v10, sb14.toString()));
                                                } else {
                                                    str7 = str26;
                                                    file3 = file23;
                                                    str8 = str2922;
                                                    str9 = str27;
                                                }
                                                i20++;
                                                str26 = str7;
                                                str2822 = str35;
                                                str2922 = str8;
                                                str27 = str9;
                                                file23 = file3;
                                            }
                                        }
                                        String str37 = str26;
                                        file2 = file23;
                                        String str38 = str2922;
                                        str4 = str2822;
                                        String str39 = str27;
                                        int i21 = 0;
                                        while (i21 < linkedList2.size()) {
                                            String str40 = (String) linkedList2.get(i21);
                                            String str41 = com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + str38 + str39 + str38 + Tc.b.w(str40, true) + str4;
                                            StringBuilder sb15 = new StringBuilder();
                                            String str42 = str25;
                                            sb15.append(str42);
                                            String str43 = str3;
                                            sb15.append(str43);
                                            sb15.append(str39);
                                            sb15.append(str38);
                                            LinkedList linkedList3 = linkedList2;
                                            sb15.append(Tc.b.w(str41, true));
                                            sb15.append(str4);
                                            String sb16 = sb15.toString();
                                            StringBuilder sb17 = new StringBuilder();
                                            sb17.append(str24);
                                            String str44 = str24;
                                            sb17.append(Tc.b.w(str41, true));
                                            String str45 = str;
                                            sb17.append(str45);
                                            String sb18 = sb17.toString();
                                            h0("calling DEX and dexifying the class");
                                            str = str45;
                                            try {
                                                StringBuilder sb19 = new StringBuilder();
                                                str5 = str38;
                                                try {
                                                    sb19.append("--output=");
                                                    sb19.append(sb18);
                                                    C12885b.a(str42, new String[]{"--dex", sb19.toString(), sb16});
                                                    try {
                                                        if (new File(sb18).exists()) {
                                                            C15608a c15608a2 = new C15608a(sb18);
                                                            try {
                                                                Iterator<Bg.j> it8 = c15608a2.R().iterator();
                                                                while (it8.hasNext()) {
                                                                    Bg.j next3 = it8.next();
                                                                    Iterator<Bg.j> it9 = it8;
                                                                    String j10 = next3.j();
                                                                    if (!next3.s() && j10 != null) {
                                                                        str6 = str39;
                                                                        try {
                                                                            if (j10.endsWith(DexFormat.DEX_IN_JAR_NAME)) {
                                                                                zg.k S10 = c15608a2.S(next3);
                                                                                try {
                                                                                    StringBuilder sb20 = new StringBuilder();
                                                                                    str25 = str42;
                                                                                    str3 = str43;
                                                                                    try {
                                                                                        sb20.append(Tc.b.w(str40, true));
                                                                                        sb20.append(str37);
                                                                                        w(S10, new File(file2, sb20.toString()), false);
                                                                                        if (S10 != null) {
                                                                                            try {
                                                                                                S10.close();
                                                                                            } catch (Throwable th7) {
                                                                                                th = th7;
                                                                                                Throwable th8 = th;
                                                                                                try {
                                                                                                    c15608a2.close();
                                                                                                } catch (Throwable th9) {
                                                                                                    try {
                                                                                                        th8.addSuppressed(th9);
                                                                                                    } catch (TooManyErrorsException e56) {
                                                                                                        e = e56;
                                                                                                        e.printStackTrace();
                                                                                                        javaMetaInfo2.f72516f = false;
                                                                                                        javaMetaInfo2.f72519i = true;
                                                                                                        f84395D.set(true);
                                                                                                        new File(str41).delete();
                                                                                                        new File(sb18).delete();
                                                                                                        i21++;
                                                                                                        linkedList2 = linkedList3;
                                                                                                        str24 = str44;
                                                                                                        str38 = str5;
                                                                                                        str39 = str6;
                                                                                                    } catch (UnknownError e57) {
                                                                                                        e = e57;
                                                                                                        e.printStackTrace();
                                                                                                        javaMetaInfo2.f72516f = false;
                                                                                                        javaMetaInfo2.f72519i = true;
                                                                                                        f84395D.set(true);
                                                                                                        new File(str41).delete();
                                                                                                        new File(sb18).delete();
                                                                                                        i21++;
                                                                                                        linkedList2 = linkedList3;
                                                                                                        str24 = str44;
                                                                                                        str38 = str5;
                                                                                                        str39 = str6;
                                                                                                    } catch (Error e58) {
                                                                                                        e = e58;
                                                                                                        Throwable th10 = e;
                                                                                                        th10.printStackTrace();
                                                                                                        javaMetaInfo2.f72516f = false;
                                                                                                        if (f84398a) {
                                                                                                        }
                                                                                                        new File(str41).delete();
                                                                                                        new File(sb18).delete();
                                                                                                        i21++;
                                                                                                        linkedList2 = linkedList3;
                                                                                                        str24 = str44;
                                                                                                        str38 = str5;
                                                                                                        str39 = str6;
                                                                                                    } catch (Exception e59) {
                                                                                                        e = e59;
                                                                                                        Throwable th102 = e;
                                                                                                        th102.printStackTrace();
                                                                                                        javaMetaInfo2.f72516f = false;
                                                                                                        if (f84398a) {
                                                                                                        }
                                                                                                        new File(str41).delete();
                                                                                                        new File(sb18).delete();
                                                                                                        i21++;
                                                                                                        linkedList2 = linkedList3;
                                                                                                        str24 = str44;
                                                                                                        str38 = str5;
                                                                                                        str39 = str6;
                                                                                                    }
                                                                                                }
                                                                                                throw th8;
                                                                                                break;
                                                                                            }
                                                                                        }
                                                                                        t8.c.a(new File(file2, Tc.b.w(str40, true) + str37), sb18, sb16, file2, str40);
                                                                                        it8 = it9;
                                                                                        str42 = str25;
                                                                                        str43 = str3;
                                                                                        str39 = str6;
                                                                                    } catch (Throwable th11) {
                                                                                        th = th11;
                                                                                        Throwable th12 = th;
                                                                                        if (S10 != null) {
                                                                                            try {
                                                                                                S10.close();
                                                                                            } catch (Throwable th13) {
                                                                                                th12.addSuppressed(th13);
                                                                                            }
                                                                                        }
                                                                                        throw th12;
                                                                                        break;
                                                                                    }
                                                                                } catch (Throwable th14) {
                                                                                    th = th14;
                                                                                    str25 = str42;
                                                                                    str3 = str43;
                                                                                }
                                                                            }
                                                                        } catch (Throwable th15) {
                                                                            th = th15;
                                                                            str25 = str42;
                                                                            str3 = str43;
                                                                            Throwable th82 = th;
                                                                            c15608a2.close();
                                                                            throw th82;
                                                                            break;
                                                                            break;
                                                                        }
                                                                    } else {
                                                                        str6 = str39;
                                                                    }
                                                                    str25 = str42;
                                                                    str3 = str43;
                                                                    it8 = it9;
                                                                    str42 = str25;
                                                                    str43 = str3;
                                                                    str39 = str6;
                                                                }
                                                                str6 = str39;
                                                                str25 = str42;
                                                                str3 = str43;
                                                                try {
                                                                    c15608a2.close();
                                                                } catch (IOException e60) {
                                                                    e = e60;
                                                                    IOException iOException3 = e;
                                                                    iOException3.printStackTrace();
                                                                    javaMetaInfo2.f72516f = false;
                                                                    if (f84398a) {
                                                                        Terminal.log((Exception) iOException3);
                                                                    }
                                                                    new File(str41).delete();
                                                                    new File(sb18).delete();
                                                                    i21++;
                                                                    linkedList2 = linkedList3;
                                                                    str24 = str44;
                                                                    str38 = str5;
                                                                    str39 = str6;
                                                                }
                                                            } catch (Throwable th16) {
                                                                th = th16;
                                                                str6 = str39;
                                                            }
                                                        } else {
                                                            str6 = str39;
                                                            str25 = str42;
                                                            str3 = str43;
                                                            javaMetaInfo2.f72516f = false;
                                                            if (f84398a) {
                                                                h0("ZIP FILE NOT FOUND " + sb18);
                                                            }
                                                        }
                                                    } catch (IOException e61) {
                                                        e = e61;
                                                        str6 = str39;
                                                        str25 = str42;
                                                        str3 = str43;
                                                    }
                                                } catch (TooManyErrorsException e62) {
                                                    e = e62;
                                                    str6 = str39;
                                                    str25 = str42;
                                                    str3 = str43;
                                                    e.printStackTrace();
                                                    javaMetaInfo2.f72516f = false;
                                                    javaMetaInfo2.f72519i = true;
                                                    f84395D.set(true);
                                                    new File(str41).delete();
                                                    new File(sb18).delete();
                                                    i21++;
                                                    linkedList2 = linkedList3;
                                                    str24 = str44;
                                                    str38 = str5;
                                                    str39 = str6;
                                                } catch (UnknownError e63) {
                                                    e = e63;
                                                    str6 = str39;
                                                    str25 = str42;
                                                    str3 = str43;
                                                    e.printStackTrace();
                                                    javaMetaInfo2.f72516f = false;
                                                    javaMetaInfo2.f72519i = true;
                                                    f84395D.set(true);
                                                    new File(str41).delete();
                                                    new File(sb18).delete();
                                                    i21++;
                                                    linkedList2 = linkedList3;
                                                    str24 = str44;
                                                    str38 = str5;
                                                    str39 = str6;
                                                } catch (Error e64) {
                                                    e = e64;
                                                    str6 = str39;
                                                    str25 = str42;
                                                    str3 = str43;
                                                    Throwable th1022 = e;
                                                    th1022.printStackTrace();
                                                    javaMetaInfo2.f72516f = false;
                                                    if (f84398a) {
                                                        Terminal.log(th1022);
                                                    }
                                                    new File(str41).delete();
                                                    new File(sb18).delete();
                                                    i21++;
                                                    linkedList2 = linkedList3;
                                                    str24 = str44;
                                                    str38 = str5;
                                                    str39 = str6;
                                                } catch (Exception e65) {
                                                    e = e65;
                                                    str6 = str39;
                                                    str25 = str42;
                                                    str3 = str43;
                                                    Throwable th10222 = e;
                                                    th10222.printStackTrace();
                                                    javaMetaInfo2.f72516f = false;
                                                    if (f84398a) {
                                                    }
                                                    new File(str41).delete();
                                                    new File(sb18).delete();
                                                    i21++;
                                                    linkedList2 = linkedList3;
                                                    str24 = str44;
                                                    str38 = str5;
                                                    str39 = str6;
                                                }
                                            } catch (TooManyErrorsException e66) {
                                                e = e66;
                                                str5 = str38;
                                            } catch (UnknownError e67) {
                                                e = e67;
                                                str5 = str38;
                                            } catch (Error e68) {
                                                e = e68;
                                                str5 = str38;
                                                str6 = str39;
                                                str25 = str42;
                                                str3 = str43;
                                                Throwable th102222 = e;
                                                th102222.printStackTrace();
                                                javaMetaInfo2.f72516f = false;
                                                if (f84398a) {
                                                }
                                                new File(str41).delete();
                                                new File(sb18).delete();
                                                i21++;
                                                linkedList2 = linkedList3;
                                                str24 = str44;
                                                str38 = str5;
                                                str39 = str6;
                                            } catch (Exception e69) {
                                                e = e69;
                                                str5 = str38;
                                                str6 = str39;
                                                str25 = str42;
                                                str3 = str43;
                                                Throwable th1022222 = e;
                                                th1022222.printStackTrace();
                                                javaMetaInfo2.f72516f = false;
                                                if (f84398a) {
                                                }
                                                new File(str41).delete();
                                                new File(sb18).delete();
                                                i21++;
                                                linkedList2 = linkedList3;
                                                str24 = str44;
                                                str38 = str5;
                                                str39 = str6;
                                            }
                                            new File(str41).delete();
                                            new File(sb18).delete();
                                            i21++;
                                            linkedList2 = linkedList3;
                                            str24 = str44;
                                            str38 = str5;
                                            str39 = str6;
                                        }
                                    } else {
                                        file2 = file23;
                                        str4 = str2822;
                                    }
                                }
                            }
                            split = new String[0];
                            sVar = new s();
                            z14 = z13;
                            while (i10 < sVar.size()) {
                            }
                            if (!D0(javaMetaInfo)) {
                            }
                        } catch (IOException e70) {
                            e70.printStackTrace();
                            javaMetaInfo2.f72516f = false;
                            if (f84398a) {
                                Terminal.log((Exception) e70);
                                return;
                            }
                            return;
                        }
                    }
                    if (javaMetaInfo2.f72511a.equals("_PROJECT/Scripts/_JContainer.java")) {
                    }
                    file4 = file;
                    h0("Copying .class files to JAVARuntime/JAVARuntime/");
                    listFiles = file2.listFiles();
                    if (listFiles != null) {
                    }
                    javaMetaInfo2.f72518h = false;
                    return;
                }
                file = file7;
                str = ".zip";
                str3 = "./";
                h0("ONLY DEX COMPILATION FAILED, jc.javac INVALID");
                if (D0(javaMetaInfo)) {
                }
            }
        }
        file = file7;
        str = ".zip";
        str2 = f84411n;
        str3 = "./";
        if (D0(javaMetaInfo)) {
        }
    }

    public static void t0() {
        s0();
    }

    public static boolean u(Object object) {
        synchronized (f84419v) {
            int i10 = 0;
            while (true) {
                try {
                    List<y> list = f84419v;
                    if (i10 >= list.size()) {
                        return false;
                    }
                    y yVar = list.get(i10);
                    if (yVar.b() && yVar.a() == object) {
                        return true;
                    }
                    i10++;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static void u0() {
        C12894h.q();
    }

    public static void v(File file, File dst) throws IOException {
        if (!file.exists()) {
            throw new FileNotFoundException("File not found:" + file.getAbsolutePath());
        }
        File parentFile = dst.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        if (dst.exists()) {
            dst.delete();
        }
        dst.createNewFile();
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(dst);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = fileInputStream2.read(bArr);
                        if (read <= 0) {
                            fileInputStream2.close();
                            return;
                        }
                        fileOutputStream.write(bArr, 0, read);
                    }
                } finally {
                    fileOutputStream.close();
                }
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = fileInputStream2;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static void v0() {
        f84396E = null;
        f84406i = null;
        n0(N7.c.o());
    }

    public static void w(InputStream in2, File dst, boolean closeIS) throws IOException {
        try {
            File parentFile = dst.getParentFile();
            if (!parentFile.exists()) {
                parentFile.mkdirs();
            }
            if (dst.exists()) {
                dst.delete();
            }
            dst.createNewFile();
            FileOutputStream fileOutputStream = new FileOutputStream(dst);
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = in2.read(bArr);
                    if (read <= 0) {
                        break;
                    } else {
                        fileOutputStream.write(bArr, 0, read);
                    }
                }
                if (closeIS) {
                    in2.close();
                }
            } finally {
                fileOutputStream.close();
            }
        } catch (Throwable th2) {
            if (closeIS) {
                in2.close();
            }
            throw th2;
        }
    }

    public static void w0(Runnable r10) {
        List<Runnable> list = f84422y;
        synchronized (list) {
            list.remove(r10);
        }
    }

    public static void x(JavaMetaInfo javaMetaInfo, File projectRoot, File metaFolder) {
        File[] listFiles;
        Iterator<JavaMetaInfo> it = f84423z.iterator();
        while (it.hasNext()) {
            File file = new File(projectRoot, it.next().f72512b);
            if (file.exists() && (listFiles = file.listFiles()) != null) {
                for (File file2 : listFiles) {
                    if (file2.getName().endsWith(".dex") || file2.getName().endsWith(".class")) {
                        try {
                            d8.k.e(file2, new File(metaFolder, file2.getName()));
                        } catch (IOException e10) {
                            e10.printStackTrace();
                            if (f84398a) {
                                Terminal.log((Exception) e10);
                            }
                        }
                    }
                }
            }
        }
    }

    public static void x0(Object object) {
        synchronized (f84419v) {
            int i10 = 0;
            while (true) {
                try {
                    List<y> list = f84419v;
                    if (i10 >= list.size()) {
                        return;
                    }
                    y yVar = list.get(i10);
                    if (yVar.b() && yVar.a() == object) {
                        list.remove(yVar);
                        return;
                    }
                    i10++;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static String y(String className) {
        return className.contains("JAVARuntime.") ? className.replace("JAVARuntime.", "") : className;
    }

    public static void y0(d8.r loadedClass) {
        List<d8.r> list = f84418u;
        synchronized (list) {
            list.remove(loadedClass);
        }
    }

    public static int z() {
        Iterator<JavaMetaInfo> it = f84416s.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (!Tc.b.w(it.next().f72511a, true).startsWith("_I")) {
                i10++;
            }
        }
        return i10;
    }

    public static void z0() {
        X7.a.b("JAVARuntime/rtdic.config", X7.a.m().toJson(f84414q), N7.c.t());
    }

    public void m0() {
        com.itsmagic.engine.Core.Components.ProjectController.a.h(new k());
    }
}
