package Ic;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

public class C2636o {

    public interface a {
        boolean a(String line);
    }

    public static void a(String text, File file) throws IOException {
        if (text == null) {
            text = "";
        }
        File parentFile = file.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        if (file.exists()) {
            file.delete();
        }
        file.createNewFile();
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file));
        outputStreamWriter.write(text);
        outputStreamWriter.flush();
        outputStreamWriter.close();
    }

    public static String b(F file) {
        return X7.a.s(file.b(), N7.c.t());
    }

    public static String c(File file) throws IOException {
        if (!file.exists()) {
            throw new FileNotFoundException();
        }
        StringBuffer stringBuffer = new StringBuffer("");
        FileInputStream fileInputStream = new FileInputStream(file);
        InputStreamReader inputStreamReader = new InputStreamReader(fileInputStream);
        BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
        String readLine = bufferedReader.readLine();
        int i10 = 0;
        while (readLine != null) {
            if (i10 > 0) {
                stringBuffer.append("\n");
            }
            stringBuffer.append(readLine);
            readLine = bufferedReader.readLine();
            i10++;
        }
        bufferedReader.close();
        inputStreamReader.close();
        fileInputStream.close();
        return stringBuffer.toString();
    }

    public static String d(InputStream file) {
        try {
            StringBuffer stringBuffer = new StringBuffer("");
            InputStreamReader inputStreamReader = new InputStreamReader(file);
            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
            String readLine = bufferedReader.readLine();
            int i10 = 0;
            while (readLine != null) {
                if (i10 > 0) {
                    stringBuffer.append("\n");
                }
                stringBuffer.append(readLine);
                readLine = bufferedReader.readLine();
                i10++;
            }
            bufferedReader.close();
            inputStreamReader.close();
            return stringBuffer.toString();
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static void e(String text, File file) {
        if (text == null) {
            text = "";
        }
        File parentFile = file.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        try {
            if (file.exists()) {
                file.delete();
            }
            file.createNewFile();
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file));
            outputStreamWriter.write(text);
            outputStreamWriter.flush();
            outputStreamWriter.close();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void f(String[] text, File file) {
        File parentFile = file.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        try {
            if (file.exists()) {
                file.delete();
            }
            file.createNewFile();
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file));
            int i10 = 0;
            for (String str : text) {
                if (i10 > 0) {
                    outputStreamWriter.write("\n");
                }
                outputStreamWriter.write(str);
                i10++;
            }
            outputStreamWriter.flush();
            outputStreamWriter.close();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static String g(File file) {
        if (!file.exists()) {
            return null;
        }
        try {
            StringBuffer stringBuffer = new StringBuffer("");
            FileInputStream fileInputStream = new FileInputStream(file);
            InputStreamReader inputStreamReader = new InputStreamReader(fileInputStream);
            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
            String readLine = bufferedReader.readLine();
            int i10 = 0;
            while (readLine != null) {
                if (i10 > 0) {
                    stringBuffer.append("\n");
                }
                stringBuffer.append(readLine);
                readLine = bufferedReader.readLine();
                i10++;
            }
            bufferedReader.close();
            inputStreamReader.close();
            fileInputStream.close();
            return stringBuffer.toString();
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static String h(InputStream file) {
        try {
            StringBuffer stringBuffer = new StringBuffer("");
            InputStreamReader inputStreamReader = new InputStreamReader(file);
            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
            String readLine = bufferedReader.readLine();
            int i10 = 0;
            while (readLine != null) {
                if (i10 > 0) {
                    stringBuffer.append("\n");
                }
                stringBuffer.append(readLine);
                readLine = bufferedReader.readLine();
                i10++;
            }
            bufferedReader.close();
            inputStreamReader.close();
            return stringBuffer.toString();
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static void i(InputStream file, a stream) {
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(file);
            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
            for (String readLine = bufferedReader.readLine(); readLine != null && stream.a(readLine); readLine = bufferedReader.readLine()) {
            }
            bufferedReader.close();
            inputStreamReader.close();
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }
}
