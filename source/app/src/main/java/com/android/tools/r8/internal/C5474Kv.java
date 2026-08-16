package com.android.tools.r8.internal;

import com.android.tools.r8.CompilationFailedException;
import com.android.tools.r8.ExtractMarker;
import com.android.tools.r8.ExtractMarkerCommand;
import com.android.tools.r8.origin.Origin;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collection;

public class C5474Kv {
    public static Collection<com.android.tools.r8.dex.W> a(Path path) throws CompilationFailedException {
        ExtractMarkerCommand.Builder addProgramFiles = ExtractMarkerCommand.builder().addProgramFiles(path);
        ArrayList arrayList = new ArrayList();
        ExtractMarker.run(addProgramFiles.setMarkerInfoConsumer(new C10263xV(arrayList)).build());
        return arrayList;
    }

    public static Collection<com.android.tools.r8.dex.W> b(byte[] bArr) throws CompilationFailedException {
        ExtractMarkerCommand.Builder addDexProgramData = ExtractMarkerCommand.builder().addDexProgramData(bArr, Origin.unknown());
        ArrayList arrayList = new ArrayList();
        ExtractMarker.run(addDexProgramData.setMarkerInfoConsumer(new C10263xV(arrayList)).build());
        return arrayList;
    }

    public static Collection<com.android.tools.r8.dex.W> a(byte[] bArr) throws CompilationFailedException {
        ExtractMarkerCommand.Builder addClassProgramData = ExtractMarkerCommand.builder().addClassProgramData(bArr, Origin.unknown());
        ArrayList arrayList = new ArrayList();
        ExtractMarker.run(addClassProgramData.setMarkerInfoConsumer(new C10263xV(arrayList)).build());
        return arrayList;
    }
}
