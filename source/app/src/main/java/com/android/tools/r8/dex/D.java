package com.android.tools.r8.dex;

import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C6040Uo0;
import com.android.tools.r8.internal.EnumC5583Ms;
import com.android.tools.r8.origin.Origin;
import java.nio.BufferUnderflowException;
import java.util.Optional;
import org.openjdk.tools.doclint.DocLint;

public class D extends AbstractC4313m {

    public final EnumC5583Ms f35682d;

    public D(ProgramResource programResource) {
        super(programResource.getOrigin(), C6040Uo0.a(programResource.getByteStream()));
        this.f35682d = a(this.f35894b, 0);
    }

    public final EnumC5583Ms a(C4318s c4318s, int i10) {
        try {
            c4318s.a().get();
            c4318s.f35933a.rewind();
            byte[] bArr = C4319t.f35952a;
            int length = bArr.length;
            int i11 = 0;
            while (i11 < length) {
                byte b10 = bArr[i11];
                int i12 = i10 + 1;
                byte a10 = c4318s.a(i10);
                if (a10 != b10) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Dex file has invalid header, expected " + ((int) b10) + " got " + ((int) a10) + ". Next bytes are ");
                    for (int i13 = 0; i13 < 10; i13++) {
                        if (c4318s.a().hasRemaining()) {
                            sb2.append(C10656zq0.a((int) c4318s.a().get(), 2));
                            sb2.append(DocLint.SEPARATOR);
                        }
                    }
                    throw new C5325If(this.f35893a, sb2.toString(), null);
                }
                i11++;
                i10 = i12;
            }
            char a11 = (char) c4318s.a(i10);
            int i14 = i10 + 2;
            char a12 = (char) c4318s.a(i10 + 1);
            int i15 = i10 + 3;
            char a13 = (char) c4318s.a(i14);
            Optional<EnumC5583Ms> a14 = EnumC5583Ms.a(a11, a12, a13);
            if (a14.isPresent()) {
                if (c4318s.a(i15) == 0) {
                    return a14.get();
                }
                throw new C5325If(this.f35893a, "Dex file has invalid header", null);
            }
            throw new C5325If(this.f35893a, "Unsupported DEX file version: " + a11 + a12 + a13, null);
        } catch (BufferUnderflowException unused) {
            throw new C5325If(this.f35893a, "Dex file is empty", null);
        }
    }

    public D(Origin origin, byte[] bArr) {
        super(origin, bArr);
        this.f35682d = a(this.f35894b, 0);
    }

    public D(Origin origin, byte[] bArr, int i10) {
        super(origin, bArr);
        this.f35682d = a(this.f35894b, i10);
    }
}
