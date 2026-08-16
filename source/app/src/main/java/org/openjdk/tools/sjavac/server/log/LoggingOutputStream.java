package org.openjdk.tools.sjavac.server.log;

import java.io.ByteArrayOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.openjdk.tools.sjavac.Log;

public class LoggingOutputStream extends FilterOutputStream {
    private static final byte[] LINE_SEP = System.lineSeparator().getBytes();
    private EolTrackingByteArrayOutputStream buf;
    private final Log.Level level;
    private final String linePrefix;

    public static class EolTrackingByteArrayOutputStream extends ByteArrayOutputStream {
        private static final byte[] EOL = System.lineSeparator().getBytes();

        private EolTrackingByteArrayOutputStream() {
        }

        public boolean isLineComplete() {
            if (this.count < EOL.length) {
                return false;
            }
            int i10 = 0;
            while (true) {
                byte[] bArr = EOL;
                if (i10 >= bArr.length) {
                    return true;
                }
                if (this.buf[(this.count - bArr.length) + i10] != bArr[i10]) {
                    return false;
                }
                i10++;
            }
        }
    }

    public LoggingOutputStream(OutputStream outputStream, Log.Level level, String str) {
        super(outputStream);
        this.buf = new EolTrackingByteArrayOutputStream();
        this.level = level;
        this.linePrefix = str;
    }

    @Override
    public void write(int i10) throws IOException {
        super.write(i10);
        this.buf.write(i10);
        if (this.buf.isLineComplete()) {
            String str = new String(this.buf.toByteArray(), 0, this.buf.size() - LINE_SEP.length);
            Log.log(this.level, this.linePrefix + str);
            this.buf = new EolTrackingByteArrayOutputStream();
        }
    }
}
