package com.jme3.input.event;

public abstract class InputEvent {
    protected boolean consumed = false;
    protected long time;

    public long getTime() {
        return this.time;
    }

    public boolean isConsumed() {
        return this.consumed;
    }

    public void setConsumed() {
        this.consumed = true;
    }

    public void setTime(long j10) {
        this.time = j10;
    }
}
