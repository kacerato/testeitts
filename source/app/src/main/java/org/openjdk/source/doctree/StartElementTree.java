package org.openjdk.source.doctree;

import java.util.List;
import org.openjdk.javax.lang.model.element.Name;

public interface StartElementTree extends DocTree {
    List<? extends DocTree> getAttributes();

    Name getName();

    boolean isSelfClosing();
}
