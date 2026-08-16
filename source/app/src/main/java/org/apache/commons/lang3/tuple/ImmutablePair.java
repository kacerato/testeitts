package org.apache.commons.lang3.tuple;

public final class ImmutablePair<L, R> extends Pair<L, R> {
    private static final ImmutablePair NULL = of((Object) null, (Object) null);
    private static final long serialVersionUID = 4954918890077093841L;
    public final L left;
    public final R right;

    public ImmutablePair(L l10, R r10) {
        this.left = l10;
        this.right = r10;
    }

    public static <L, R> ImmutablePair<L, R> nullPair() {
        return NULL;
    }

    public static <L, R> ImmutablePair<L, R> of(L l10, R r10) {
        return new ImmutablePair<>(l10, r10);
    }

    @Override
    public L getLeft() {
        return this.left;
    }

    @Override
    public R getRight() {
        return this.right;
    }

    @Override
    public R setValue(R r10) {
        throw new UnsupportedOperationException();
    }
}
