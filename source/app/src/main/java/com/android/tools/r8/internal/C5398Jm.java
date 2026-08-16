package com.android.tools.r8.internal;

import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;

public final class C5398Jm {

    public int f41496a = 0;

    public final Path f41497b;

    public C5398Jm(Path path) {
        this.f41497b = path;
    }

    public final InterfaceC5456Km a() {
        Path path = this.f41497b;
        int i10 = this.f41496a;
        this.f41496a = i10 + 1;
        Path resolve = path.resolve(i10 + ".log");
        if (Files.exists(resolve, new LinkOption[0])) {
            System.out.println("Checking against determinism log: " + ((Object) resolve));
            return new C5514Lm(Files.newBufferedReader(resolve, StandardCharsets.UTF_8));
        }
        System.out.println("Writing determinism log: " + ((Object) resolve));
        return new C5571Mm(new BufferedWriter(new OutputStreamWriter(new FileOutputStream(resolve.toFile()), StandardCharsets.UTF_8)));
    }
}
