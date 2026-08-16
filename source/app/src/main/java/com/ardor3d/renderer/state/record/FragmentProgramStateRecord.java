package com.ardor3d.renderer.state.record;

import com.ardor3d.renderer.state.FragmentProgramState;

public class FragmentProgramStateRecord extends StateRecord {
    private FragmentProgramState reference = null;

    public FragmentProgramState getReference() {
        return this.reference;
    }

    @Override
    public void invalidate() {
        super.invalidate();
        this.reference = null;
    }

    public void setReference(FragmentProgramState fragmentProgramState) {
        this.reference = fragmentProgramState;
    }
}
