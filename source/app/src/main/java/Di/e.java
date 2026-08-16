package Di;

import java.math.BigInteger;

public class e {

    public final String f5227a;

    public final BigInteger f5228b;

    public final BigInteger[] f5229c;

    public e(String str, BigInteger bigInteger, BigInteger[] bigIntegerArr) {
        g.y(str, "participantId");
        g.y(bigInteger, "a");
        g.y(bigIntegerArr, "knowledgeProofForX2s");
        this.f5227a = str;
        this.f5228b = bigInteger;
        this.f5229c = org.bouncycastle.util.a.U(bigIntegerArr, bigIntegerArr.length);
    }

    public BigInteger a() {
        return this.f5228b;
    }

    public BigInteger[] b() {
        BigInteger[] bigIntegerArr = this.f5229c;
        return org.bouncycastle.util.a.U(bigIntegerArr, bigIntegerArr.length);
    }

    public String c() {
        return this.f5227a;
    }
}
