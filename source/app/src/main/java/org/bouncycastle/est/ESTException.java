package org.bouncycastle.est;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class ESTException extends IOException {
    private static final long MAX_ERROR_BODY = 8192;
    private InputStream body;
    private Throwable cause;
    private int statusCode;

    public class a extends InputStream {
        public a() {
        }

        @Override
        public int read() throws IOException {
            return -1;
        }
    }

    public ESTException(String str) {
        this(str, null);
    }

    public InputStream getBody() {
        InputStream inputStream = this.body;
        return inputStream == null ? new a() : inputStream;
    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }

    @Override
    public String getMessage() {
        return super.getMessage() + " HTTP Status Code: " + this.statusCode;
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public ESTException(String str, Throwable th2) {
        super(str);
        this.cause = th2;
        this.body = null;
        this.statusCode = 0;
    }

    public ESTException(String str, Throwable th2, int i10, InputStream inputStream) {
        super(str);
        this.cause = th2;
        this.statusCode = i10;
        if (inputStream == null) {
            this.body = null;
            return;
        }
        byte[] bArr = new byte[8192];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            try {
                int read = inputStream.read(bArr);
                if (read < 0) {
                    break;
                }
                if (byteArrayOutputStream.size() + read > 8192) {
                    byteArrayOutputStream.write(bArr, 0, 8192 - byteArrayOutputStream.size());
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            } catch (Exception unused) {
                return;
            }
        }
        byteArrayOutputStream.flush();
        byteArrayOutputStream.close();
        this.body = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
        inputStream.close();
    }
}
