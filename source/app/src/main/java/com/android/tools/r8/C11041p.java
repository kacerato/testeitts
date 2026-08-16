package com.android.tools.r8;

import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C7051eC;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.function.Consumer;

public class C11041p implements ClassFileResourceProvider {

    final List<ClassFileResourceProvider> f56154a;

    public final HashSet f56155b = new HashSet();

    public static class a {

        public final C7051eC f56156a;

        public boolean f56157b;

        public a() {
            int i10 = AbstractC7552hC.f48487c;
            this.f56156a = new C7051eC();
            this.f56157b = true;
        }

        public C11041p a() {
            return new C11041p(this.f56156a.a());
        }

        public a a(ClassFileResourceProvider classFileResourceProvider) {
            this.f56156a.a(classFileResourceProvider);
            this.f56157b = false;
            return this;
        }
    }

    public C11041p(AbstractC7552hC abstractC7552hC) {
        this.f56154a = abstractC7552hC;
        abstractC7552hC.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11041p.this.a((ClassFileResourceProvider) obj);
            }
        });
    }

    public final void a(ClassFileResourceProvider classFileResourceProvider) {
        this.f56155b.addAll(classFileResourceProvider.getClassDescriptors());
    }

    @Override
    public final Set getClassDescriptors() {
        return this.f56155b;
    }

    @Override
    public final ProgramResource getProgramResource(String str) {
        for (ClassFileResourceProvider classFileResourceProvider : this.f56154a) {
            if (classFileResourceProvider.getClassDescriptors().contains(str)) {
                return classFileResourceProvider.getProgramResource(str);
            }
        }
        return null;
    }

    public static a a() {
        return new a();
    }
}
