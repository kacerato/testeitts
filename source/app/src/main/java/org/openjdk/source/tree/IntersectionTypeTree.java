package org.openjdk.source.tree;

import java.util.List;

public interface IntersectionTypeTree extends Tree {
    List<? extends Tree> getBounds();
}
