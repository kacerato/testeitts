package com.android.tools.r8.internal;

import java.io.ByteArrayInputStream;
import java.io.IOException;

public abstract class AbstractC8910pM {

    public static final C10503yv f51506a;

    static {
        C10503yv c10503yv = new C10503yv();
        c10503yv.a(AbstractC8743oM.f51212a);
        c10503yv.a(AbstractC8743oM.f51213b);
        c10503yv.a(AbstractC8743oM.f51214c);
        c10503yv.a(AbstractC8743oM.f51215d);
        c10503yv.a(AbstractC8743oM.f51216e);
        c10503yv.a(AbstractC8743oM.f51217f);
        c10503yv.a(AbstractC8743oM.f51218g);
        c10503yv.a(AbstractC8743oM.f51219h);
        c10503yv.a(AbstractC8743oM.f51220i);
        c10503yv.a(AbstractC8743oM.f51221j);
        c10503yv.a(AbstractC8743oM.f51222k);
        c10503yv.a(AbstractC8743oM.f51223l);
        c10503yv.a(AbstractC8743oM.f51224m);
        c10503yv.a(AbstractC8743oM.f51225n);
        f51506a = c10503yv;
    }

    public static VL a(ByteArrayInputStream byteArrayInputStream, String[] strArr) {
        O0 a10;
        C10503yv c10503yv = f51506a;
        C7576hM c7576hM = C8576nM.f50931i;
        c7576hM.getClass();
        try {
            int read = byteArrayInputStream.read();
            if (read == -1) {
                a10 = null;
            } else {
                if ((read & 128) != 0) {
                    read &= 127;
                    int i10 = 7;
                    while (true) {
                        if (i10 < 32) {
                            int read2 = byteArrayInputStream.read();
                            if (read2 == -1) {
                                throw new LJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
                            }
                            read |= (read2 & 127) << i10;
                            if ((read2 & 128) == 0) {
                                break;
                            }
                            i10 += 7;
                        } else {
                            while (i10 < 64) {
                                int read3 = byteArrayInputStream.read();
                                if (read3 == -1) {
                                    throw new LJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
                                }
                                if ((read3 & 128) != 0) {
                                    i10 += 7;
                                }
                            }
                            throw new LJ("CodedInputStream encountered a malformed varint.");
                        }
                    }
                }
                a10 = c7576hM.a(new L0(byteArrayInputStream, read), c10503yv);
            }
            C8576nM c8576nM = (C8576nM) AbstractC7851j1.a(a10);
            GJ.b(c8576nM, "parseDelimitedFrom(...)");
            return new VL(c8576nM, strArr);
        } catch (IOException e10) {
            throw new LJ(e10.getMessage());
        }
    }

    public static String a(M90 m90, VL vl2) {
        if ((m90.f42199d & 16) != 16) {
            return null;
        }
        String a10 = vl2.a(m90.f42205j);
        String str = (String) AbstractC8112kd.f49695b.get(a10);
        if (str != null) {
            return str;
        }
        return "L" + AbstractC5349Iq0.a(a10, '.', '$') + ';';
    }
}
