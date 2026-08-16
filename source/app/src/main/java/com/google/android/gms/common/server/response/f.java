package com.google.android.gms.common.server.response;

import androidx.annotation.Nullable;
import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
import java.io.IOException;

public final class f implements l {
    @Override
    @Nullable
    public final Object a(FastParser fastParser, BufferedReader bufferedReader) throws FastParser.ParseException, IOException {
        float m10;
        m10 = fastParser.m(bufferedReader);
        return Float.valueOf(m10);
    }
}
