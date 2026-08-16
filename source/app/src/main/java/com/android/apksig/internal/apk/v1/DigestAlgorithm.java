package com.android.apksig.internal.apk.v1;

import java.util.Comparator;

public enum DigestAlgorithm {
    SHA1("SHA-1"),
    SHA256("SHA-256");

    public static Comparator<DigestAlgorithm> BY_STRENGTH_COMPARATOR = new StrengthComparator(null);
    private final String mJcaMessageDigestAlgorithm;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$android$apksig$internal$apk$v1$DigestAlgorithm;

        static {
            int[] iArr = new int[DigestAlgorithm.values().length];
            $SwitchMap$com$android$apksig$internal$apk$v1$DigestAlgorithm = iArr;
            try {
                iArr[DigestAlgorithm.SHA1.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$apksig$internal$apk$v1$DigestAlgorithm[DigestAlgorithm.SHA256.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static class StrengthComparator implements Comparator<DigestAlgorithm> {
        private StrengthComparator() {
        }

        public StrengthComparator(AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override
        public int compare(DigestAlgorithm digestAlgorithm, DigestAlgorithm digestAlgorithm2) {
            int[] iArr = AnonymousClass1.$SwitchMap$com$android$apksig$internal$apk$v1$DigestAlgorithm;
            int i10 = iArr[digestAlgorithm.ordinal()];
            if (i10 == 1) {
                int i11 = iArr[digestAlgorithm2.ordinal()];
                if (i11 == 1) {
                    return 0;
                }
                if (i11 == 2) {
                    return -1;
                }
                throw new RuntimeException("Unsupported algorithm: " + ((Object) digestAlgorithm2));
            }
            if (i10 == 2) {
                int i12 = iArr[digestAlgorithm2.ordinal()];
                if (i12 == 1) {
                    return 1;
                }
                if (i12 == 2) {
                    return 0;
                }
                throw new RuntimeException("Unsupported algorithm: " + ((Object) digestAlgorithm2));
            }
            throw new RuntimeException("Unsupported algorithm: " + ((Object) digestAlgorithm));
        }
    }

    DigestAlgorithm(String str) {
        this.mJcaMessageDigestAlgorithm = str;
    }

    public String getJcaMessageDigestAlgorithm() {
        return this.mJcaMessageDigestAlgorithm;
    }
}
