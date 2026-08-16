package Di;

import java.math.BigInteger;

public class d {

    public final String f5222a;

    public final BigInteger f5223b;

    public final BigInteger f5224c;

    public final BigInteger[] f5225d;

    public final BigInteger[] f5226e;

    public d(String str, BigInteger bigInteger, BigInteger bigInteger2, BigInteger[] bigIntegerArr, BigInteger[] bigIntegerArr2) {
        g.y(str, "participantId");
        g.y(bigInteger, "gx1");
        g.y(bigInteger2, "gx2");
        g.y(bigIntegerArr, "knowledgeProofForX1");
        g.y(bigIntegerArr2, "knowledgeProofForX2");
        this.f5222a = str;
        this.f5223b = bigInteger;
        this.f5224c = bigInteger2;
        this.f5225d = org.bouncycastle.util.a.U(bigIntegerArr, bigIntegerArr.length);
        this.f5226e = org.bouncycastle.util.a.U(bigIntegerArr2, bigIntegerArr2.length);
    }

    public BigInteger a() {
        return this.f5223b;
    }

    public BigInteger b() {
        return this.f5224c;
    }

    public BigInteger[] c() {
        BigInteger[] bigIntegerArr = this.f5225d;
        return org.bouncycastle.util.a.U(bigIntegerArr, bigIntegerArr.length);
    }

    public BigInteger[] d() {
        BigInteger[] bigIntegerArr = this.f5226e;
        return org.bouncycastle.util.a.U(bigIntegerArr, bigIntegerArr.length);
    }

    public String e() {
        return this.f5222a;
    }
}
