package com.android.tools.r8.experimental.graphinfo;

import b3.s;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.position.TextPosition;
import com.android.tools.r8.position.TextRange;
import com.android.tools.r8.shaking.K3;
import com.android.tools.r8.shaking.L3;
import java.util.Collections;
import java.util.Objects;
import java.util.Set;

public final class KeepRuleGraphNode extends GraphNode {

    static final boolean f36109g = true;

    private final Origin f36110c;

    private final Position f36111d;

    private final String f36112e;

    private final Set f36113f;

    public KeepRuleGraphNode(K3 k32) {
        this(k32, Collections.EMPTY_SET);
    }

    private static String a(Position position) {
        if (position instanceof TextRange) {
            TextPosition start = ((TextRange) position).getStart();
            return start.getLine() + s.f32937c + start.getColumn();
        }
        if (!(position instanceof TextPosition)) {
            return position.getDescription();
        }
        TextPosition textPosition = (TextPosition) position;
        return textPosition.getLine() + s.f32937c + textPosition.getColumn();
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KeepRuleGraphNode)) {
            return false;
        }
        KeepRuleGraphNode keepRuleGraphNode = (KeepRuleGraphNode) obj;
        return this.f36110c.equals(keepRuleGraphNode.getOrigin()) && this.f36111d.equals(keepRuleGraphNode.getPosition()) && Objects.equals(this.f36112e, keepRuleGraphNode.getContent()) && this.f36113f.equals(keepRuleGraphNode.getPreconditions());
    }

    public String getContent() {
        return this.f36112e;
    }

    public Origin getOrigin() {
        return this.f36110c;
    }

    public Position getPosition() {
        return this.f36111d;
    }

    public Set<GraphNode> getPreconditions() {
        return this.f36113f;
    }

    @Override
    public int hashCode() {
        return Objects.hash(this.f36110c, this.f36111d, this.f36112e, this.f36113f);
    }

    @Override
    public String toString() {
        return (getOrigin() == Origin.unknown() ? getContent() : getOrigin()) + s.f32937c + a(getPosition());
    }

    public KeepRuleGraphNode(L3 l32, Set<GraphNode> set) {
        super(false);
        boolean z10 = f36109g;
        if (!z10 && l32 == null) {
            throw new AssertionError();
        }
        if (!z10 && set == null) {
            throw new AssertionError();
        }
        this.f36110c = l32.i();
        this.f36111d = l32.f57278b;
        this.f36112e = l32.j();
        this.f36113f = set;
    }
}
