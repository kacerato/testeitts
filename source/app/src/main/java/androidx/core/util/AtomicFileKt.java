package androidx.core.util;

import Mf.l;
import ag.C3625g;
import java.io.FileOutputStream;
import java.nio.charset.Charset;
import kotlin.jvm.internal.J;
import kotlin.jvm.internal.M;
import nf.P0;

public final class AtomicFileKt {
    public static final byte[] readBytes(android.util.AtomicFile atomicFile) {
        M.p(atomicFile, "<this>");
        byte[] readFully = atomicFile.readFully();
        M.o(readFully, "readFully()");
        return readFully;
    }

    public static final String readText(android.util.AtomicFile atomicFile, Charset charset) {
        M.p(atomicFile, "<this>");
        M.p(charset, "charset");
        byte[] readFully = atomicFile.readFully();
        M.o(readFully, "readFully()");
        return new String(readFully, charset);
    }

    public static String readText$default(android.util.AtomicFile atomicFile, Charset charset, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = C3625g.f32086b;
        }
        return readText(atomicFile, charset);
    }

    public static final void tryWrite(android.util.AtomicFile atomicFile, l<? super FileOutputStream, P0> block) {
        M.p(atomicFile, "<this>");
        M.p(block, "block");
        FileOutputStream stream = atomicFile.startWrite();
        try {
            M.o(stream, "stream");
            block.invoke(stream);
            J.d(1);
            atomicFile.finishWrite(stream);
            J.c(1);
        } catch (Throwable th2) {
            J.d(1);
            atomicFile.failWrite(stream);
            J.c(1);
            throw th2;
        }
    }

    public static final void writeBytes(android.util.AtomicFile atomicFile, byte[] array) {
        M.p(atomicFile, "<this>");
        M.p(array, "array");
        FileOutputStream stream = atomicFile.startWrite();
        try {
            M.o(stream, "stream");
            stream.write(array);
            atomicFile.finishWrite(stream);
        } catch (Throwable th2) {
            atomicFile.failWrite(stream);
            throw th2;
        }
    }

    public static final void writeText(android.util.AtomicFile atomicFile, String text, Charset charset) {
        M.p(atomicFile, "<this>");
        M.p(text, "text");
        M.p(charset, "charset");
        byte[] bytes = text.getBytes(charset);
        M.o(bytes, "this as java.lang.String).getBytes(charset)");
        writeBytes(atomicFile, bytes);
    }

    public static void writeText$default(android.util.AtomicFile atomicFile, String str, Charset charset, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            charset = C3625g.f32086b;
        }
        writeText(atomicFile, str, charset);
    }
}
