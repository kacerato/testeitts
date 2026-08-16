package com.android.tools.r8.internal;

import com.android.tools.r8.utils.ExceptionDiagnostic;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.function.Consumer;

public abstract class AbstractC9674tx {
    public static String[] a(String[] strArr, Consumer consumer) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            if (str.startsWith("@")) {
                Path path = Paths.get(str.substring(1), new String[0]);
                try {
                    arrayList.addAll(Files.readAllLines(path));
                } catch (IOException e10) {
                    consumer.accept(new ExceptionDiagnostic(e10, new C9507sx(path)));
                }
            } else {
                arrayList.add(str);
            }
        }
        return (String[]) arrayList.toArray(C10656zq0.f54546b);
    }
}
