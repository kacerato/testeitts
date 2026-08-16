package org.google.googlejavaformat.java.javadoc;

final class NestingCounter {
    private int value;

    public void decrementIfPositive() {
        int i10 = this.value;
        if (i10 > 0) {
            this.value = i10 - 1;
        }
    }

    public void increment() {
        this.value++;
    }

    public void incrementIfPositive() {
        int i10 = this.value;
        if (i10 > 0) {
            this.value = i10 + 1;
        }
    }

    public boolean isPositive() {
        return this.value > 0;
    }

    public void reset() {
        this.value = 0;
    }

    public int value() {
        return this.value;
    }
}
