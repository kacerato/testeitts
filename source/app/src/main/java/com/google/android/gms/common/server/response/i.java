package com.google.android.gms.common.server.response;

import androidx.annotation.Nullable;
import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
import java.io.IOException;

public final class i implements l {
    @Override
    @Nullable
    public final Object a(FastParser fastParser, BufferedReader bufferedReader) throws FastParser.ParseException, IOException {
        String q10;
        q10 = fastParser.q(bufferedReader);
        return q10;
    }
}
