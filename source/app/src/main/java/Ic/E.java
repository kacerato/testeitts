package Ic;

import java.nio.charset.StandardCharsets;
import javax.crypto.SecretKey;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class E {

    public static final String f9019a = "f8YqV2tCym2TK2TTX5p3nP5n9f0Vft4mRadq3Ry8TaojSB2tksr0kSjOpC2jXwuSFSbPF1XVObXO441704AuFgcqwgv0dmK1y9kXGNSN72jQjyGN5bgJeMEmzkHM3lDVpeY8pXYmqGlRHT8qwBuGbNpkUwDhi6ig";

    public static final byte[] f9020b;

    public static final byte[] f9021c;

    public static final SecretKey f9022d;

    static {
        byte[] bytes = "ITsMagicSalt666".getBytes(StandardCharsets.UTF_8);
        f9020b = bytes;
        f9021c = new byte[]{17, 34, 51, Opcodes.OPC_fstore_1, Opcodes.OPC_castore, 102, Opcodes.OPC_dneg, 18, 52, Opcodes.OPC_sastore, 120, 9};
        try {
            f9022d = C2623b.c(f9019a, bytes);
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public static String a(String encryptedBase64) {
        try {
            return C2623b.b(encryptedBase64, f9022d, f9021c);
        } catch (Exception e10) {
            System.out.println("ENCRYPTED TEXT:" + encryptedBase64);
            throw new RuntimeException(e10);
        }
    }
}
