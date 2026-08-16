package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.StrictMode;
import android.util.Log;
import androidx.collection.SimpleArrayMap;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;

public final class C12090i4 {

    public static volatile w2.C f62326a;

    /* JADX WARN: Can't wrap try/catch for region: R(18:8|(4:10|(1:12)|13|14)|15|(4:17|(1:19)|13|14)|20|(1:90)(1:24)|25|26|27|28|29|30|31|(1:33)(1:82)|34|(9:36|37|38|39|40|(2:41|(3:43|(3:58|59|60)(7:45|46|(2:48|(1:51))|52|(1:54)|55|56)|57)(1:61))|62|63|64)(1:81)|65|14) */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0078, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0079, code lost:
    
        android.util.Log.e("HermeticFileOverrides", "no data dir", r0);
        r0 = w2.C.a();
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static w2.C a(Context context) {
        StrictMode.ThreadPolicy allowThreadDiskReads;
        w2.C c10 = f62326a;
        if (c10 == null) {
            synchronized (C12090i4.class) {
                try {
                    c10 = f62326a;
                    if (c10 == null) {
                        String str = Build.TYPE;
                        String str2 = Build.TAGS;
                        int i10 = C12117l4.f62355b;
                        if (!str.equals("eng")) {
                            if (str.equals("userdebug")) {
                            }
                            c10 = w2.C.a();
                            f62326a = c10;
                        }
                        if (!str2.contains("dev-keys")) {
                            if (str2.contains("test-keys")) {
                            }
                            c10 = w2.C.a();
                            f62326a = c10;
                        }
                        Context createDeviceProtectedStorageContext = (!W3.a() || context.isDeviceProtectedStorage()) ? context : context.createDeviceProtectedStorageContext();
                        allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                        StrictMode.allowThreadDiskWrites();
                        char c11 = 0;
                        File file = new File(createDeviceProtectedStorageContext.getDir("phenotype_hermetic", 0), "overrides.txt");
                        w2.C a10 = file.exists() ? w2.C.f(file) : w2.C.a();
                        if (a10.e()) {
                            File file2 = (File) a10.d();
                            try {
                                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file2)));
                                try {
                                    SimpleArrayMap simpleArrayMap = new SimpleArrayMap();
                                    HashMap hashMap = new HashMap();
                                    while (true) {
                                        String readLine = bufferedReader.readLine();
                                        if (readLine == null) {
                                            break;
                                        }
                                        String[] split = readLine.split(" ", 3);
                                        if (split.length != 3) {
                                            StringBuilder sb2 = new StringBuilder(readLine.length() + 9);
                                            sb2.append("Invalid: ");
                                            sb2.append(readLine);
                                            Log.e("HermeticFileOverrides", sb2.toString());
                                        } else {
                                            String str3 = new String(split[c11]);
                                            String decode = Uri.decode(new String(split[1]));
                                            String str4 = (String) hashMap.get(split[2]);
                                            if (str4 == null) {
                                                String str5 = new String(split[2]);
                                                str4 = Uri.decode(str5);
                                                if (str4.length() < 1024 || str4 == str5) {
                                                    hashMap.put(str5, str4);
                                                }
                                            }
                                            SimpleArrayMap simpleArrayMap2 = (SimpleArrayMap) simpleArrayMap.get(str3);
                                            if (simpleArrayMap2 == null) {
                                                simpleArrayMap2 = new SimpleArrayMap();
                                                simpleArrayMap.put(str3, simpleArrayMap2);
                                            }
                                            simpleArrayMap2.put(decode, str4);
                                            c11 = 0;
                                        }
                                    }
                                    String obj = file2.toString();
                                    String packageName = createDeviceProtectedStorageContext.getPackageName();
                                    StringBuilder sb3 = new StringBuilder(obj.length() + 28 + String.valueOf(packageName).length());
                                    sb3.append("Parsed ");
                                    sb3.append(obj);
                                    sb3.append(" for Android package ");
                                    sb3.append(packageName);
                                    Log.w("HermeticFileOverrides", sb3.toString());
                                    C12036c4 c12036c4 = new C12036c4(simpleArrayMap);
                                    bufferedReader.close();
                                    c10 = w2.C.f(c12036c4);
                                } catch (Throwable th2) {
                                    try {
                                        bufferedReader.close();
                                        throw th2;
                                    } catch (Throwable th3) {
                                        th2.addSuppressed(th3);
                                        throw th2;
                                    }
                                }
                            } catch (IOException e10) {
                                throw new RuntimeException(e10);
                            }
                        } else {
                            c10 = w2.C.a();
                        }
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                        f62326a = c10;
                    }
                } catch (Throwable th4) {
                    StrictMode.setThreadPolicy(allowThreadDiskReads);
                    throw th4;
                } finally {
                }
            }
        }
        return c10;
    }
}
