package com.android.tools.r8;

import com.android.tools.r8.internal.C5094Ef0;

public final class C4292c0 extends AbstractC4287b0 {

    public final byte[] f35627c;

    public C4292c0(AndroidResourceInput androidResourceInput, C5094Ef0 c5094Ef0, byte[] bArr) {
        super(androidResourceInput, c5094Ef0);
        this.f35627c = bArr;
    }

    @Override
    public final ByteDataView getByteDataView() {
        return ByteDataView.of(this.f35627c);
    }
}
