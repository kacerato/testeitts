package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.function.Consumer;
import java.util.function.Function;

public final class S3 extends AbstractC10377y80 {

    public final Function f44073g;

    public ArrayList f44074h;

    public S3(I50 i50, Function function) {
        super(i50);
        this.f44073g = function;
    }

    @Override
    public final Q2 c(String str, Consumer consumer, Object obj) {
        this.f44074h = new ArrayList();
        I50 i50 = this.f53951a;
        return new R3(this, i50, i50, consumer, str);
    }
}
