package com.android.tools.r8.utils;

import com.android.tools.r8.DataResourceProvider;
import com.android.tools.r8.ProgramResourceProvider;
import com.android.tools.r8.internal.AbstractC7552hC;
import java.util.Collection;

public final class C11661h implements ProgramResourceProvider {

    public final AbstractC7552hC f58584a;

    public final AbstractC7552hC f58585b;

    public C11661h(AbstractC7552hC abstractC7552hC, AbstractC7552hC abstractC7552hC2) {
        this.f58584a = abstractC7552hC;
        this.f58585b = abstractC7552hC2;
    }

    @Override
    public final DataResourceProvider getDataResourceProvider() {
        if (this.f58585b.isEmpty()) {
            return null;
        }
        return new C11660g(this);
    }

    @Override
    public final Collection getProgramResources() {
        return this.f58584a;
    }
}
