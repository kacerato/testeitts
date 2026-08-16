package vk;

import com.tonyodev.fetch2core.server.FileResponse;
import fd.C13208a;
import hi.C13486b;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import li.C14146h;
import oh.C14549x;
import org.bouncycastle.cms.C14624c;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.L0;
import org.bouncycastle.cms.S;
import org.bouncycastle.util.t;
import org.bouncycastle.util.w;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import tk.C15468e;
import tk.m;
import uk.C15640b;

public class C15857b extends m {

    public static final Map f121651f;

    public static final Map f121652g;

    public static final Map f121653h;

    public final S f121654b;

    public final String f121655c;

    public final OutputStream f121656d;

    public final String f121657e;

    public static class C2075b {

        public static final String[] f121658f = {"Content-Type"};

        public static final String[] f121659g = {"multipart/signed; protocol=\"application/pkcs7-signature\""};

        public static final String[] f121660h = {"Content-Type", F2.d.f6218a0, "Content-Transfer-Encoding", "Content-Description"};

        public static final String[] f121661i = {"application/pkcs7-mime; name=\"smime.p7m\"; smime-type=enveloped-data", "attachment; filename=\"smime.p7m\"", "base64", "S/MIME Signed Message"};

        public final S f121662a;

        public final Map<String, String> f121663b;

        public final boolean f121664c;

        public final Map f121665d;

        public String f121666e;

        public C2075b() {
            this(false);
        }

        public final void b(StringBuffer stringBuffer, String str) {
            stringBuffer.append(";\r\n\tboundary=\"");
            stringBuffer.append(str);
            stringBuffer.append(JavadocConstants.ANCHOR_PREFIX_END);
        }

        public C2075b c(C14146h c14146h) throws CMSException {
            this.f121662a.e(c14146h);
            return this;
        }

        public C2075b d(t tVar) throws CMSException {
            this.f121662a.f(tVar);
            return this;
        }

        public final void e(StringBuffer stringBuffer, List list) {
            Iterator it = list.iterator();
            TreeSet<String> treeSet = new TreeSet();
            while (it.hasNext()) {
                String str = (String) this.f121665d.get(((C13486b) it.next()).u());
                if (str == null) {
                    str = "unknown";
                }
                treeSet.add(str);
            }
            int i10 = 0;
            for (String str2 : treeSet) {
                if (i10 == 0) {
                    stringBuffer.append(treeSet.size() != 1 ? "; micalg=\"" : "; micalg=");
                } else {
                    stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                }
                stringBuffer.append(str2);
                i10++;
            }
            if (i10 == 0 || treeSet.size() == 1) {
                return;
            }
            stringBuffer.append('\"');
        }

        public C2075b f(L0 l02) {
            this.f121662a.i(l02);
            return this;
        }

        public C15857b g(OutputStream outputStream) {
            String h10;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            int i10 = 0;
            if (!this.f121664c) {
                h10 = h();
                StringBuffer stringBuffer = new StringBuffer(f121659g[0]);
                e(stringBuffer, this.f121662a.o());
                b(stringBuffer, h10);
                linkedHashMap.put(f121658f[0], stringBuffer.toString());
                int i11 = 1;
                while (true) {
                    String[] strArr = f121658f;
                    if (i11 >= strArr.length) {
                        break;
                    }
                    linkedHashMap.put(strArr[i11], f121659g[i11]);
                    i11++;
                }
            } else {
                while (true) {
                    String[] strArr2 = f121660h;
                    if (i10 == strArr2.length) {
                        break;
                    }
                    linkedHashMap.put(strArr2[i10], f121661i[i10]);
                    i10++;
                }
                h10 = null;
            }
            String str = h10;
            for (Map.Entry<String, String> entry : this.f121663b.entrySet()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
            return new C15857b(this, linkedHashMap, str, g.b(outputStream));
        }

        public final String h() {
            return "==" + new BigInteger(180, new SecureRandom()).setBit(179).toString(16) + "=";
        }

        public C2075b i(String str, String str2) {
            this.f121663b.put(str, str2);
            return this;
        }

        public C2075b(boolean z10) {
            this.f121662a = new S();
            this.f121663b = new LinkedHashMap();
            this.f121665d = C15857b.f121653h;
            this.f121666e = "base64";
            this.f121664c = z10;
        }
    }

    public class c extends OutputStream {

        public final OutputStream f121667b;

        public final OutputStream f121668c;

        public final ByteArrayOutputStream f121669d;

        public final OutputStream f121670e;

        public c(OutputStream outputStream, OutputStream outputStream2, ByteArrayOutputStream byteArrayOutputStream, OutputStream outputStream3) {
            this.f121667b = outputStream;
            this.f121668c = outputStream2;
            this.f121669d = byteArrayOutputStream;
            this.f121670e = outputStream3;
        }

