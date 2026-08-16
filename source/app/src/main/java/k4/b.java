package K4;

import Ic.C2636o;
import K4.a;
import b3.s;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.JavaComponent.JavaComponent;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import d8.j;
import d8.m;
import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import yd.C16181m;

public class b extends K4.a {

    public Process f10806c;

    public Thread f10807d;

    public String f10810g;

    public final AtomicBoolean f10805b = new AtomicBoolean();

    public final List<String> f10808e = new SteppedArrayList();

    public final List<String> f10809f = new c();

    public boolean f10811h = false;

    public byte[] f10812i = new byte[Pg.a.f21453k];

    public class a implements x8.b {

        public class RunnableC0350a implements Runnable {
            public RunnableC0350a() {
            }

            @Override
            public void run() {
                try {
                    File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_EDITOR/");
                    if (file.exists()) {
                        File file2 = new File(file, "shellAutoRun.sh");
                        if (file2.exists()) {
                            b.p(file2, file);
                        } else {
                            C2636o.a("# SHELL AUTO RUN\n# all commands here will execute automatically on a background and hidden shell, everytime the project is open", file2);
                        }
                    }
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
        }

        @Override
        public void a() {
            new Thread(new RunnableC0350a()).start();
        }

        @Override
        public void b() {
        }
    }

    public class C0351b implements a.InterfaceC0349a {

        public final List f10814a;

        public final File f10815b;

        public C0351b(final List val$outputs, final File val$root) {
            this.f10814a = val$outputs;
            this.f10815b = val$root;
        }

        @Override
        public void a(List<String> text) {
            this.f10814a.addAll(text);
        }

        @Override
        public void b(String msg) {
            this.f10814a.add(msg);
        }

        @Override
        public void stop() {
            try {
                StringBuilder sb2 = new StringBuilder();
                for (int i10 = 0; i10 < this.f10814a.size(); i10++) {
                    String str = (String) this.f10814a.get(i10);
                    if (i10 > 0) {
                        sb2.append("\n");
                    }
                    sb2.append(str);
                }
                C2636o.a(sb2.toString(), new File(this.f10815b, "shellAutoRun_log.txt"));
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    public class c extends SteppedArrayList<String> {
        public c() {
            add("cd \"" + com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/\"");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("export HOME=");
            sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.R());
            add(sb2.toString());
        }
    }

    public class d implements Runnable {
        public d() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:29:0x00d9, code lost:
        
            r4.write("exit;\n");
            r4.flush();
            r10.f10817b.y();
            r0 = r10.f10817b.w(r2, r3);
         */
        /* JADX WARN: Multi-variable type inference failed */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            try {
                try {
                    b.this.f10806c = Runtime.getRuntime().exec(new String[]{"sh", "-i"});
                    InputStream inputStream = b.this.f10806c.getInputStream();
                    InputStream errorStream = b.this.f10806c.getErrorStream();
                    BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(b.this.f10806c.getOutputStream()));
                    b.this.w(inputStream, errorStream);
                    try {
                        Thread.sleep(10L);
                    } catch (InterruptedException e10) {
                        e10.printStackTrace();
                    }
                    b.this.s();
                    int i10 = 0;
                    for (String str : b.this.f10809f) {
                        if (i10 > 0) {
                            b.this.f10811h = true;
                        }
                        bufferedWriter.write(str + " \n");
                        bufferedWriter.flush();
                        b.this.y();
                        b.this.w(inputStream, errorStream);
                        i10++;
                    }
                    b.this.f10811h = true;
                    loop1: while (true) {
                        if (!b.this.v()) {
                            break;
                        }
                        b.this.w(inputStream, errorStream);
                        synchronized (b.this.f10808e) {
                            while (!b.this.f10808e.isEmpty()) {
                                String str2 = (String) b.this.f10808e.remove(0);
                                if (str2.equals("stopshell")) {
                                    break loop1;
                                }
                                bufferedWriter.write(str2 + " \n");
                                bufferedWriter.flush();
                                b.this.y();
                                b.this.w(inputStream, errorStream);
                            }
                        }
                        b.this.y();
                    }
                    inputStream.close();
                    errorStream.close();
                    bufferedWriter.close();
                } finally {
                    b.this.t("Shell finalized");
                    b.this.f10807d = null;
                    b.this.f10806c = null;
                    b.this.f10805b.set(false);
                    b.this.c();
                }
            } catch (Error | Exception e11) {
                e11.printStackTrace();
                b.this.u(e11);
            }
        }
    }

    public class e extends Writer {

        public final List f10818b;

        public e(final List val$compillerOutputs) {
            this.f10818b = val$compillerOutputs;
        }

        @Override
        public void close() throws IOException {
        }

        @Override
        public void flush() throws IOException {
        }

