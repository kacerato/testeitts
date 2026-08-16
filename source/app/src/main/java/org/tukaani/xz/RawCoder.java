package org.tukaani.xz;

class RawCoder {
    public static void validate(FilterCoder[] filterCoderArr) throws UnsupportedOptionsException {
        for (int i10 = 0; i10 < filterCoderArr.length - 1; i10++) {
            if (!filterCoderArr[i10].nonLastOK()) {
                throw new UnsupportedOptionsException("Unsupported XZ filter chain");
            }
        }
        if (!filterCoderArr[filterCoderArr.length - 1].lastOK()) {
            throw new UnsupportedOptionsException("Unsupported XZ filter chain");
        }
        int i11 = 0;
        for (FilterCoder filterCoder : filterCoderArr) {
            if (filterCoder.changesSize()) {
                i11++;
            }
        }
        if (i11 > 3) {
            throw new UnsupportedOptionsException("Unsupported XZ filter chain");
        }
    }
}
