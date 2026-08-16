package okhttp3;

import java.io.IOException;

public enum A {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2"),
    H2_PRIOR_KNOWLEDGE("h2_prior_knowledge"),
    QUIC("quic");

    private final String protocol;

    A(String str) {
        this.protocol = str;
    }

    public static A a(String str) throws IOException {
        A a10 = HTTP_1_0;
        if (str.equals(a10.protocol)) {
            return a10;
        }
        A a11 = HTTP_1_1;
        if (str.equals(a11.protocol)) {
            return a11;
        }
        A a12 = H2_PRIOR_KNOWLEDGE;
        if (str.equals(a12.protocol)) {
            return a12;
        }
        A a13 = HTTP_2;
        if (str.equals(a13.protocol)) {
            return a13;
        }
        A a14 = SPDY_3;
        if (str.equals(a14.protocol)) {
            return a14;
        }
        A a15 = QUIC;
        if (str.equals(a15.protocol)) {
            return a15;
        }
        throw new IOException("Unexpected protocol: " + str);
    }

    @Override
    public String toString() {
        return this.protocol;
    }
}
