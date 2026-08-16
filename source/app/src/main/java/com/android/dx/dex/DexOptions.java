package com.android.dx.dex;

import com.android.dex.DexFormat;

public class DexOptions {
    public static final boolean ALIGN_64BIT_REGS_SUPPORT = true;
    public boolean ALIGN_64BIT_REGS_IN_OUTPUT_FINISHER = true;
    public int minSdkVersion = 13;
    public boolean forceJumbo = false;

    public boolean canUseDefaultInterfaceMethods() {
        return this.minSdkVersion >= 24;
    }

    public boolean canUseInvokePolymorphic() {
        return this.minSdkVersion >= 26;
    }

    public String getMagic() {
        return DexFormat.apiToMagic(this.minSdkVersion);
    }
}
