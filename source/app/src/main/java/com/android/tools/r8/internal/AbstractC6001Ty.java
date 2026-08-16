package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class AbstractC6001Ty extends AbstractC6287Yy {

    public final C5418Jw f44631b;

    public AbstractC6001Ty() {
        this.f44631b = new C5418Jw();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(C4858Ae c4858Ae, C5264He c5264He, C10503yv c10503yv, int i10) {
        boolean z10;
        Object a10;
        O0 o02;
        C5418Jw c5418Jw = this.f44631b;
        int i11 = i10 & 7;
        C6173Wy c6173Wy = (C6173Wy) c10503yv.f54194a.get(new C10336xv(i10 >>> 3, getDefaultInstanceForType()));
        boolean z11 = false;
        if (c6173Wy != null) {
            C6116Vy c6116Vy = c6173Wy.f45593d;
            EnumC5942Sx0 enumC5942Sx0 = c6116Vy.f45237c;
            C5418Jw c5418Jw2 = C5418Jw.f41525c;
            if (i11 == enumC5942Sx0.f44349c) {
                z10 = false;
            } else if (c6116Vy.f45238d && enumC5942Sx0.a()) {
                EnumC5942Sx0 enumC5942Sx02 = c6173Wy.f45593d.f45237c;
                if (i11 == 2) {
                    z10 = true;
                }
            }
            if (!z11) {
                return c4858Ae.a(i10, c5264He);
            }
            AbstractC5827Qy abstractC5827Qy = null;
            if (z10) {
                int b10 = c4858Ae.b(c4858Ae.f());
                if (c6173Wy.f45593d.f45237c == EnumC5942Sx0.f44347h) {
                    if (c4858Ae.a() > 0) {
                        c4858Ae.f();
                        c6173Wy.f45593d.getClass();
                        throw null;
                    }
                } else {
                    while (c4858Ae.a() > 0) {
                        c5418Jw.a(c6173Wy.f45593d, C5418Jw.a(c4858Ae, c6173Wy.f45593d.f45237c));
                    }
                }
                c4858Ae.f38668h = b10;
                c4858Ae.j();
            } else {
                int ordinal = c6173Wy.f45593d.f45237c.f44348b.ordinal();
                if (ordinal != 7) {
                    if (ordinal != 8) {
                        a10 = C5418Jw.a(c4858Ae, c6173Wy.f45593d.f45237c);
                    } else {
                        C6116Vy c6116Vy2 = c6173Wy.f45593d;
                        if (!c6116Vy2.f45238d && (o02 = (O0) c5418Jw.f41526a.get(c6116Vy2)) != null) {
                            abstractC5827Qy = o02.c();
                        }
                        if (abstractC5827Qy == null) {
                            abstractC5827Qy = c6173Wy.f45592c.b();
                        }
                        C6116Vy c6116Vy3 = c6173Wy.f45593d;
                        if (c6116Vy3.f45237c == EnumC5942Sx0.f44345f) {
                            int i12 = c6116Vy3.f45236b;
                            int i13 = c4858Ae.f38669i;
                            if (i13 < 64) {
                                c4858Ae.f38669i = i13 + 1;
                                abstractC5827Qy.a(c4858Ae, c10503yv);
                                if (c4858Ae.f38666f == ((i12 << 3) | 4)) {
                                    c4858Ae.f38669i--;
                                } else {
                                    throw new LJ("Protocol message end-group tag did not match expected tag.");
                                }
                            } else {
                                throw new LJ("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
                            }
                        } else {
                            int f10 = c4858Ae.f();
                            if (c4858Ae.f38669i < 64) {
                                int b11 = c4858Ae.b(f10);
                                c4858Ae.f38669i++;
                                abstractC5827Qy.a(c4858Ae, c10503yv);
                                if (c4858Ae.f38666f == 0) {
                                    c4858Ae.f38669i--;
                                    c4858Ae.f38668h = b11;
                                    c4858Ae.j();
                                } else {
                                    throw new LJ("Protocol message end-group tag did not match expected tag.");
                                }
                            } else {
                                throw new LJ("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
                            }
                        }
                        a10 = abstractC5827Qy.a();
                    }
                    C6116Vy c6116Vy4 = c6173Wy.f45593d;
                    if (c6116Vy4.f45238d) {
                        c5418Jw.a(c6116Vy4, c6173Wy.b(a10));
                    } else {
                        c5418Jw.c(c6116Vy4, c6173Wy.b(a10));
                    }
                } else {
                    c4858Ae.f();
                    c6173Wy.f45593d.getClass();
                    throw null;
                }
            }
            return true;
        }
        z10 = false;
        z11 = true;
        if (!z11) {
        }
    }

    public final boolean d() {
        C5418Jw c5418Jw = this.f44631b;
        for (int i10 = 0; i10 < c5418Jw.f41526a.f44864c.size(); i10++) {
            if (!C5418Jw.a((Map.Entry) c5418Jw.f41526a.f44864c.get(i10))) {
                return false;
            }
        }
        C6036Um0 c6036Um0 = c5418Jw.f41526a;
        Iterator it = (c6036Um0.f44865d.isEmpty() ? AbstractC6477an0.f46629b : c6036Um0.f44865d.entrySet()).iterator();
        while (it.hasNext()) {
            if (!C5418Jw.a((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public final int e() {
        C5418Jw c5418Jw = this.f44631b;
        int i10 = 0;
        for (int i11 = 0; i11 < c5418Jw.f41526a.f44864c.size(); i11++) {
            Map.Entry entry = (Map.Entry) c5418Jw.f41526a.f44864c.get(i11);
            i10 += C5418Jw.b((C6116Vy) entry.getKey(), entry.getValue());
        }
        C6036Um0 c6036Um0 = c5418Jw.f41526a;
        for (Map.Entry entry2 : c6036Um0.f44865d.isEmpty() ? AbstractC6477an0.f46629b : c6036Um0.f44865d.entrySet()) {
            i10 += C5418Jw.b((C6116Vy) entry2.getKey(), entry2.getValue());
        }
        return i10;
    }

    public AbstractC6001Ty(AbstractC5885Ry abstractC5885Ry) {
        abstractC5885Ry.f44037c.a();
        abstractC5885Ry.f44038d = false;
        this.f44631b = abstractC5885Ry.f44037c;
    }

    public final Object a(C6173Wy c6173Wy) {
        if (c6173Wy.f45590a == getDefaultInstanceForType()) {
            C5418Jw c5418Jw = this.f44631b;
            Object obj = c5418Jw.f41526a.get(c6173Wy.f45593d);
            if (obj == null) {
                return c6173Wy.f45591b;
            }
            C6116Vy c6116Vy = c6173Wy.f45593d;
            if (c6116Vy.f45238d) {
                if (c6116Vy.f45237c.f44348b != EnumC6058Ux0.f44919j) {
                    return obj;
                }
                ArrayList arrayList = new ArrayList();
                Iterator it = ((List) obj).iterator();
                while (it.hasNext()) {
                    arrayList.add(c6173Wy.a(it.next()));
                }
                return arrayList;
            }
            return c6173Wy.a(obj);
        }
        throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
    }
}
