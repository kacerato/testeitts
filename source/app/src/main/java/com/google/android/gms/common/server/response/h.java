package com.google.android.gms.common.server.response;

import androidx.annotation.Nullable;
import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
import java.io.IOException;

public final class h implements l {
    @Override
    @Nullable
    public final Object a(FastParser fastParser, BufferedReader bufferedReader) throws FastParser.ParseException, IOException {
        boolean A10;
        A10 = fastParser.A(bufferedReader, false);
        return Boolean.valueOf(A10);
    }
}
