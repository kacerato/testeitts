package Xl;

import java.math.BigInteger;

public class a {

    public BigInteger f29647a;

    public BigInteger f29648b;

    public BigInteger f29649c;

    public static a a(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger bigInteger3 = BigInteger.ZERO;
        BigInteger bigInteger4 = BigInteger.ONE;
        BigInteger bigInteger5 = bigInteger4;
        BigInteger bigInteger6 = bigInteger3;
        BigInteger bigInteger7 = bigInteger;
        BigInteger bigInteger8 = bigInteger2;
        while (!bigInteger8.equals(BigInteger.ZERO)) {
            BigInteger[] divideAndRemainder = bigInteger7.divideAndRemainder(bigInteger8);
            BigInteger bigInteger9 = divideAndRemainder[0];
            BigInteger bigInteger10 = divideAndRemainder[1];
            BigInteger subtract = bigInteger5.subtract(bigInteger9.multiply(bigInteger6));
            bigInteger7 = bigInteger8;
            bigInteger8 = bigInteger10;
            BigInteger bigInteger11 = bigInteger4;
            bigInteger4 = bigInteger3.subtract(bigInteger9.multiply(bigInteger4));
            bigInteger3 = bigInteger11;
            bigInteger5 = bigInteger6;
            bigInteger6 = subtract;
        }
        a aVar = new a();
        aVar.f29647a = bigInteger5;
        aVar.f29648b = bigInteger3;
        aVar.f29649c = bigInteger7;
        return aVar;
    }
}
