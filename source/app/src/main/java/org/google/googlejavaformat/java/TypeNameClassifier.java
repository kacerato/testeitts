package org.google.googlejavaformat.java;

import java.util.List;
import w2.W;

public final class TypeNameClassifier {

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$org$google$googlejavaformat$java$TypeNameClassifier$JavaCaseFormat;

        static {
            int[] iArr = new int[JavaCaseFormat.values().length];
            $SwitchMap$org$google$googlejavaformat$java$TypeNameClassifier$JavaCaseFormat = iArr;
            try {
                iArr[JavaCaseFormat.UPPERCASE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$google$googlejavaformat$java$TypeNameClassifier$JavaCaseFormat[JavaCaseFormat.LOWER_CAMEL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$google$googlejavaformat$java$TypeNameClassifier$JavaCaseFormat[JavaCaseFormat.LOWERCASE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$google$googlejavaformat$java$TypeNameClassifier$JavaCaseFormat[JavaCaseFormat.UPPER_CAMEL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum JavaCaseFormat {
        UPPERCASE,
        LOWERCASE,
        UPPER_CAMEL,
        LOWER_CAMEL;

        public static JavaCaseFormat from(String name) {
            boolean z10 = true;
            W.a(!name.isEmpty());
            boolean z11 = false;
            boolean z12 = false;
            boolean z13 = false;
            for (int i10 = 0; i10 < name.length(); i10++) {
                char charAt = name.charAt(i10);
                if (Character.isAlphabetic(charAt)) {
                    if (z10) {
                        z11 = Character.isUpperCase(charAt);
                        z10 = false;
                    }
                    z12 |= Character.isUpperCase(charAt);
                    z13 |= Character.isLowerCase(charAt);
                }
            }
            return z11 ? z13 ? UPPER_CAMEL : UPPERCASE : z12 ? LOWER_CAMEL : LOWERCASE;
        }
    }

    public enum TyParseState {
        START(0 == true ? 1 : 0) {
            @Override
            public TyParseState next(JavaCaseFormat n10) {
                int i10 = AnonymousClass1.$SwitchMap$org$google$googlejavaformat$java$TypeNameClassifier$JavaCaseFormat[n10.ordinal()];
                if (i10 == 1) {
                    return TyParseState.AMBIGUOUS;
                }
                if (i10 == 2) {
                    return TyParseState.REJECT;
                }
                if (i10 == 3) {
                    return TyParseState.START;
                }
                if (i10 == 4) {
                    return TyParseState.TYPE;
                }
                throw new AssertionError();
            }
        },
        TYPE(1 == true ? 1 : 0) {
            @Override
            public TyParseState next(JavaCaseFormat n10) {
                int i10 = AnonymousClass1.$SwitchMap$org$google$googlejavaformat$java$TypeNameClassifier$JavaCaseFormat[n10.ordinal()];
                if (i10 == 1 || i10 == 2 || i10 == 3) {
                    return TyParseState.FIRST_STATIC_MEMBER;
                }
                if (i10 == 4) {
                    return TyParseState.TYPE;
                }
                throw new AssertionError();
            }
        },
        FIRST_STATIC_MEMBER(1 == true ? 1 : 0) {
            @Override
            public TyParseState next(JavaCaseFormat n10) {
                return TyParseState.REJECT;
            }
        },
        REJECT(0 == true ? 1 : 0) {
            @Override
            public TyParseState next(JavaCaseFormat n10) {
                return TyParseState.REJECT;
            }
        },
        AMBIGUOUS(0 == true ? 1 : 0) {
            @Override
            public TyParseState next(JavaCaseFormat n10) {
                int i10 = AnonymousClass1.$SwitchMap$org$google$googlejavaformat$java$TypeNameClassifier$JavaCaseFormat[n10.ordinal()];
                if (i10 == 1) {
                    return TyParseState.AMBIGUOUS;
                }
                if (i10 == 2 || i10 == 3) {
                    return TyParseState.REJECT;
                }
                if (i10 == 4) {
                    return TyParseState.TYPE;
                }
                throw new AssertionError();
            }
        };

        private final boolean isSingleUnit;

        TyParseState(boolean z10, AnonymousClass1 anonymousClass1) {
            this(z10);
        }

        public boolean isSingleUnit() {
            return this.isSingleUnit;
        }

        public abstract TyParseState next(JavaCaseFormat n10);

        TyParseState(boolean isSingleUnit) {
            this.isSingleUnit = isSingleUnit;
        }
    }

    private TypeNameClassifier() {
    }

    public static int typePrefixLength(List<String> nameParts) {
        TyParseState tyParseState = TyParseState.START;
        int i10 = -1;
        for (int i11 = 0; i11 < nameParts.size() && (tyParseState = tyParseState.next(JavaCaseFormat.from(nameParts.get(i11)))) != TyParseState.REJECT; i11++) {
            if (tyParseState.isSingleUnit()) {
                i10 = i11;
            }
        }
        return i10;
    }
}
