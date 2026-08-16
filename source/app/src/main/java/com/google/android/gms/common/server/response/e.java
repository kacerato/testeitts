package com.google.android.gms.common.server.response;

import androidx.annotation.Nullable;
import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
import java.io.IOException;

public final class e implements l {
    @Override
    @Nullable
    public final Object a(FastParser fastParser, BufferedReader bufferedReader) throws FastParser.ParseException, IOException {
        long p10;
        p10 = fastParser.p(bufferedReader);
        return Long.valueOf(p10);
    }
}
