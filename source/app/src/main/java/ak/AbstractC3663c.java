package ak;

import java.security.AlgorithmParametersSpi;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;

public abstract class AbstractC3663c extends AlgorithmParametersSpi {
    public boolean a(String str) {
        return str == null || str.equals("ASN.1");
    }

    public abstract AlgorithmParameterSpec b(Class cls) throws InvalidParameterSpecException;

    @Override
    public AlgorithmParameterSpec engineGetParameterSpec(Class cls) throws InvalidParameterSpecException {
        if (cls != null) {
            return b(cls);
        }
        throw new NullPointerException("argument to getParameterSpec must not be null");
    }
}
