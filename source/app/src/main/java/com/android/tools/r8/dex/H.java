package com.android.tools.r8.dex;

import androidx.fragment.app.FragmentTransaction;
import com.android.tools.r8.internal.C6614bd0;
import com.android.tools.r8.internal.C7189f20;
import com.android.tools.r8.internal.C7447gd0;
import com.jme3.audio.openal.AL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.function.ToIntFunction;

public final class H {

    public static final boolean f35693y = true;

    public final int f35694a;

    public final int f35695b;

    public final int f35696c;

    public final int f35697d;

    public final int f35698e;

    public final int f35699f;

    public final int f35700g;

    public final int f35701h;

    public final int f35702i;

    public final int f35703j;

    public final int f35704k;

    public int f35705l = -1;

    public int f35706m = -1;

    public int f35707n = -1;

    public int f35708o = -1;

    public int f35709p = -1;

    public int f35710q = -1;

    public int f35711r = -1;

    public int f35712s = -1;

    public int f35713t = -1;

    public int f35714u = -1;

    public int f35715v = -1;

    public int f35716w = -1;

    public int f35717x = -1;

    public H(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20) {
        this.f35694a = i10;
        this.f35695b = i11;
        this.f35696c = i12;
        this.f35697d = i13;
        this.f35698e = i14;
        this.f35699f = i15;
        this.f35700g = i16;
        this.f35701h = i17;
        this.f35702i = i18;
        this.f35703j = i19;
        this.f35704k = i20;
        boolean z10 = f35693y;
        if (!z10 && i11 > i12) {
            throw new AssertionError();
        }
        if (!z10 && i12 > i13) {
            throw new AssertionError();
        }
        if (!z10 && i13 > i14) {
            throw new AssertionError();
        }
        if (!z10 && i14 > i15) {
            throw new AssertionError();
        }
        if (!z10 && i15 > i16) {
            throw new AssertionError();
        }
        if (!z10 && i16 > i19) {
            throw new AssertionError();
        }
        if (!z10 && i17 > i19) {
            throw new AssertionError();
        }
        if (!z10 && i18 > i19) {
            throw new AssertionError();
        }
    }

    public final void a(int i10) {
    }

    public final void b(int i10) {
        if (!f35693y && this.f35712s != -1) {
            throw new AssertionError();
        }
        this.f35712s = i10;
    }

    public final void c(int i10) {
        if (!f35693y && this.f35711r != -1) {
            throw new AssertionError();
        }
        this.f35711r = i10;
    }

    public final void d(int i10) {
        if (!f35693y && this.f35710q != -1) {
            throw new AssertionError();
        }
        this.f35710q = i10;
    }

    public final void e(int i10) {
        if (!f35693y && this.f35709p != -1) {
            throw new AssertionError();
        }
        this.f35709p = i10;
    }

    public final void f(int i10) {
        if (!f35693y && this.f35713t != -1) {
            throw new AssertionError();
        }
        this.f35713t = i10;
    }

    public final void g(int i10) {
        if (!f35693y && this.f35714u != -1) {
            throw new AssertionError();
        }
        this.f35714u = i10;
    }

    public final void h(int i10) {
        if (!f35693y && this.f35708o != -1) {
            throw new AssertionError();
        }
        this.f35708o = i10;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Header: ");
        sb2.append(this.f35695b - this.f35694a);
        sb2.append("\nStringIds: ");
        sb2.append(this.f35696c - this.f35695b);
        sb2.append("\ntypeIds: ");
        sb2.append(this.f35697d - this.f35696c);
        sb2.append("\nprotoIds: ");
        sb2.append(this.f35698e - this.f35697d);
        sb2.append("\nfieldIds: ");
        sb2.append(this.f35699f - this.f35698e);
        sb2.append("\nmethodIds: ");
        sb2.append(this.f35700g - this.f35699f);
        sb2.append("\nclassDefs: ");
        sb2.append(this.f35701h - this.f35700g);
        sb2.append("\ncallSiteIds: ");
        sb2.append(this.f35702i - this.f35701h);
        sb2.append("\nmethodHandleIds: ");
        sb2.append(this.f35703j - this.f35702i);
        sb2.append("\ncode: ");
        sb2.append(this.f35706m - this.f35705l);
        sb2.append("\ndebugInfo: ");
        sb2.append(this.f35707n - this.f35706m);
        sb2.append("\ntypeList: ");
        int i10 = this.f35708o;
        if (i10 <= 0) {
            i10 = this.f35709p;
        }
        sb2.append(i10 - this.f35707n);
        sb2.append("\nstringData: ");
        int i11 = this.f35708o;
        sb2.append(i11 > 0 ? this.f35709p - i11 : 0);
        sb2.append("\nannotations: ");
        sb2.append(this.f35713t - this.f35709p);
        sb2.append("\nclassData: ");
        sb2.append(this.f35714u - this.f35713t);
        sb2.append("\nencodedArrays: ");
        sb2.append(this.f35715v - this.f35711r);
        sb2.append("\nannotationSets: ");
        sb2.append(this.f35711r - this.f35710q);
        sb2.append("\nannotationSetRefLists: ");
        sb2.append(this.f35712s - this.f35711r);
        sb2.append("\nannotationDirectories: ");
        sb2.append(this.f35715v - this.f35712s);
        sb2.append("\nmap: ");
        sb2.append(this.f35716w - this.f35715v);
        sb2.append("\nendOfFile: ");
        sb2.append(this.f35716w);
        sb2.append("\n");
        return sb2.toString();
    }

