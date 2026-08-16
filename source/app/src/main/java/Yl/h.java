package Yl;

import java.math.BigInteger;

public class h extends k {

    public BigInteger f30641c;

    public h(b bVar, BigInteger bigInteger, BigInteger bigInteger2) {
        super(bVar, bigInteger);
        this.f30641c = bigInteger2;
    }

    public static h a(h hVar, h hVar2) {
        BigInteger bigInteger = hVar.f30641c;
        BigInteger bigInteger2 = hVar2.f30641c;
        BigInteger multiply = bigInteger.multiply(bigInteger2);
        Xl.a a10 = Xl.a.a(bigInteger2, bigInteger);
        b bVar = (b) hVar.f30645a.clone();
        bVar.l(a10.f29647a.multiply(bigInteger2));
        b bVar2 = (b) hVar2.f30645a.clone();
        bVar2.l(a10.f29648b.multiply(bigInteger));
        bVar.a(bVar2);
        bVar.i(multiply);
        return new h(bVar, null, multiply);
    }
}
