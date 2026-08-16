package org.blacksquircle.ui.editorkit.plugin.shortcuts;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class Shortcut {
    private final boolean alt;
    private final boolean ctrl;
    private final int keyCode;
    private final boolean shift;

    public Shortcut(boolean z10, boolean z11, boolean z12, int i10) {
        this.ctrl = z10;
        this.shift = z11;
        this.alt = z12;
        this.keyCode = i10;
    }

    public static Shortcut copy$default(Shortcut shortcut, boolean z10, boolean z11, boolean z12, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = shortcut.ctrl;
        }
        if ((i11 & 2) != 0) {
            z11 = shortcut.shift;
        }
        if ((i11 & 4) != 0) {
            z12 = shortcut.alt;
        }
        if ((i11 & 8) != 0) {
            i10 = shortcut.keyCode;
        }
        return shortcut.copy(z10, z11, z12, i10);
    }

    public final boolean component1() {
        return this.ctrl;
    }

    public final boolean component2() {
        return this.shift;
    }

    public final boolean component3() {
        return this.alt;
    }

    public final int component4() {
        return this.keyCode;
    }

    @NotNull
    public final Shortcut copy(boolean z10, boolean z11, boolean z12, int i10) {
        return new Shortcut(z10, z11, z12, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Shortcut)) {
            return false;
        }
        Shortcut shortcut = (Shortcut) obj;
        return this.ctrl == shortcut.ctrl && this.shift == shortcut.shift && this.alt == shortcut.alt && this.keyCode == shortcut.keyCode;
    }

    public final boolean getAlt() {
        return this.alt;
    }

    public final boolean getCtrl() {
        return this.ctrl;
    }

    public final int getKeyCode() {
        return this.keyCode;
    }

    public final boolean getShift() {
        return this.shift;
    }

    public int hashCode() {
        return (((((Boolean.hashCode(this.ctrl) * 31) + Boolean.hashCode(this.shift)) * 31) + Boolean.hashCode(this.alt)) * 31) + Integer.hashCode(this.keyCode);
    }

    @NotNull
    public String toString() {
        return "Shortcut(ctrl=" + this.ctrl + ", shift=" + this.shift + ", alt=" + this.alt + ", keyCode=" + this.keyCode + ')';
    }
}
