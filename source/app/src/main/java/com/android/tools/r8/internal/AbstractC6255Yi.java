package com.android.tools.r8.internal;

import java.util.IdentityHashMap;

public abstract class AbstractC6255Yi {

    public static class a<Block, StateType extends D1<StateType>> extends AbstractC6255Yi {

        public final IdentityHashMap f46065a;

        public a(IdentityHashMap identityHashMap) {
            this.f46065a = identityHashMap;
        }

        @Override
        public final a a() {
            return this;
        }

        @Override
        public final boolean c() {
            return true;
        }

        public StateType a(Block block) {
            return (StateType) this.f46065a.get(block);
        }
    }

    public <Block, StateType extends D1<StateType>> a<Block, StateType> a() {
        return null;
    }

    public boolean b() {
        return false;
    }

    public boolean c() {
        return false;
    }
}
