package com.google.android.gms.common.server.response;

import androidx.annotation.Nullable;
import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
import java.io.IOException;

public final class g implements l {
    @Override
    @Nullable
    public final Object a(FastParser fastParser, BufferedReader bufferedReader) throws FastParser.ParseException, IOException {
        double l10;
        l10 = fastParser.l(bufferedReader);
        return Double.valueOf(l10);
    }
}
