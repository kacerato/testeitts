package org.bouncycastle.jcajce.provider.asymmetric.util;

import dk.C12947c;
import dk.InterfaceC12950f;
import java.security.AlgorithmParameterGeneratorSpi;
import java.security.AlgorithmParameters;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;

public abstract class b extends AlgorithmParameterGeneratorSpi {

    public final InterfaceC12950f f101327a = new C12947c();

    public final AlgorithmParameters a(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
        return this.f101327a.l(str);
    }
}
