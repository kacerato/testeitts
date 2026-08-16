package kotlin.io;

import Xf.InterfaceC3312m;
import Xf.x;
import ag.C3625g;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.J;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14394D;
import nf.P0;
import org.jetbrains.annotations.NotNull;

@Lf.j(name = "TextStreamsKt")
@t0({"SMAP\nReadWrite.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReadWrite.kt\nkotlin/io/TextStreamsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,166:1\n66#1:167\n1#2:168\n1#2:171\n1342#3,2:169\n*S KotlinDebug\n*F\n+ 1 ReadWrite.kt\nkotlin/io/TextStreamsKt\n*L\n43#1:167\n43#1:168\n43#1:169,2\n*E\n"})
public final class w {
    @Ef.f
    public static final BufferedReader b(Reader reader, int i10) {
        M.p(reader, "<this>");
        return reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader, i10);
    }

    @Ef.f
    public static final BufferedWriter c(Writer writer, int i10) {
        M.p(writer, "<this>");
        return writer instanceof BufferedWriter ? (BufferedWriter) writer : new BufferedWriter(writer, i10);
    }

    public static BufferedReader d(Reader reader, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 8192;
        }
        M.p(reader, "<this>");
        return reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader, i10);
    }

    public static BufferedWriter e(Writer writer, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 8192;
        }
        M.p(writer, "<this>");
        return writer instanceof BufferedWriter ? (BufferedWriter) writer : new BufferedWriter(writer, i10);
    }

    @InterfaceC14394D
    public static final long f(@NotNull Reader reader, @NotNull Writer out, int i10) {
        M.p(reader, "<this>");
        M.p(out, "out");
        char[] cArr = new char[i10];
        int read = reader.read(cArr);
        long j10 = 0;
        while (read >= 0) {
            out.write(cArr, 0, read);
            j10 += read;
            read = reader.read(cArr);
        }
        return j10;
    }

    public static long g(Reader reader, Writer writer, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 8192;
        }
        return f(reader, writer, i10);
    }

    public static final void h(@NotNull Reader reader, @NotNull Mf.l<? super String, P0> action) {
        M.p(reader, "<this>");
        M.p(action, "action");
        BufferedReader bufferedReader = reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader, 8192);
        try {
            Iterator<String> it = i(bufferedReader).iterator();
            while (it.hasNext()) {
                action.invoke(it.next());
            }
            P0 p02 = P0.f98194a;
            b.a(bufferedReader, null);
        } finally {
        }
    }

    @NotNull
    public static final InterfaceC3312m<String> i(@NotNull BufferedReader bufferedReader) {
        M.p(bufferedReader, "<this>");
        return x.k(new s(bufferedReader));
    }

    @NotNull
    public static final byte[] j(@NotNull URL url) {
        M.p(url, "<this>");
        InputStream openStream = url.openStream();
        try {
            M.m(openStream);
            byte[] p10 = a.p(openStream);
            b.a(openStream, null);
            return p10;
        } finally {
        }
    }

    @NotNull
    public static final List<String> k(@NotNull Reader reader) {
        M.p(reader, "<this>");
        final ArrayList arrayList = new ArrayList();
        h(reader, new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                P0 l10;
                l10 = w.l(ArrayList.this, (String) obj);
                return l10;
            }
        });
        return arrayList;
    }

    public static final P0 l(ArrayList arrayList, String it) {
        M.p(it, "it");
        arrayList.add(it);
        return P0.f98194a;
    }

    @NotNull
    public static final String m(@NotNull Reader reader) {
        M.p(reader, "<this>");
        StringWriter stringWriter = new StringWriter();
        g(reader, stringWriter, 0, 2, null);
        String stringWriter2 = stringWriter.toString();
        M.o(stringWriter2, "toString(...)");
        return stringWriter2;
    }

    @Ef.f
    public static final String n(URL url, Charset charset) {
        M.p(url, "<this>");
        M.p(charset, "charset");
        return new String(j(url), charset);
    }

    public static String o(URL url, Charset charset, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = C3625g.f32086b;
        }
        M.p(url, "<this>");
        M.p(charset, "charset");
        return new String(j(url), charset);
    }

    @Ef.f
    public static final StringReader p(String str) {
        M.p(str, "<this>");
        return new StringReader(str);
    }

    @InterfaceC14394D
    public static final <T> T q(@NotNull Reader reader, @NotNull Mf.l<? super InterfaceC3312m<String>, ? extends T> block) {
        M.p(reader, "<this>");
        M.p(block, "block");
        BufferedReader bufferedReader = reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader, 8192);
        try {
            T invoke = block.invoke(i(bufferedReader));
            J.d(1);
            b.a(bufferedReader, null);
            J.c(1);
            return invoke;
        } finally {
        }
    }
}
