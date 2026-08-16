package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;

public final class C6929dW implements InterfaceC6762cW {

    public static final boolean f47411b = true;

    public final ArrayList f47412a = new ArrayList();

    @Override
    public final com.android.tools.r8.graph.M2 a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        throw new C5417Jv0();
    }

    @Override
    public final boolean c(com.android.tools.r8.graph.M2 m22) {
        ArrayList arrayList = this.f47412a;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            if (((InterfaceC6762cW) obj).c(m22)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.M2 m22) {
        ArrayList arrayList = this.f47412a;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            if (((InterfaceC6762cW) obj).a(m22)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final void a(C4798y c4798y) {
        ArrayList arrayList = this.f47412a;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            InterfaceC6762cW interfaceC6762cW = (InterfaceC6762cW) obj;
            if (!f47411b) {
                interfaceC6762cW.a(c4798y);
            }
        }
    }
}
