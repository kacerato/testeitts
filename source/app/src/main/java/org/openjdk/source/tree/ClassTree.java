package org.openjdk.source.tree;

import java.util.List;
import org.openjdk.javax.lang.model.element.Name;

public interface ClassTree extends StatementTree {
    Tree getExtendsClause();

    List<? extends Tree> getImplementsClause();

    List<? extends Tree> getMembers();

    ModifiersTree getModifiers();

    Name getSimpleName();

    List<? extends TypeParameterTree> getTypeParameters();
}
