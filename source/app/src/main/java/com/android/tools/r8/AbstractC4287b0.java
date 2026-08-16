package com.android.tools.r8;

import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.origin.Origin;

public abstract class AbstractC4287b0 implements AndroidResourceOutput {

    public final AndroidResourceInput f35614a;

    public final C5094Ef0 f35615b;

    public AbstractC4287b0(AndroidResourceInput androidResourceInput, C5094Ef0 c5094Ef0) {
        this.f35614a = androidResourceInput;
        this.f35615b = c5094Ef0;
    }

    @Override
    public final Origin getOrigin() {
        return this.f35614a.getOrigin();
    }

    @Override
    public final ResourcePath getPath() {
        return this.f35614a.getPath();
    }
}