        @Override
        public void close() throws IOException {
            if (C15857b.this.f121655c != null) {
                this.f121667b.close();
                this.f121668c.write(w.j("\r\n--"));
                this.f121668c.write(w.j(C15857b.this.f121655c));
                this.f121668c.write(w.j(C13208a.f86201f));
                this.f121668c.write(w.j("Content-Type: application/pkcs7-signature; name=\"smime.p7s\"\r\n"));
                this.f121668c.write(w.j("Content-Transfer-Encoding: base64\r\n"));
                this.f121668c.write(w.j("Content-Disposition: attachment; filename=\"smime.p7s\"\r\n"));
                this.f121668c.write(w.j(C13208a.f86201f));
                OutputStream outputStream = this.f121670e;
                if (outputStream != null) {
                    outputStream.close();
                }
                this.f121668c.write(this.f121669d.toByteArray());
                this.f121668c.write(w.j("\r\n--"));
                this.f121668c.write(w.j(C15857b.this.f121655c));
                this.f121668c.write(w.j("--\r\n"));
            }
            OutputStream outputStream2 = this.f121668c;
            if (outputStream2 != null) {
                outputStream2.close();
            }
        }

        @Override
        public void write(int i10) throws IOException {
            this.f121667b.write(i10);
        }

        @Override
        public void write(byte[] bArr) throws IOException {
            this.f121667b.write(bArr);
        }

        @Override
        public void write(byte[] bArr, int i10, int i11) throws IOException {
            this.f121667b.write(bArr, i10, i11);
        }
    }

    static {
        HashMap hashMap = new HashMap();
        C14549x c14549x = C14624c.f100700h0;
        hashMap.put(c14549x, FileResponse.FIELD_MD5);
        C14549x c14549x2 = C14624c.f100690c0;
        hashMap.put(c14549x2, "sha-1");
        C14549x c14549x3 = C14624c.f100692d0;
        hashMap.put(c14549x3, "sha-224");
        C14549x c14549x4 = C14624c.f100694e0;
        hashMap.put(c14549x4, "sha-256");
        C14549x c14549x5 = C14624c.f100696f0;
        hashMap.put(c14549x5, "sha-384");
        C14549x c14549x6 = C14624c.f100698g0;
        hashMap.put(c14549x6, "sha-512");
        C14549x c14549x7 = C14624c.f100702i0;
        hashMap.put(c14549x7, "gostr3411-94");
        C14549x c14549x8 = C14624c.f100704j0;
        hashMap.put(c14549x8, "gostr3411-2012-256");
        C14549x c14549x9 = C14624c.f100706k0;
        hashMap.put(c14549x9, "gostr3411-2012-512");
        Map unmodifiableMap = Collections.unmodifiableMap(hashMap);
        f121652g = unmodifiableMap;
        HashMap hashMap2 = new HashMap();
        hashMap2.put(c14549x, FileResponse.FIELD_MD5);
        hashMap2.put(c14549x2, "sha1");
        hashMap2.put(c14549x3, "sha224");
        hashMap2.put(c14549x4, "sha256");
        hashMap2.put(c14549x5, "sha384");
        hashMap2.put(c14549x6, "sha512");
        hashMap2.put(c14549x7, "gostr3411-94");
        hashMap2.put(c14549x8, "gostr3411-2012-256");
        hashMap2.put(c14549x9, "gostr3411-2012-512");
        f121651f = Collections.unmodifiableMap(hashMap2);
        f121653h = unmodifiableMap;
    }

    public C15857b(C2075b c2075b, Map<String, String> map, String str, OutputStream outputStream) {
        super(new C15468e(m.c(map), c2075b.f121666e));
        this.f121654b = c2075b.f121662a;
        this.f121657e = c2075b.f121666e;
        this.f121655c = str;
        this.f121656d = outputStream;
    }

    @Override
    public OutputStream a() throws IOException {
        this.f117725a.c(this.f121656d);
        this.f121656d.write(w.j(C13208a.f86201f));
        if (this.f121655c == null) {
            return null;
        }
        this.f121656d.write(w.j("This is an S/MIME signed message\r\n"));
        this.f121656d.write(w.j("\r\n--"));
        this.f121656d.write(w.j(this.f121655c));
        this.f121656d.write(w.j(C13208a.f86201f));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        C15640b c15640b = new C15640b(byteArrayOutputStream);
        return new c(this.f121654b.r(c15640b, false, g.c(this.f121656d)), this.f121656d, byteArrayOutputStream, c15640b);
    }
}
