package com.android.tools.r8.internal;

import com.android.tools.r8.InputDependencyGraphConsumer;
import com.android.tools.r8.origin.Origin;
import java.io.BufferedWriter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;

public final class C5681Oj implements InputDependencyGraphConsumer {

    public final Path f42968a;

    public final String f42969b;

    public final HashSet f42970c = new HashSet();

    public C5681Oj(String str, Path path) {
        this.f42968a = path;
        this.f42969b = str;
    }

    @Override
    public final void accept(Origin origin, Path path) {
        this.f42970c.add(path);
    }

    @Override
    public final void finished() {
        ArrayList arrayList = new ArrayList(this.f42970c);
        arrayList.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return ((Path) obj).compareTo((Path) obj2);
            }
        });
        int i10 = 0;
        try {
            BufferedWriter newBufferedWriter = Files.newBufferedWriter(Paths.get(this.f42969b, new String[0]), StandardCharsets.UTF_8, StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING);
            try {
                newBufferedWriter.write(this.f42968a.toString().replace(" ", "\\ "));
                newBufferedWriter.write(b3.s.f32937c);
                int size = arrayList.size();
                while (i10 < size) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    newBufferedWriter.write(" ");
                    newBufferedWriter.write(((Path) obj).toString().replace(" ", "\\ "));
                }
                newBufferedWriter.write("\n");
                newBufferedWriter.close();
            } finally {
            }
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }
}
