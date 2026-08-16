package org.tukaani.xz;

import java.io.IOException;
import java.io.InputStream;

public abstract class FilterOptions implements Cloneable {
    public static int getDecoderMemoryUsage(FilterOptions[] filterOptionsArr) {
        int i10 = 0;
        for (FilterOptions filterOptions : filterOptionsArr) {
            i10 += filterOptions.getDecoderMemoryUsage();
        }
        return i10;
    }

    public static int getEncoderMemoryUsage(FilterOptions[] filterOptionsArr) {
        int i10 = 0;
        for (FilterOptions filterOptions : filterOptionsArr) {
            i10 += filterOptions.getEncoderMemoryUsage();
        }
        return i10;
    }

    public abstract int getDecoderMemoryUsage();

    public abstract int getEncoderMemoryUsage();

    public abstract FilterEncoder getFilterEncoder();

    public InputStream getInputStream(InputStream inputStream) throws IOException {
        return getInputStream(inputStream, ArrayCache.getDefaultCache());
    }

    public abstract InputStream getInputStream(InputStream inputStream, ArrayCache arrayCache) throws IOException;

    public FinishableOutputStream getOutputStream(FinishableOutputStream finishableOutputStream) {
        return getOutputStream(finishableOutputStream, ArrayCache.getDefaultCache());
    }

    public abstract FinishableOutputStream getOutputStream(FinishableOutputStream finishableOutputStream, ArrayCache arrayCache);
}
