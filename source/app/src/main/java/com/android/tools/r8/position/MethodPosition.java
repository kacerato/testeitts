package com.android.tools.r8.position;

import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.references.MethodReference;
import java.util.List;
import java.util.stream.Collectors;

public class MethodPosition implements Position {

    private final MethodReference f56161a;

    private final Position f56162b;

    @Deprecated
    public MethodPosition(A2 a22) {
        this(a22.v0());
    }

    public static MethodPosition create(H5 h52) {
        return create(h52.d());
    }

    public boolean equals(Object obj) {
        if (obj instanceof MethodPosition) {
            return this.f56161a.equals(((MethodPosition) obj).f56161a);
        }
        return false;
    }

    @Override
    public String getDescription() {
        return toString();
    }

    public String getHolder() {
        return this.f56161a.getHolderClass().getDescriptor();
    }

    public MethodReference getMethod() {
        return this.f56161a;
    }

    public String getName() {
        return this.f56161a.getMethodName();
    }

    public List<String> getParameterTypes() {
        return (List) this.f56161a.getFormalTypes().stream().map(new a()).collect(Collectors.toList());
    }

    public String getReturnType() {
        return this.f56161a.getReturnType().getDescriptor();
    }

    public Position getTextPosition() {
        return this.f56162b;
    }

    public int hashCode() {
        return this.f56161a.hashCode();
    }

    public String toString() {
        return this.f56161a.toString();
    }

    @Deprecated
    public MethodPosition(MethodReference methodReference) {
        Position position = Position.UNKNOWN;
        this.f56161a = methodReference;
        this.f56162b = position;
    }

    public static MethodPosition create(C4516j1 c4516j1) {
        Position position = Position.UNKNOWN;
        if (c4516j1.b1() && c4516j1.Q0().t0()) {
            position = c4516j1.Q0().V().f36309l;
        }
        return create(c4516j1.getReference().v0(), position);
    }

    private MethodPosition(MethodReference methodReference, Position position) {
        this.f56161a = methodReference;
        this.f56162b = position;
    }

    public static MethodPosition create(MethodReference methodReference) {
        return new MethodPosition(methodReference, Position.UNKNOWN);
    }

    public static MethodPosition create(MethodReference methodReference, Position position) {
        return new MethodPosition(methodReference, position);
    }
}
