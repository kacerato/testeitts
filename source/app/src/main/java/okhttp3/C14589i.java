package okhttp3;

import android.view.InputDevice;
import com.jme3.audio.openal.AL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class C14589i {

    public final String f99366a;

    public static final Comparator<String> f99299b = new a();

    public static final Map<String, C14589i> f99302c = new LinkedHashMap();

    public static final C14589i f99305d = c("SSL_RSA_WITH_NULL_MD5", 1);

    public static final C14589i f99308e = c("SSL_RSA_WITH_NULL_SHA", 2);

    public static final C14589i f99311f = c("SSL_RSA_EXPORT_WITH_RC4_40_MD5", 3);

    public static final C14589i f99314g = c("SSL_RSA_WITH_RC4_128_MD5", 4);

    public static final C14589i f99317h = c("SSL_RSA_WITH_RC4_128_SHA", 5);

    public static final C14589i f99320i = c("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA", 8);

    public static final C14589i f99323j = c("SSL_RSA_WITH_DES_CBC_SHA", 9);

    public static final C14589i f99326k = c("SSL_RSA_WITH_3DES_EDE_CBC_SHA", 10);

    public static final C14589i f99329l = c("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", 17);

    public static final C14589i f99332m = c("SSL_DHE_DSS_WITH_DES_CBC_SHA", 18);

    public static final C14589i f99335n = c("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA", 19);

    public static final C14589i f99338o = c("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", 20);

    public static final C14589i f99341p = c("SSL_DHE_RSA_WITH_DES_CBC_SHA", 21);

    public static final C14589i f99344q = c("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA", 22);

    public static final C14589i f99347r = c("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5", 23);

    public static final C14589i f99350s = c("SSL_DH_anon_WITH_RC4_128_MD5", 24);

    public static final C14589i f99352t = c("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA", 25);

    public static final C14589i f99354u = c("SSL_DH_anon_WITH_DES_CBC_SHA", 26);

    public static final C14589i f99356v = c("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA", 27);

    public static final C14589i f99358w = c("TLS_KRB5_WITH_DES_CBC_SHA", 30);

    public static final C14589i f99360x = c("TLS_KRB5_WITH_3DES_EDE_CBC_SHA", 31);

    public static final C14589i f99362y = c("TLS_KRB5_WITH_RC4_128_SHA", 32);

    public static final C14589i f99364z = c("TLS_KRB5_WITH_DES_CBC_MD5", 34);

    public static final C14589i f99245A = c("TLS_KRB5_WITH_3DES_EDE_CBC_MD5", 35);

    public static final C14589i f99247B = c("TLS_KRB5_WITH_RC4_128_MD5", 36);

    public static final C14589i f99249C = c("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", 38);

    public static final C14589i f99251D = c("TLS_KRB5_EXPORT_WITH_RC4_40_SHA", 40);

    public static final C14589i f99253E = c("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", 41);

    public static final C14589i f99255F = c("TLS_KRB5_EXPORT_WITH_RC4_40_MD5", 43);

    public static final C14589i f99257G = c("TLS_RSA_WITH_AES_128_CBC_SHA", 47);

    public static final C14589i f99259H = c("TLS_DHE_DSS_WITH_AES_128_CBC_SHA", 50);

    public static final C14589i f99261I = c("TLS_DHE_RSA_WITH_AES_128_CBC_SHA", 51);

    public static final C14589i f99263J = c("TLS_DH_anon_WITH_AES_128_CBC_SHA", 52);

    public static final C14589i f99265K = c("TLS_RSA_WITH_AES_256_CBC_SHA", 53);

    public static final C14589i f99267L = c("TLS_DHE_DSS_WITH_AES_256_CBC_SHA", 56);

    public static final C14589i f99269M = c("TLS_DHE_RSA_WITH_AES_256_CBC_SHA", 57);

    public static final C14589i f99271N = c("TLS_DH_anon_WITH_AES_256_CBC_SHA", 58);

    public static final C14589i f99273O = c("TLS_RSA_WITH_NULL_SHA256", 59);

    public static final C14589i f99275P = c("TLS_RSA_WITH_AES_128_CBC_SHA256", 60);

    public static final C14589i f99277Q = c("TLS_RSA_WITH_AES_256_CBC_SHA256", 61);

    public static final C14589i f99279R = c("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", 64);

    public static final C14589i f99281S = c("TLS_RSA_WITH_CAMELLIA_128_CBC_SHA", 65);

    public static final C14589i f99283T = c("TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA", 68);

    public static final C14589i f99285U = c("TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA", 69);

    public static final C14589i f99287V = c("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", 103);

    public static final C14589i f99289W = c("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", 106);

    public static final C14589i f99291X = c("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", 107);

    public static final C14589i f99293Y = c("TLS_DH_anon_WITH_AES_128_CBC_SHA256", 108);

    public static final C14589i f99295Z = c("TLS_DH_anon_WITH_AES_256_CBC_SHA256", 109);

    public static final C14589i f99297a0 = c("TLS_RSA_WITH_CAMELLIA_256_CBC_SHA", 132);

    public static final C14589i f99300b0 = c("TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA", 135);

    public static final C14589i f99303c0 = c("TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA", 136);

    public static final C14589i f99306d0 = c("TLS_PSK_WITH_RC4_128_SHA", 138);

    public static final C14589i f99309e0 = c("TLS_PSK_WITH_3DES_EDE_CBC_SHA", 139);

    public static final C14589i f99312f0 = c("TLS_PSK_WITH_AES_128_CBC_SHA", 140);

    public static final C14589i f99315g0 = c("TLS_PSK_WITH_AES_256_CBC_SHA", 141);

    public static final C14589i f99318h0 = c("TLS_RSA_WITH_SEED_CBC_SHA", 150);

    public static final C14589i f99321i0 = c("TLS_RSA_WITH_AES_128_GCM_SHA256", 156);

    public static final C14589i f99324j0 = c("TLS_RSA_WITH_AES_256_GCM_SHA384", 157);

    public static final C14589i f99327k0 = c("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", 158);

    public static final C14589i f99330l0 = c("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", 159);

    public static final C14589i f99333m0 = c("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", 162);

    public static final C14589i f99336n0 = c("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", 163);

    public static final C14589i f99339o0 = c("TLS_DH_anon_WITH_AES_128_GCM_SHA256", 166);

    public static final C14589i f99342p0 = c("TLS_DH_anon_WITH_AES_256_GCM_SHA384", 167);

    public static final C14589i f99345q0 = c("TLS_EMPTY_RENEGOTIATION_INFO_SCSV", 255);

    public static final C14589i f99348r0 = c("TLS_FALLBACK_SCSV", 22016);

    public static final C14589i f99351s0 = c("TLS_ECDH_ECDSA_WITH_NULL_SHA", AL.AL_DOPPLER_VELOCITY);

    public static final C14589i f99353t0 = c("TLS_ECDH_ECDSA_WITH_RC4_128_SHA", InputDevice.SOURCE_BLUETOOTH_STYLUS);

    public static final C14589i f99355u0 = c("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", AL.AL_SPEED_OF_SOUND);

    public static final C14589i f99357v0 = c("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", 49156);

    public static final C14589i f99359w0 = c("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", 49157);

    public static final C14589i f99361x0 = c("TLS_ECDHE_ECDSA_WITH_NULL_SHA", 49158);

    public static final C14589i f99363y0 = c("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", 49159);

    public static final C14589i f99365z0 = c("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", 49160);

    public static final C14589i f99246A0 = c("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", 49161);

    public static final C14589i f99248B0 = c("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", 49162);

    public static final C14589i f99250C0 = c("TLS_ECDH_RSA_WITH_NULL_SHA", 49163);

    public static final C14589i f99252D0 = c("TLS_ECDH_RSA_WITH_RC4_128_SHA", 49164);

    public static final C14589i f99254E0 = c("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", 49165);

    public static final C14589i f99256F0 = c("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", 49166);

    public static final C14589i f99258G0 = c("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", 49167);

    public static final C14589i f99260H0 = c("TLS_ECDHE_RSA_WITH_NULL_SHA", 49168);

    public static final C14589i f99262I0 = c("TLS_ECDHE_RSA_WITH_RC4_128_SHA", 49169);

    public static final C14589i f99264J0 = c("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", 49170);

    public static final C14589i f99266K0 = c("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", 49171);

    public static final C14589i f99268L0 = c("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", 49172);

    public static final C14589i f99270M0 = c("TLS_ECDH_anon_WITH_NULL_SHA", 49173);

    public static final C14589i f99272N0 = c("TLS_ECDH_anon_WITH_RC4_128_SHA", 49174);

    public static final C14589i f99274O0 = c("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", 49175);

    public static final C14589i f99276P0 = c("TLS_ECDH_anon_WITH_AES_128_CBC_SHA", 49176);

    public static final C14589i f99278Q0 = c("TLS_ECDH_anon_WITH_AES_256_CBC_SHA", 49177);

    public static final C14589i f99280R0 = c("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", 49187);

    public static final C14589i f99282S0 = c("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", 49188);

    public static final C14589i f99284T0 = c("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", 49189);

    public static final C14589i f99286U0 = c("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", 49190);

    public static final C14589i f99288V0 = c("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", 49191);

    public static final C14589i f99290W0 = c("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", 49192);

    public static final C14589i f99292X0 = c("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", 49193);

    public static final C14589i f99294Y0 = c("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", 49194);

    public static final C14589i f99296Z0 = c("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", 49195);

    public static final C14589i f99298a1 = c("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", 49196);

    public static final C14589i f99301b1 = c("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", 49197);

    public static final C14589i f99304c1 = c("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", 49198);

    public static final C14589i f99307d1 = c("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", 49199);

    public static final C14589i f99310e1 = c("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", 49200);

    public static final C14589i f99313f1 = c("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", 49201);

    public static final C14589i f99316g1 = c("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", 49202);

    public static final C14589i f99319h1 = c("TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA", 49205);

    public static final C14589i f99322i1 = c("TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA", 49206);

    public static final C14589i f99325j1 = c("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52392);

    public static final C14589i f99328k1 = c("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", 52393);

    public static final C14589i f99331l1 = c("TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52394);

    public static final C14589i f99334m1 = c("TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256", 52396);

    public static final C14589i f99337n1 = c("TLS_AES_128_GCM_SHA256", 4865);

    public static final C14589i f99340o1 = c("TLS_AES_256_GCM_SHA384", 4866);

    public static final C14589i f99343p1 = c("TLS_CHACHA20_POLY1305_SHA256", 4867);

    public static final C14589i f99346q1 = c("TLS_AES_128_CCM_SHA256", 4868);

    public static final C14589i f99349r1 = c("TLS_AES_256_CCM_8_SHA256", 4869);

    public class a implements Comparator<String> {
        @Override
        public int compare(String str, String str2) {
            int min = Math.min(str.length(), str2.length());
            for (int i10 = 4; i10 < min; i10++) {
                char charAt = str.charAt(i10);
                char charAt2 = str2.charAt(i10);
                if (charAt != charAt2) {
                    return charAt < charAt2 ? -1 : 1;
                }
            }
            int length = str.length();
            int length2 = str2.length();
            if (length != length2) {
                return length < length2 ? -1 : 1;
            }
            return 0;
        }
    }

    public C14589i(String str) {
        str.getClass();
        this.f99366a = str;
    }

    public static synchronized C14589i a(String str) {
        C14589i c14589i;
        synchronized (C14589i.class) {
            try {
                Map<String, C14589i> map = f99302c;
                c14589i = map.get(str);
                if (c14589i == null) {
                    c14589i = map.get(e(str));
                    if (c14589i == null) {
                        c14589i = new C14589i(str);
                    }
                    map.put(str, c14589i);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return c14589i;
    }

    public static List<C14589i> b(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(a(str));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static C14589i c(String str, int i10) {
        C14589i c14589i = new C14589i(str);
        f99302c.put(str, c14589i);
        return c14589i;
    }

    public static String e(String str) {
        if (str.startsWith("TLS_")) {
            return "SSL_" + str.substring(4);
        }
        if (!str.startsWith("SSL_")) {
            return str;
        }
        return "TLS_" + str.substring(4);
    }

    public String d() {
        return this.f99366a;
    }

    public String toString() {
        return this.f99366a;
    }
}