    public static boolean a(int i10, boolean z10) {
        if (i10 != -1) {
            return !z10 || i10 % 4 == 0;
        }
        return false;
    }

    public final ArrayList a(L l10, int i10, int i11, int i12, int i13) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new I(0, i10, 1));
        C7447gd0 c7447gd0 = l10.f35740c.f38343j;
        arrayList.add(new I(1, i12, (c7447gd0 == null ? Collections.EMPTY_LIST : c7447gd0.o()).size()));
        int i14 = this.f35696c;
        C7447gd0 c7447gd02 = l10.f35740c.f38340g;
        arrayList.add(new I(2, i14, (c7447gd02 == null ? Collections.EMPTY_LIST : c7447gd02.o()).size()));
        int i15 = this.f35697d;
        C7447gd0 c7447gd03 = l10.f35740c.f38339f;
        arrayList.add(new I(3, i15, (c7447gd03 == null ? Collections.EMPTY_LIST : c7447gd03.o()).size()));
        int i16 = this.f35698e;
        C7447gd0 c7447gd04 = l10.f35740c.f38342i;
        arrayList.add(new I(4, i16, (c7447gd04 == null ? Collections.EMPTY_LIST : c7447gd04.o()).size()));
        int i17 = this.f35699f;
        C7447gd0 c7447gd05 = l10.f35740c.f38341h;
        arrayList.add(new I(5, i17, (c7447gd05 == null ? Collections.EMPTY_LIST : c7447gd05.o()).size()));
        arrayList.add(new I(6, this.f35700g, l10.f35740c.f38338e.length));
        int i18 = this.f35701h;
        C7447gd0 c7447gd06 = l10.f35740c.f38344k;
        arrayList.add(new I(7, i18, (c7447gd06 == null ? Collections.EMPTY_LIST : c7447gd06.o()).size()));
        int i19 = this.f35702i;
        C7447gd0 c7447gd07 = l10.f35740c.f38345l;
        arrayList.add(new I(8, i19, (c7447gd07 == null ? Collections.EMPTY_LIST : c7447gd07.o()).size()));
        boolean z10 = f35693y;
        if (!z10 && !a(this.f35705l, true)) {
            throw new AssertionError();
        }
        arrayList.add(new I(AL.AL_FREQUENCY, this.f35705l, this.f35717x));
        if (!z10 && !a(this.f35706m, false)) {
            throw new AssertionError();
        }
        arrayList.add(new I(AL.AL_CHANNELS, this.f35706m, ((C7189f20) l10.f35743f.f35723b.o()).f47823b.f49465l));
        if (!z10 && !a(this.f35707n, true)) {
            throw new AssertionError();
        }
        arrayList.add(new I(4097, this.f35707n, ((C7189f20) l10.f35743f.f35724c.o()).f47823b.f49465l));
        if (i13 == 0) {
            i11 = 0;
        }
        arrayList.add(new I(8194, i13, i11));
        if (!z10 && !a(this.f35709p, false)) {
            throw new AssertionError();
        }
        arrayList.add(new I(8196, this.f35709p, ((C7189f20) l10.f35743f.f35726e.o()).f47823b.f49465l));
        if (!z10 && !a(this.f35713t, false)) {
            throw new AssertionError();
        }
        arrayList.add(new I(8192, this.f35713t, ((C6614bd0) l10.f35743f.f35730i.o()).f46807b.f48317l));
        if (!z10 && !a(this.f35714u, false)) {
            throw new AssertionError();
        }
        arrayList.add(new I(FragmentTransaction.TRANSIT_FRAGMENT_MATCH_ACTIVITY_CLOSE, this.f35714u, ((C7189f20) l10.f35743f.f35731j.o()).f47823b.f49465l));
        if (!z10 && !a(this.f35710q, true)) {
            throw new AssertionError();
        }
        arrayList.add(new I(4099, this.f35710q, ((C7189f20) l10.f35743f.f35727f.o()).f47823b.f49465l));
        if (!z10 && !a(this.f35711r, true)) {
            throw new AssertionError();
        }
        arrayList.add(new I(4098, this.f35711r, ((C7189f20) l10.f35743f.f35728g.o()).f47823b.f49465l));
        if (!z10 && !a(this.f35712s, true)) {
            throw new AssertionError();
        }
        arrayList.add(new I(8198, this.f35712s, ((C7189f20) l10.f35743f.f35729h.o()).f47823b.f49465l));
        arrayList.add(new I(4096, this.f35715v, 1));
        arrayList.sort(Comparator.comparingInt(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return ((com.android.tools.r8.dex.I) obj).a();
            }
        }));
        return arrayList;
    }
}
