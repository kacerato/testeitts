package com.android.tools.r8.graph;

import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.internal.AbstractC9530t40;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.shaking.AbstractC11128b1;
import java.util.ArrayList;
import java.util.function.Consumer;

public abstract class AbstractC4464g5 extends Z4 {

    public final Z4.c f37237b;

    public final ArrayList f37238c;

    public final ArrayList f37239d;

    public final ArrayList f37240e;

    public AbstractC4464g5(Z4.c cVar, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3) {
        this.f37237b = cVar;
        this.f37238c = arrayList;
        this.f37239d = arrayList2;
        this.f37240e = arrayList3;
    }

    @Override
    public final AbstractC9530t40 a(D5 d52, C4798y c4798y, C4514j c4514j) {
        throw new C5417Jv0("Should not be called on MultipleFieldResolutionResult");
    }

    @Override
    public final AbstractC9530t40 b(D5 d52, C4798y c4798y) {
        throw new C5417Jv0("Should not be called on MultipleFieldResolutionResult");
    }

    @Override
    public final H0 c(H2 h22, C4798y c4798y, C4514j c4514j) {
        throw new C5417Jv0("Should not be called on MultipleFieldResolutionResult");
    }

    @Override
    public final boolean v() {
        return true;
    }

    @Override
    public final boolean x() {
        throw new C5417Jv0("Should not be called on MultipleFieldResolutionResult");
    }

    @Override
    public final H0 a(H2 h22, C4798y c4798y) {
        throw new C5417Jv0("Should not be called on MultipleFieldResolutionResult");
    }

    @Override
    public final H0 b(H2 h22, C4798y c4798y, C4514j c4514j) {
        throw new C5417Jv0("Should not be called on MultipleFieldResolutionResult");
    }

    @Override
    public final H0 a(H2 h22, C4798y c4798y, C4514j c4514j) {
        throw new C5417Jv0("Should not be called on MultipleFieldResolutionResult");
    }

    @Override
    public final H4 a(D5 d52, C4798y c4798y, InterfaceC4444f4 interfaceC4444f4, B5 b52) {
        throw new C5417Jv0("Should not be called on MultipleFieldResolutionResult");
    }

    @Override
    public final H4 a(H2 h22, C4798y c4798y, H2 h23, H2 h24) {
        throw new C5417Jv0("Should not be called on MultipleFieldResolutionResult");
    }

    @Override
    public final I4 a(AbstractC11128b1 abstractC11128b1, C4514j c4514j) {
        throw new C5417Jv0("Should not be called on MultipleFieldResolutionResult");
    }

    @Override
    public final D4 a(E0 e02, C4514j c4514j) {
        throw new C5417Jv0("Should not be called on MultipleFieldResolutionResult");
    }

    @Override
    public final void a(Consumer consumer, Consumer consumer2, Consumer consumer3, Consumer consumer4) {
        Z4.c cVar = this.f37237b;
        if (cVar != null) {
            consumer.accept(cVar);
        }
        ArrayList arrayList = this.f37238c;
        if (arrayList != null) {
            arrayList.forEach(consumer);
        }
        this.f37239d.forEach(consumer2);
        this.f37240e.forEach(consumer4);
    }
}
