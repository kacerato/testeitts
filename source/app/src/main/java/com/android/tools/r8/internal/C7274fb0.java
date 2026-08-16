package com.android.tools.r8.internal;

import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.metadata.R8ApiModelingMetadata;
import com.android.tools.r8.metadata.R8KeepAttributesMetadata;
import com.android.tools.r8.metadata.R8LibraryDesugaringMetadata;
import com.android.tools.r8.metadata.R8OptionsMetadata;
import com.android.tools.r8.shaking.C11350o3;

public final class C7274fb0 extends AbstractC5911Si<R8ApiModelingMetadata, R8LibraryDesugaringMetadata> implements R8OptionsMetadata {

    @InterfaceC9168qv
    @InterfaceC10474yl0("hasObfuscationDictionary")
    public final boolean f48006e;

    @InterfaceC9168qv
    @InterfaceC10474yl0("hasClassObfuscationDictionary")
    public final boolean f48007f;

    @InterfaceC9168qv
    @InterfaceC10474yl0("hasPackageObfuscationDictionary")
    public final boolean f48008g;

    @InterfaceC9168qv
    @InterfaceC10474yl0("keepAttributes")
    public final R8KeepAttributesMetadata f48009h;

    @InterfaceC9168qv
    @InterfaceC10474yl0("isAccessModificationEnabled")
    public final boolean f48010i;

    @InterfaceC9168qv
    @InterfaceC10474yl0("isFlattenPackageHierarchyEnabled")
    public final boolean f48011j;

    @InterfaceC9168qv
    @InterfaceC10474yl0("isObfuscationEnabled")
    public final boolean f48012k;

    @InterfaceC9168qv
    @InterfaceC10474yl0("isOptimizationsEnabled")
    public final boolean f48013l;

    @InterfaceC9168qv
    @InterfaceC10474yl0("isProGuardCompatibilityModeEnabled")
    public final boolean f48014m;

    @InterfaceC9168qv
    @InterfaceC10474yl0("isProtoLiteOptimizationEnabled")
    public final boolean f48015n;

    @InterfaceC9168qv
    @InterfaceC10474yl0("isRepackageClassesEnabled")
    public final boolean f48016o;

    @InterfaceC9168qv
    @InterfaceC10474yl0("isShrinkingEnabled")
    public final boolean f48017p;

    /* JADX WARN: Removed duplicated region for block: B:34:0x00a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C7274fb0(C8570nJ c8570nJ) {
        super(c8570nJ.a().f40654a ? new C6006Ua0() : null, !c8570nJ.x().a().isEmpty() ? new C6941db0(c8570nJ) : null, c8570nJ);
        boolean z10;
        C11350o3 B10 = c8570nJ.B();
        boolean z11 = false;
        boolean z12 = B10 != null;
        this.f48006e = z12 && !B10.f57622z.isEmpty();
        this.f48007f = z12 && !B10.f57586A.isEmpty();
        this.f48008g = z12 && !B10.f57587B.isEmpty();
        this.f48009h = z12 ? new C6774cb0(B10.f()) : null;
        this.f48010i = c8570nJ.f50693j1.a();
        if (z12) {
            C8570nJ.m j10 = B10.j();
            j10.getClass();
            if (j10 == C8570nJ.m.f50796e) {
                z10 = true;
                this.f48011j = z10;
                this.f48012k = c8570nJ.R();
                this.f48013l = c8570nJ.T();
                this.f48014m = c8570nJ.f50674d1;
                this.f48015n = c8570nJ.a0().a();
                if (z12) {
                    C8570nJ.m j11 = B10.j();
                    j11.getClass();
                    if (j11 == C8570nJ.m.f50795d) {
                        z11 = true;
                    }
                }
                this.f48016o = z11;
                this.f48017p = c8570nJ.W();
            }
        }
        z10 = false;
        this.f48011j = z10;
        this.f48012k = c8570nJ.R();
        this.f48013l = c8570nJ.T();
        this.f48014m = c8570nJ.f50674d1;
        this.f48015n = c8570nJ.a0().a();
        if (z12) {
        }
        this.f48016o = z11;
        this.f48017p = c8570nJ.W();
    }

    @Override
    public final R8ApiModelingMetadata getApiModelingMetadata() {
        return (R8ApiModelingMetadata) this.f44280a;
    }

    @Override
    public final R8KeepAttributesMetadata getKeepAttributesMetadata() {
        return this.f48009h;
    }

    @Override
    public final R8LibraryDesugaringMetadata getLibraryDesugaringMetadata() {
        return (R8LibraryDesugaringMetadata) this.f44281b;
    }

    @Override
    public final boolean hasClassObfuscationDictionary() {
        return this.f48007f;
    }

    @Override
    public final boolean hasObfuscationDictionary() {
        return this.f48006e;
    }

    @Override
    public final boolean hasPackageObfuscationDictionary() {
        return this.f48008g;
    }

    @Override
    public final boolean isAccessModificationEnabled() {
        return this.f48010i;
    }

    @Override
    public final boolean isFlattenPackageHierarchyEnabled() {
        return this.f48011j;
    }

    @Override
    public final boolean isObfuscationEnabled() {
        return this.f48012k;
    }

    @Override
    public final boolean isOptimizationsEnabled() {
        return this.f48013l;
    }

    @Override
    public final boolean isProGuardCompatibilityModeEnabled() {
        return this.f48014m;
    }

    @Override
    public final boolean isProtoLiteOptimizationEnabled() {
        return this.f48015n;
    }

    @Override
    public final boolean isRepackageClassesEnabled() {
        return this.f48016o;
    }

    @Override
    public final boolean isShrinkingEnabled() {
        return this.f48017p;
    }
}
