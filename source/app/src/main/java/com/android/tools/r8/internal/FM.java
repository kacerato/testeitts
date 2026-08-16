package com.android.tools.r8.internal;

public final class FM extends RuntimeException {

    public final I50 f40182b;

    public FM(I50 i50, String str) {
        super(str);
        this.f40182b = i50;
    }

    @Override
    public final String getMessage() {
        String message = super.getMessage();
        StringBuilder sb2 = new StringBuilder();
        for (I50 i50 = this.f40182b; i50 != null; i50 = i50.c()) {
            sb2.append("\n  at ");
            sb2.append(i50.b());
            sb2.append(": ");
            sb2.append(i50.a());
        }
        return message + sb2.toString();
    }

    public FM(I50 i50, RuntimeException runtimeException) {
        super(runtimeException);
        this.f40182b = i50;
    }
}
