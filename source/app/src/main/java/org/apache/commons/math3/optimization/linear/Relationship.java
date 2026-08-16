package org.apache.commons.math3.optimization.linear;

@Deprecated
public enum Relationship {
    EQ("="),
    LEQ("<="),
    GEQ(">=");

    private final String stringValue;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$org$apache$commons$math3$optimization$linear$Relationship;

        static {
            int[] iArr = new int[Relationship.values().length];
            $SwitchMap$org$apache$commons$math3$optimization$linear$Relationship = iArr;
            try {
                iArr[Relationship.LEQ.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$optimization$linear$Relationship[Relationship.GEQ.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    Relationship(String str) {
        this.stringValue = str;
    }

    public Relationship oppositeRelationship() {
        int i10 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$optimization$linear$Relationship[ordinal()];
        return i10 != 1 ? i10 != 2 ? EQ : LEQ : GEQ;
    }

    @Override
    public String toString() {
        return this.stringValue;
    }
}
