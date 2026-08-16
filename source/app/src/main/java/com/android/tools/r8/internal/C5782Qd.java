package com.android.tools.r8.internal;

import com.android.tools.r8.ClassFileResourceProvider;
import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.ResourceException;
import com.android.tools.r8.graph.C4482h4;
import com.android.tools.r8.graph.C4614o4;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.function.Consumer;

public final class C5782Qd extends AbstractC6014Ud {

    public final com.android.tools.r8.graph.V f43645b;

    public final ClassFileResourceProvider f43646c;

    public final C4482h4 f43647d;

    public C5782Qd(com.android.tools.r8.graph.V v10, ClassFileResourceProvider classFileResourceProvider, C4482h4 c4482h4) {
        super(v10);
        this.f43645b = v10;
        this.f43646c = classFileResourceProvider;
        this.f43647d = c4482h4;
    }

    @Override
    public final void a(com.android.tools.r8.graph.M2 m22, Consumer consumer) {
        ClassFileResourceProvider classFileResourceProvider = this.f43646c;
        if (classFileResourceProvider instanceof C6403aJ) {
            com.android.tools.r8.graph.E0 e02 = (com.android.tools.r8.graph.E0) ((C6403aJ) classFileResourceProvider).f46487a.get(m22);
            if (e02 != null) {
                consumer.accept(e02);
                return;
            }
            return;
        }
        String l22 = m22.f36592f.toString();
        ProgramResource programResource = this.f43646c.getProgramResource(l22);
        if (programResource != null) {
            try {
                new C4614o4(this.f43647d, consumer, this.f43645b).b(programResource.getOrigin(), programResource.getBytes());
            } catch (ResourceException e10) {
                throw new C5325If("Failed to load class: " + l22, e10);
            }
        }
    }

    public final String toString() {
        return "class-resource-provider(" + this.f43646c.toString() + ")";
    }

    @Override
    public final Collection a() {
        ClassFileResourceProvider classFileResourceProvider = this.f43646c;
        if (classFileResourceProvider instanceof C6403aJ) {
            return ((C6403aJ) classFileResourceProvider).f46487a.o();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.f43646c.getClassDescriptors().iterator();
        while (it.hasNext()) {
            arrayList.add(this.f43647d.f37267a.f50660a.d(it.next()));
        }
        return arrayList;
    }
}
