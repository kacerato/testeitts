package com.ardor3d.util.stat;

public class StatType implements Comparable<StatType> {
    private String _statName;
    public static final StatType STAT_FRAMES = new StatType("_frames");
    public static final StatType STAT_TRIANGLE_COUNT = new StatType("_triCount");
    public static final StatType STAT_QUAD_COUNT = new StatType("_quadCount");
    public static final StatType STAT_LINE_COUNT = new StatType("_lineCount");
    public static final StatType STAT_POINT_COUNT = new StatType("_pointCount");
    public static final StatType STAT_VERTEX_COUNT = new StatType("_vertCount");
    public static final StatType STAT_MESH_COUNT = new StatType("_meshCount");
    public static final StatType STAT_TEXTURE_BINDS = new StatType("_texBind");
    public static final StatType STAT_SHADER_BINDS = new StatType("_shaderBind");
    public static final StatType STAT_UNSPECIFIED_TIMER = new StatType("_timedOther");
    public static final StatType STAT_RENDER_TIMER = new StatType("_timedRenderer");
    public static final StatType STAT_STATES_TIMER = new StatType("_timedStates");
    public static final StatType STAT_TEXTURE_STATE_TIMER = new StatType("_timedTextureState");
    public static final StatType STAT_SHADER_STATE_TIMER = new StatType("_timedShaderState");
    public static final StatType STAT_UPDATE_TIMER = new StatType("_timedUpdates");
    public static final StatType STAT_DISPLAYSWAP_TIMER = new StatType("_timedSwap");

    public StatType(String str) {
        this._statName = str;
    }

    public boolean equals(Object obj) {
        return (obj instanceof StatType) && this._statName.equals(((StatType) obj)._statName);
    }

    public String getStatName() {
        return this._statName;
    }

    public int hashCode() {
        return this._statName.hashCode();
    }

    @Override
    public int compareTo(StatType statType) {
        return this._statName.compareTo(statType._statName);
    }
}
