package org.apache.commons.lang3.builder;

final class IDKey {

    private final int f100101id;
    private final Object value;

    public IDKey(Object obj) {
        this.f100101id = System.identityHashCode(obj);
        this.value = obj;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof IDKey)) {
            return false;
        }
        IDKey iDKey = (IDKey) obj;
        return this.f100101id == iDKey.f100101id && this.value == iDKey.value;
    }

    public int hashCode() {
        return this.f100101id;
    }
}
