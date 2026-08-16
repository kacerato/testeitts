package hf;

import com.jme3.shader.Shader;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

public class C13471a implements InterfaceC13474d {

    public static final Logger f90499a = Logger.getLogger(C13471a.class.getName());

    public static String f90500b;

    public static class C1744a {

        public static final int[] f90501a;

        static {
            int[] iArr = new int[Shader.ShaderType.values().length];
            f90501a = iArr;
            try {
                iArr[Shader.ShaderType.Fragment.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f90501a[Shader.ShaderType.Vertex.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static String d() {
        try {
            Process start = new ProcessBuilder("cgc", "--version").start();
            Scanner scanner = new Scanner(start.getErrorStream());
            String nextLine = scanner.nextLine();
            scanner.close();
            start.waitFor();
            return nextLine.split("\\s")[2].substring(0, r0.length() - 1);
        } catch (IOException e10) {
            f90499a.log(Level.SEVERE, "IOEx", (Throwable) e10);
            return null;
        } catch (InterruptedException unused) {
            return null;
        }
    }

    public static void e(String str, String str2, String str3, String str4, StringBuilder sb2) {
        try {
            Process start = new ProcessBuilder("cgc", "-oglsl", "-nocode", "-strict", "-glslWerror", "-profile", str4, "-po", "NumTemps=32", "-po", "MaxLocalParams=32").start();
            String substring = str2.substring(4);
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(start.getOutputStream());
            outputStreamWriter.append((CharSequence) "#version ").append((CharSequence) substring).append('\n');
            outputStreamWriter.append((CharSequence) "#extension all : warn").append('\n');
            outputStreamWriter.append((CharSequence) str3).append('\n');
            outputStreamWriter.write(str);
            outputStreamWriter.close();
            Scanner scanner = new Scanner(start.getErrorStream());
            String nextLine = scanner.nextLine();
            if (nextLine.contains("0 errors")) {
                sb2.append(" - Success!");
                sb2.append('\n');
            } else {
                sb2.append(" - Failure!");
                sb2.append('\n');
                sb2.append(nextLine);
                sb2.append('\n');
                while (scanner.hasNextLine()) {
                    sb2.append(scanner.nextLine());
                    sb2.append('\n');
                }
            }
            scanner.close();
            start.waitFor();
        } catch (IOException e10) {
            f90499a.log(Level.SEVERE, "IOEx", (Throwable) e10);
        } catch (InterruptedException unused) {
        }
    }

    @Override
    public String a() {
        if (f90500b == null) {
            f90500b = d();
        }
        return f90500b;
    }

    @Override
    public void b(Shader shader, StringBuilder sb2) {
        for (Shader.ShaderSource shaderSource : shader.getSources()) {
            sb2.append("Checking: ");
            sb2.append(shaderSource.getName());
            int i10 = C1744a.f90501a[shaderSource.getType().ordinal()];
            if (i10 == 1) {
                e(shaderSource.getSource(), shaderSource.getLanguage(), shaderSource.getDefines(), "arbfp1", sb2);
            } else if (i10 == 2) {
                e(shaderSource.getSource(), shaderSource.getLanguage(), shaderSource.getDefines(), "arbvp1", sb2);
            }
        }
    }

    @Override
    public boolean c() {
        return a() != null;
    }

    @Override
    public String getName() {
        return "NVIDIA Cg Toolkit";
    }
}
