package com.android.tools.r8.internal;

import com.android.tools.r8.profile.art.ArtProfileProvider;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.UncheckedIOException;
import java.nio.charset.StandardCharsets;

public abstract class AbstractC10197x4 {
    public static String a(ArtProfileProvider artProfileProvider) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(byteArrayOutputStream, StandardCharsets.UTF_8);
        try {
            artProfileProvider.getArtProfile(new C10030w4(outputStreamWriter));
            outputStreamWriter.close();
            return byteArrayOutputStream.toString();
        } catch (Throwable th2) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public static void a(OutputStreamWriter outputStreamWriter, String str) {
        try {
            outputStreamWriter.write(str);
            outputStreamWriter.write(10);
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }
}
