import os, subprocess

# Let's test standard Java / Android signing without setProvider(BC)
test_src = r"""
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
"""

with open(r"C:\Users\donod\Downloads\itsmaagic\work\TestSigner.java", "w", encoding="utf-8") as f:
    f.write(test_src)

r = subprocess.run(["javac", r"C:\Users\donod\Downloads\itsmaagic\work\TestSigner.java"], capture_output=True, text=True)
print("javac:", r.returncode, r.stderr)
r2 = subprocess.run(["java", "-cp", r"C:\Users\donod\Downloads\itsmaagic\work", "TestSigner"], capture_output=True, text=True)
print("output:\n", r2.stdout)
