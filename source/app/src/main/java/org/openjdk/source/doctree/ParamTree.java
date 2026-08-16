package org.openjdk.source.doctree;

import java.util.List;

public interface ParamTree extends BlockTagTree {
    List<? extends DocTree> getDescription();

    IdentifierTree getName();

    boolean isTypeParameter();
}
