package com.android.tools.r8.tracereferences;

import com.android.tools.r8.ClassFileResourceProvider;
import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.internal.C5978Tm0;
import com.android.tools.r8.internal.QC;
import com.android.tools.r8.origin.PathOrigin;
import com.android.tools.r8.tracereferences.TraceReferencesCommand;
import java.util.Set;

public final class C11630g implements ClassFileResourceProvider {

    public final String f58470a;

    public final ProgramResource f58471b;

    public C11630g(PathOrigin pathOrigin, byte[] bArr) {
        String a10;
        a10 = TraceReferencesCommand.Builder.a(bArr);
        this.f58470a = a10;
        ProgramResource.Kind kind = ProgramResource.Kind.CF;
        int i10 = QC.f43505c;
        this.f58471b = ProgramResource.fromBytes(pathOrigin, kind, bArr, new C5978Tm0(a10));
    }

    @Override
    public final Set getClassDescriptors() {
        String str = this.f58470a;
        int i10 = QC.f43505c;
        return new C5978Tm0(str);
    }

    @Override
    public final ProgramResource getProgramResource(String str) {
        if (str.equals(this.f58470a)) {
            return this.f58471b;
        }
        return null;
    }
}
