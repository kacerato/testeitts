package Ic;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UncheckedIOException;
import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

public class C2635n {
    public static byte[] a(String input) {
        if (input == null || input.isEmpty()) {
            return new byte[0];
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            try {
                gZIPOutputStream.write(input.getBytes(StandardCharsets.UTF_8));
                gZIPOutputStream.close();
                return byteArrayOutputStream.toByteArray();
            } finally {
            }
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    public static String b(String input) {
        return Base64.getEncoder().encodeToString(a(input));
    }

    public static String c(byte[] data) {
        if (data == null || data.length == 0) {
            return "";
        }
        if (data.length < 2 || (data[0] & 255) != 31 || (data[1] & 255) != 139) {
            return new String(data, StandardCharsets.UTF_8);
        }
        try {
            GZIPInputStream gZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(data));
            try {
                InputStreamReader inputStreamReader = new InputStreamReader(gZIPInputStream, StandardCharsets.UTF_8);
                try {
                    BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
                    try {
                        StringBuilder sb2 = new StringBuilder();
                        char[] cArr = new char[4096];
                        while (true) {
                            int read = bufferedReader.read(cArr);
                            if (read == -1) {
                                String sb3 = sb2.toString();
                                bufferedReader.close();
                                inputStreamReader.close();
                                gZIPInputStream.close();
                                return sb3;
                            }
                            sb2.append(cArr, 0, read);
                        }
                    } finally {
                    }
                } catch (Throwable th2) {
                    try {
                        inputStreamReader.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                try {
                    gZIPInputStream.close();
                } catch (Throwable th5) {
                    th4.addSuppressed(th5);
                }
                throw th4;
            }
        } catch (IOException e10) {
            throw new UncheckedIOException("Falha ao descomprimir GZIP", e10);
        }
    }

    public static String d(String base64) {
        return (base64 == null || base64.isEmpty()) ? "" : c(Base64.getDecoder().decode(base64));
    }
}