        @Override
        public void write(char[] cbuf, int off, int len) throws IOException {
            this.f10818b.add(new String(cbuf, off, len));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static List<String> A(Throwable e10) {
        LinkedList linkedList = new LinkedList();
        e10.printStackTrace(new PrintWriter(new e(linkedList)));
        String name = m.class.getName();
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
                        String substring4 = substring2.substring(substring2.lastIndexOf(s.f32937c) + 1);
                        int w12 = Nc.b.w1(substring4);
                        j jVar = W7.b.f27310j;
                        if (j.J(substring3) != null) {
                            str = str.replace(s.f32937c + substring4, s.f32937c + w12);
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

    public static void p(File autoRun, File root) throws IOException {
        String c10 = C2636o.c(autoRun);
        if (c10 != null) {
            String[] split = c10.split("\n");
            if (split.length > 0) {
                SteppedArrayList steppedArrayList = new SteppedArrayList();
                b bVar = new b();
                bVar.f10804a = new C0351b(steppedArrayList, root);
                bVar.b();
                for (String str : split) {
                    if (!str.trim().startsWith(C16181m.f130230g)) {
                        bVar.a(str);
                    }
                }
            }
        }
    }

    public static void x() {
        com.itsmagic.engine.Core.Components.ProjectController.a.h(new a());
    }

    @Override
    public void a(String command) {
        this.f10810g = com.itsmagic.engine.Core.Components.ProjectController.a.R();
        if (command == null || command.trim().isEmpty()) {
            t("Command can't be empty");
        } else {
            if (!this.f10805b.get()) {
                t("Shell stopped!");
                return;
            }
            synchronized (this.f10808e) {
                this.f10808e.add(command);
            }
        }
    }

    @Override
    public void b() {
        r();
        this.f10810g = com.itsmagic.engine.Core.Components.ProjectController.a.R();
        a.InterfaceC0349a interfaceC0349a = this.f10804a;
        if (interfaceC0349a != null) {
            interfaceC0349a.b("S/Unix shell started, type your command.");
        }
        z();
    }

    public final void q(String line) {
        if (this.f10804a != null) {
            String str = s.f32937c + com.itsmagic.engine.Core.Components.ProjectController.a.T() + " $";
            if (line.contains(str)) {
                line = line.substring(line.indexOf(str) + str.length());
            }
            this.f10804a.b(">- S:" + com.itsmagic.engine.Core.Components.ProjectController.a.T() + "/" + line);
        }
    }

    public final void r() {
        try {
            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_EDITOR/");
            if (file.exists()) {
                File file2 = new File(file, "shellAutoConfig.sh");
                if (!file2.exists()) {
                    C2636o.a("# SHELL AUTO CONFIG FILE\n# All commands here will execute automatically everytime a new shell is open in terminal.", file2);
                    return;
                }
                String c10 = C2636o.c(file2);
                if (c10 != null) {
                    String[] split = c10.split("\n");
                    if (split.length > 0) {
                        for (String str : split) {
                            if (!str.trim().startsWith(C16181m.f130230g)) {
                                this.f10809f.add(str);
                            }
                        }
                    }
                }
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    public final void s() {
    }

    public void t(String s10) {
        if (this.f10804a != null) {
            s10.getClass();
            for (String str : s10.replace(this.f10810g, com.itsmagic.engine.Core.Components.ProjectController.a.T()).split("\n")) {
                q(str);
            }
        }
    }

    public void u(Throwable e10) {
        if (this.f10804a != null) {
            if ((e10 instanceof IOException) && e10.getMessage().contains("Permission denied")) {
                t("Permission denied");
                return;
            }
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            steppedArrayList.add("S/Exception");
            List<String> A10 = A(e10);
            for (int i10 = 0; i10 < A10.size(); i10++) {
                String str = A10.get(i10);
                if (!str.trim().isEmpty()) {
                    steppedArrayList.add("   >- S/" + str.replace(this.f10810g, com.itsmagic.engine.Core.Components.ProjectController.a.T()));
                }
            }
            steppedArrayList.add("S/^^^");
            this.f10804a.a(steppedArrayList);
        }
    }

    public final boolean v() {
        return !this.f10806c.isAlive();
    }

    public final boolean w(InputStream stdInput, InputStream stdError) throws IOException {
        if (!this.f10811h) {
            return false;
        }
        boolean z10 = false;
        while (true) {
            int available = stdInput.available();
            if (available <= 0) {
                break;
            }
            byte[] bArr = this.f10812i;
            t(new String(this.f10812i, 0, stdInput.read(bArr, 0, Math.min(available, bArr.length))));
            z10 = true;
        }
        while (true) {
            int available2 = stdError.available();
            if (available2 <= 0) {
                return z10;
            }
            byte[] bArr2 = this.f10812i;
            t(new String(this.f10812i, 0, stdError.read(bArr2, 0, Math.min(available2, bArr2.length))));
            z10 = true;
        }
    }

    public final void y() {
        try {
            Thread.sleep(10L);
        } catch (InterruptedException e10) {
            e10.printStackTrace();
        }
    }

    public final void z() {
        if (this.f10805b.compareAndSet(false, true)) {
            Thread thread = new Thread(new d());
            this.f10807d = thread;
            thread.start();
        }
    }
}
