package com.android.tools.r8.internal;

import java.io.DataOutputStream;
import java.nio.charset.StandardCharsets;

public abstract class AbstractC10307xl0 {
    public static void a(DataOutputStream dataOutputStream, String str) {
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        dataOutputStream.writeInt(bytes.length);
        dataOutputStream.write(bytes);
    }
}
