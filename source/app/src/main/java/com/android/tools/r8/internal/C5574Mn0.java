package com.android.tools.r8.internal;

import java.sql.Timestamp;
import java.util.Date;

public final class C5574Mn0 extends AbstractC9966vj {
    public C5574Mn0() {
        super(Timestamp.class);
    }

    @Override
    public final Date a(Date date) {
        return new Timestamp(date.getTime());
    }
}
