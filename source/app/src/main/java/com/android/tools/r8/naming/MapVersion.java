package com.android.tools.r8.naming;

import com.android.tools.r8.internal.C40;

public enum MapVersion implements C40<MapVersion> {
    MAP_VERSION_UNKNOWN("unknown"),
    MAP_VERSION_NONE("none"),
    MAP_VERSION_1_0("1.0"),
    MAP_VERSION_2_0("2.0"),
    MAP_VERSION_2_1("2.1"),
    MAP_VERSION_2_2("2.2"),
    MAP_VERSION_EXPERIMENTAL("experimental");


    private final String f55709b;
    public static final MapVersion STABLE = MAP_VERSION_2_2;

    MapVersion(String str) {
        this.f55709b = str;
    }

    public static MapVersion fromName(String str) {
        for (MapVersion mapVersion : values()) {
            if (mapVersion.getName().equals(str)) {
                return mapVersion;
            }
        }
        return null;
    }

    @Override
    public int compareTo(MapVersion mapVersion) {
        return compareTo(mapVersion);
    }

    public String getName() {
        return this.f55709b;
    }

    @Override
    public boolean isEqualTo(Object obj) {
        return isEqualTo((C40) obj);
    }

    public boolean isUnknown() {
        return this == MAP_VERSION_UNKNOWN;
    }

    public com.android.tools.r8.naming.mappinginformation.b toMapVersionMappingInformation() {
        return new com.android.tools.r8.naming.mappinginformation.b(this, getName());
    }
}
