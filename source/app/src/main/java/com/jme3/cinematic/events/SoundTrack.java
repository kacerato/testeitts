package com.jme3.cinematic.events;

import com.jme3.animation.LoopMode;

@Deprecated
public class SoundTrack extends SoundEvent {
    public SoundTrack(String str) {
        super(str);
    }

    public SoundTrack(String str, boolean z10) {
        super(str, z10);
    }

    public SoundTrack(String str, boolean z10, float f10) {
        super(str, z10, f10);
    }

    public SoundTrack(String str, boolean z10, LoopMode loopMode) {
        super(str, z10, loopMode);
    }

    public SoundTrack(String str, boolean z10, float f10, LoopMode loopMode) {
        super(str, z10, f10, loopMode);
    }

    public SoundTrack(String str, float f10) {
        super(str, f10);
    }

    public SoundTrack(String str, LoopMode loopMode) {
        super(str, loopMode);
    }

    public SoundTrack(String str, float f10, LoopMode loopMode) {
        super(str, f10, loopMode);
    }

    public SoundTrack() {
    }
}
