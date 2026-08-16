package com.android.tools.r8.internal;

import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.MethodPosition;
import com.android.tools.r8.position.Position;

public class C5325If extends RuntimeException {

    public final Origin f41159b;

    public final Position f41160c;

    public C5325If(String str) {
        this(Origin.unknown(), str, null);
    }

    public C5325If(String str, Throwable th2) {
        this(Origin.unknown(), str, th2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5325If(Origin origin, String str, Throwable th2) {
        super(str, th2);
        Position position = Position.UNKNOWN;
        this.f41159b = origin;
        this.f41160c = position;
    }

    public C5325If(Origin origin, MethodPosition methodPosition) {
        super("Absent Code attribute in method that is not native or abstract", null);
        this.f41159b = origin;
        this.f41160c = methodPosition;
    }

    public C5325If(String str, C5325If c5325If, Origin origin, Position position) {
        super(str, c5325If);
        this.f41159b = origin;
        this.f41160c = position;
    }
}
