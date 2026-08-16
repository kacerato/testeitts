package wg;

import java.io.ByteArrayOutputStream;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public class C15999b implements f {

    public Mac f127461a;

    public int f127462b;

    public String f127463c;

    public ByteArrayOutputStream f127464d = new ByteArrayOutputStream(4096);

    public C15999b(String str) {
        this.f127463c = str;
        try {
            Mac mac = Mac.getInstance(str);
            this.f127461a = mac;
            this.f127462b = mac.getMacLength();
        } catch (NoSuchAlgorithmException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override
    public void a(byte[] bArr) {
        try {
            this.f127461a.init(new SecretKeySpec(bArr, this.f127463c));
        } catch (InvalidKeyException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override
    public int b() {
        return this.f127462b;
    }

    @Override
    public byte[] c(byte[] bArr) {
        if (this.f127464d.size() > 0) {
            f(0);
        }
        return this.f127461a.doFinal(bArr);
    }

    public byte[] d() {
        return e(0);
    }

    public byte[] e(int i10) {
        if (this.f127464d.size() > 0) {
            f(i10);
        }
        return this.f127461a.doFinal();
    }

    public final void f(int i10) {
        byte[] byteArray = this.f127464d.toByteArray();
        int length = byteArray.length - i10;
        int i11 = 0;
        while (i11 < length) {
            int i12 = i11 + 16;
            this.f127461a.update(byteArray, i11, i12 <= length ? 16 : length - i11);
            i11 = i12;
        }
        this.f127464d.reset();
    }

    public void g(byte[] bArr) {
        h(bArr, 0, bArr.length);
    }

    public void h(byte[] bArr, int i10, int i11) {
        try {
            if (this.f127464d.size() + i11 > 4096) {
                f(0);
            }
            this.f127464d.write(bArr, i10, i11);
        } catch (IllegalStateException e10) {
            throw new RuntimeException(e10);
        }
    }
}
