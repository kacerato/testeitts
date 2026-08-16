package com.itsmagic.engine.Activities.Editor.Extensions.AIAgent;

import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine2.R;

public enum g {
    JAVA_CODING,
    LUA_CODING,
    LEVEL_EDITION,
    PLANNING,
    NORMAL,
    EXPLAIN,
    EMPTY;

    public boolean b() {
        int ordinal = ordinal();
        return ordinal == 0 || ordinal == 1 || ordinal == 2;
    }

    public String c() {
        int ordinal = ordinal();
        return ordinal != 0 ? ordinal != 1 ? ordinal != 2 ? name() : Lang.l(Lang.T.AI_SPECIALIST_LEVEL_EDITION) : Lang.l(Lang.T.AI_SPECIALIST_LUA_CODING) : Lang.l(Lang.T.AI_SPECIALIST_JAVA_CODING);
    }

    public int d() {
        int ordinal = ordinal();
        return ordinal != 0 ? ordinal != 1 ? ordinal != 2 ? R.drawable.f131498ai : R.drawable.cube_shadow : R.drawable.lua : R.drawable.f131499java;
    }

    public boolean e() {
        return this == EMPTY;
    }
}
