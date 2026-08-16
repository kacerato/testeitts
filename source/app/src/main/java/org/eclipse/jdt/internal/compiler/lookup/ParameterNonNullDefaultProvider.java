package org.eclipse.jdt.internal.compiler.lookup;

interface ParameterNonNullDefaultProvider {
    public static final ParameterNonNullDefaultProvider FALSE_PROVIDER = new ParameterNonNullDefaultProvider() {
        @Override
        public boolean hasAnyNonNullDefault() {
            return false;
        }

        @Override
        public boolean hasNonNullDefaultForParam(int i10) {
            return false;
        }
    };
    public static final ParameterNonNullDefaultProvider TRUE_PROVIDER = new ParameterNonNullDefaultProvider() {
        @Override
        public boolean hasAnyNonNullDefault() {
            return true;
        }

        @Override
        public boolean hasNonNullDefaultForParam(int i10) {
            return true;
        }
    };

    public static class MixedProvider implements ParameterNonNullDefaultProvider {
        private final boolean[] result;

        public MixedProvider(boolean[] zArr) {
            this.result = zArr;
        }

        @Override
        public boolean hasAnyNonNullDefault() {
            return true;
        }

        @Override
        public boolean hasNonNullDefaultForParam(int i10) {
            return this.result[i10];
        }
    }

    boolean hasAnyNonNullDefault();

    boolean hasNonNullDefaultForParam(int i10);
}
