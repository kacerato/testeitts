package org.openjdk.source.tree;

import java.util.List;
import org.openjdk.javax.lang.model.element.Name;

public interface MethodTree extends Tree {
    BlockTree getBody();

    Tree getDefaultValue();

    ModifiersTree getModifiers();

    Name getName();

    List<? extends VariableTree> getParameters();

    VariableTree getReceiverParameter();

    Tree getReturnType();

    List<? extends ExpressionTree> getThrows();

    List<? extends TypeParameterTree> getTypeParameters();
}
