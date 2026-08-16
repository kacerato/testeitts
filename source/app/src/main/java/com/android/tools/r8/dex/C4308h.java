package com.android.tools.r8.dex;

import com.android.tools.r8.DataDirectoryResource;
import com.android.tools.r8.DataEntryResource;
import com.android.tools.r8.DataResourceConsumer;
import com.android.tools.r8.DataResourceProvider;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.utils.StringDiagnostic;
import java.util.HashSet;
import mg.C14254o;

public final class C4308h implements DataResourceProvider.Visitor {

    public final f0 f35850a;

    public final DataResourceConsumer f35851b;

    public final C8570nJ f35852c;

    public final HashSet f35853d;

    public C4308h(f0 f0Var, DataResourceConsumer dataResourceConsumer, C8570nJ c8570nJ, com.android.tools.r8.naming.N n10, HashSet hashSet) {
        this.f35850a = f0Var;
        this.f35851b = dataResourceConsumer;
        this.f35852c = c8570nJ;
        this.f35853d = hashSet;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void visit(DataDirectoryResource dataDirectoryResource) {
        String name;
        DataDirectoryResource fromName;
        f0 f0Var = this.f35850a;
        if (f0Var.f35847e.B() == null) {
            if (!f0.f35842f && !f0Var.f35847e.f50599F1.f50839Q0) {
                throw new AssertionError();
            }
        } else if (f0Var.f35847e.B().g().a(dataDirectoryResource.getName())) {
            a0 a0Var = new a0(f0Var, dataDirectoryResource.getName());
            if (a0Var.c()) {
                if (!e0.f35834h && !a0Var.f35837c) {
                    throw new AssertionError();
                }
                name = a0Var.f35836b.toString();
            } else {
                name = dataDirectoryResource.getName();
            }
            fromName = DataDirectoryResource.fromName(name, dataDirectoryResource.getOrigin());
            if (fromName == null) {
                this.f35851b.accept(fromName, this.f35852c.f50691j);
                this.f35852c.f50691j.a();
                return;
            }
            return;
        }
        fromName = null;
        if (fromName == null) {
        }
    }

    @Override
    public final void visit(DataEntryResource dataEntryResource) {
        if ("META-INF/MANIFEST.MF".equals(dataEntryResource.getName()) || dataEntryResource.getName().startsWith(C14254o.f97090b) || dataEntryResource.getName().endsWith(".kotlin_module")) {
            return;
        }
        DataEntryResource b10 = this.f35850a.b(dataEntryResource);
        if (this.f35853d.add(b10.getName())) {
            this.f35851b.accept(b10, this.f35852c.f50691j);
        } else {
            this.f35852c.f50691j.warning(new StringDiagnostic("Resource '" + dataEntryResource.getName() + "' already exists."));
        }
        this.f35852c.f50691j.a();
    }
}
