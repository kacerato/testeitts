
import java.io.*;
import java.security.*;
import java.security.cert.*;
import java.util.*;

public class TestSigner {
    public static void main(String[] args) throws Exception {
        System.out.println("Available Providers:");
        for (Provider p : Security.getProviders()) {
            System.out.println(" - " + p.getName() + " (v" + p.getVersion() + ")");
        }
        
        KeyPairGenerator kpg = KeyPairGenerator.getInstance("RSA");
        kpg.initialize(2048);
        KeyPair kp = kpg.generateKeyPair();
        
        Signature sig = Signature.getInstance("SHA256withRSA");
        sig.initSign(kp.getPrivate());
        sig.update("hello".getBytes());
        byte[] s = sig.sign();
        System.out.println("Signature successful: " + s.length + " bytes");
    }
}
