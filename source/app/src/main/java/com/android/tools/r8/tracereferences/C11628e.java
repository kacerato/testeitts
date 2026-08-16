package com.android.tools.r8.tracereferences;

import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.ProgramResourceProvider;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C5920Sm0;
import com.android.tools.r8.internal.C5978Tm0;
import com.android.tools.r8.internal.QC;
import com.android.tools.r8.origin.PathOrigin;
import java.nio.file.Path;
import java.util.Collection;

public final class C11628e implements ProgramResourceProvider {

    public final Path f58460a;

    public final byte[] f58461b;

    public final String f58462c;

    public C11628e(Path path, byte[] bArr, String str) {
        this.f58460a = path;
        this.f58461b = bArr;
        this.f58462c = str;
    }

    @Override
    public final Collection getProgramResources() {
        PathOrigin pathOrigin = new PathOrigin(this.f58460a);
        ProgramResource.Kind kind = ProgramResource.Kind.CF;
        byte[] bArr = this.f58461b;
        String str = this.f58462c;
        int i10 = QC.f43505c;
        ProgramResource fromBytes = ProgramResource.fromBytes(pathOrigin, kind, bArr, new C5978Tm0(str));
        int i11 = AbstractC7552hC.f48487c;
        return new C5920Sm0(fromBytes);
    }
}
