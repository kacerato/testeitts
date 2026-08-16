package hf;

import com.jme3.shader.Shader;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

public class C13472b implements InterfaceC13474d {

    public static final Logger f90502a = Logger.getLogger(C13471a.class.getName());

    public static String f90503b;

    public static class a {

        public static final int[] f90504a;

        static {
            int[] iArr = new int[Shader.ShaderType.values().length];
            f90504a = iArr;
            try {
                iArr[Shader.ShaderType.Fragment.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f90504a[Shader.ShaderType.Vertex.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static String d() {
        try {
            Process start = new ProcessBuilder("GPUShaderAnalyzer", "-ListModules").start();
            Scanner scanner = new Scanner(start.getInputStream());
            String nextLine = scanner.nextLine();
            scanner.close();
            start.destroy();
            return nextLine;
        } catch (IOException e10) {
            f90502a.log(Level.SEVERE, "IOEx", (Throwable) e10);
            return null;
        }
    }

    public static void e(String str, String str2, String str3, String str4, StringBuilder sb2) {
        try {
            File createTempFile = File.createTempFile("test_shader", ".glsl");
            FileWriter fileWriter = new FileWriter(createTempFile);
            fileWriter.append((CharSequence) "#version ").append((CharSequence) str2.substring(4)).append('\n');
            fileWriter.append((CharSequence) "#extension all : warn").append('\n');
            fileWriter.append((CharSequence) str3).append('\n');
            fileWriter.write(str);
            fileWriter.close();
            Process start = new ProcessBuilder("GPUShaderAnalyzer", createTempFile.getAbsolutePath(), "-I", "-ASIC", str4).start();
            Scanner scanner = new Scanner(start.getInputStream());
            if (!scanner.hasNextLine()) {
                System.out.println(scanner.next());
            }
            String nextLine = scanner.nextLine();
            if (nextLine.startsWith(";")) {
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
            start.getOutputStream().close();
            start.getErrorStream().close();
            start.waitFor();
            start.destroy();
            createTempFile.delete();
        } catch (IOException e10) {
            f90502a.log(Level.SEVERE, "IOEx", (Throwable) e10);
        } catch (InterruptedException unused) {
        }
    }

    @Override
    public String a() {
        if (f90503b == null) {
            f90503b = d();
        }
        return f90503b;
    }

    @Override
    public void b(Shader shader, StringBuilder sb2) {
        for (Shader.ShaderSource shaderSource : shader.getSources()) {
            sb2.append("Checking: ");
            sb2.append(shaderSource.getName());
            int i10 = a.f90504a[shaderSource.getType().ordinal()];
            if (i10 == 1) {
                e(shaderSource.getSource(), shaderSource.getLanguage(), shaderSource.getDefines(), "HD5770", sb2);
            } else if (i10 == 2) {
                e(shaderSource.getSource(), shaderSource.getLanguage(), shaderSource.getDefines(), "HD5770", sb2);
            }
        }
    }

    @Override
    public boolean c() {
        return a() != null;
    }

    @Override
    public String getName() {
        return "AMD GPU Shader Analyzer";
    }
}
