package com.ardor3d.util.stat.graph;

import com.ardor3d.scenegraph.Line;
import com.ardor3d.util.stat.StatType;

public interface TableLinkable {
    Line updateLineKey(StatType statType, Line line);
}
