package com.ardor3d.util.geom;

import com.ardor3d.util.geom.GeometryTool;
import com.google.common.collect.Q1;
import java.util.EnumSet;
import java.util.Map;

public class VertGroupData {
    public static final int DEFAULT_GROUP = 0;
    private final Map<Long, EnumSet<GeometryTool.MatchCondition>> _groupConditions = Q1.Y();
    private long[] _vertGroups = null;

    public EnumSet<GeometryTool.MatchCondition> getGroupConditions(long j10) {
        return this._groupConditions.get(Long.valueOf(j10));
    }

    public long getGroupForVertex(int i10) {
        long[] jArr = this._vertGroups;
        if (jArr != null) {
            return jArr[i10];
        }
        return 0L;
    }

    public void setGroupConditions(long j10, EnumSet<GeometryTool.MatchCondition> enumSet) {
        this._groupConditions.put(Long.valueOf(j10), enumSet);
    }

    public void setVertGroups(long[] jArr) {
        this._vertGroups = jArr;
    }
}
