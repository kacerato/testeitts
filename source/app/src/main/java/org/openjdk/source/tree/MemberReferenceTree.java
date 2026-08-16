package org.openjdk.source.tree;

import java.util.List;
import org.openjdk.javax.lang.model.element.Name;

public interface MemberReferenceTree extends ExpressionTree {

    public enum ReferenceMode {
        INVOKE,
        NEW
    }

    ReferenceMode getMode();

    Name getName();

    ExpressionTree getQualifierExpression();

    List<? extends ExpressionTree> getTypeArguments();
}
