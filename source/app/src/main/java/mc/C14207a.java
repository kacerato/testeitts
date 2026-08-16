package mc;

import Ic.E;
import android.content.res.AssetManager;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;

public class C14207a {
    public static String a(String file) {
        AssetManager assets = N7.c.t().getAssets();
        String str = "";
        String str2 = "Engine/Graphics/" + file;
        try {
            StringBuffer stringBuffer = new StringBuffer("");
            InputStreamReader inputStreamReader = new InputStreamReader(assets.open(str2));
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
            str = stringBuffer.toString();
        } catch (FileNotFoundException e10) {
            throw new RuntimeException(e10);
        } catch (IOException e11) {
            e11.printStackTrace();
        }
        return b(str);
    }

    public static String b(String loadedTextFile) {
        return E.a(loadedTextFile);
    }
}
