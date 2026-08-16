package org.openjdk.tools.sjavac;

import java.io.FilterWriter;
import java.io.IOException;
import java.io.Writer;
import org.apache.commons.lang3.StringUtils;

public class AutoFlushWriter extends FilterWriter {
    public AutoFlushWriter(Writer writer) {
        super(writer);
    }

    @Override
    public void write(int i10) throws IOException {
        super.write(i10);
        if (i10 == 10 || i10 == 13) {
            flush();
        }
    }

    @Override
    public void write(String str, int i10, int i11) throws IOException {
        super.write(str, i10, i11);
        if (str.contains("\n") || str.contains(StringUtils.CR)) {
            flush();
        }
    }

    @Override
    public void write(char[] cArr, int i10, int i11) throws IOException {
        super.write(cArr, i10, i11);
        for (char c10 : cArr) {
            if (c10 == '\n' || c10 == '\r') {
                flush();
                return;
            }
        }
    }
}
