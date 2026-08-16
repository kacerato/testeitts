package com.android.tools.r8.internal;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.regex.Pattern;

public abstract class AbstractC5040Dh {
    public static void a(Object obj) {
        Class<?> cls = obj.getClass();
        String replace = cls.getName().replace('.', '/');
        if (replace.startsWith("org/objectweb/asm/") && (replace.contains("Test$") || Pattern.matches("org/objectweb/asm/util/Trace(Annotation|Class|Field|Method|Module|RecordComponent|Signature)Visitor(\\$.*)?", replace) || Pattern.matches("org/objectweb/asm/util/Check(Annotation|Class|Field|Method|Module|RecordComponent|Signature)Adapter(\\$.*)?", replace))) {
            return;
        }
        InputStream resourceAsStream = cls.getClassLoader().getResourceAsStream(replace.concat(".class"));
        if (resourceAsStream == null) {
            throw new IllegalStateException("Bytecode not available, can't check class version");
        }
        try {
            DataInputStream dataInputStream = new DataInputStream(resourceAsStream);
            try {
                dataInputStream.readInt();
                int readUnsignedShort = dataInputStream.readUnsignedShort();
                dataInputStream.close();
                if (readUnsignedShort != 65535) {
                    throw new IllegalStateException("ASM10_EXPERIMENTAL can only be used by classes compiled with --enable-preview");
                }
            } catch (Throwable th2) {
                try {
                    dataInputStream.close();
                } catch (Throwable unused) {
                }
                throw th2;
            }
        } catch (IOException e10) {
            throw new IllegalStateException("I/O error, can't check class version", e10);
        }
    }
}
