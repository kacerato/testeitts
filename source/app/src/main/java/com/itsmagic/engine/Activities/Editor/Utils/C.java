package com.itsmagic.engine.Activities.Editor.Utils;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.LinkedList;
import java.util.List;

public class C {

    public class a extends Writer {

        public final List f71986b;

        public a(final List val$compillerOutputs) {
            this.f71986b = val$compillerOutputs;
        }

        @Override
        public void close() throws IOException {
        }

        @Override
        public void flush() throws IOException {
        }

        @Override
        public void write(char[] cbuf, int off, int len) throws IOException {
            Ac.b bVar = new Ac.b(cbuf, off, len);
            if (bVar.X("\n")) {
                return;
            }
            this.f71986b.add(bVar);
        }
    }

    public class b extends Writer {

        public final List f71987b;

        public b(final List val$compillerOutputs) {
            this.f71987b = val$compillerOutputs;
        }

        @Override
        public void close() throws IOException {
        }

        @Override
        public void flush() throws IOException {
        }

        @Override
        public void write(char[] cbuf, int off, int len) throws IOException {
            this.f71987b.add(new String(cbuf, off, len));
        }
    }

    public static void a() {
        try {
            throw new RuntimeException();
        } catch (RuntimeException e10) {
            e10.printStackTrace();
        }
    }

    public static void b(String msg) {
        try {
            throw new RuntimeException(msg);
        } catch (RuntimeException e10) {
            e10.printStackTrace();
        }
    }

    public static List<String> c() {
        try {
            throw new DebugException();
        } catch (RuntimeException e10) {
            return f(e10);
        }
    }

    public static List<Ac.b> d() {
        try {
            throw new DebugException();
        } catch (RuntimeException e10) {
            return e(e10);
        }
    }

    public static List<Ac.b> e(Throwable e10) {
        SteppedArrayList steppedArrayList = new SteppedArrayList(100);
        if (e10.getCause() != null) {
            steppedArrayList.addAll(e(e10.getCause()));
        }
        SteppedArrayList steppedArrayList2 = new SteppedArrayList(100);
        e10.printStackTrace(new PrintWriter(new a(steppedArrayList2)));
        steppedArrayList.addAll(steppedArrayList2);
        return steppedArrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static List<String> f(Throwable e10) {
        LinkedList linkedList = new LinkedList();
        if (e10.getCause() != null) {
            linkedList.addAll(f(e10.getCause()));
        }
        LinkedList linkedList2 = new LinkedList();
        e10.printStackTrace(new PrintWriter(new b(linkedList2)));
        for (int i10 = 0; i10 < linkedList2.size(); i10++) {
            String str = (String) linkedList2.get(i10);
            if (!str.equals("\n")) {
                linkedList.add(str);
            }
        }
        return linkedList;
    }
}
