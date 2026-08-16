package dk;

import java.io.IOException;
import java.security.AlgorithmParameters;
import oh.B;
import oh.InterfaceC14516g;

public class C12945a {
    public static InterfaceC14516g a(AlgorithmParameters algorithmParameters) throws IOException {
        try {
            return B.B(algorithmParameters.getEncoded("ASN.1"));
        } catch (Exception unused) {
            return B.B(algorithmParameters.getEncoded());
        }
    }

    public static void b(AlgorithmParameters algorithmParameters, InterfaceC14516g interfaceC14516g) throws IOException {
        try {
            algorithmParameters.init(interfaceC14516g.r().getEncoded(), "ASN.1");
        } catch (Exception unused) {
            algorithmParameters.init(interfaceC14516g.r().getEncoded());
        }
    }
}
