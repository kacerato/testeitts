package org.openjdk.source.tree;

import java.util.List;
import org.openjdk.javax.lang.model.element.Name;

public interface TypeParameterTree extends Tree {
    List<? extends AnnotationTree> getAnnotations();

    List<? extends Tree> getBounds();

    Name getName();
}
