package com.google.android.gms.internal.auth;

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

public final class C11986t0 {

    public static volatile M0 f61843a;

    /* JADX WARN: Can't wrap try/catch for region: R(19:6|(5:8|(1:10)|11|12|13)|14|(5:16|(1:18)|11|12|13)|19|(1:23)|24|25|26|27|28|29|30|(1:32)(1:82)|33|(9:35|36|37|38|39|(2:40|(3:42|(3:57|58|59)(7:44|45|(2:47|(1:50))|51|(1:53)|54|55)|56)(1:60))|61|62|63)(1:81)|64|12|13) */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x006f, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0070, code lost:
    
        android.util.Log.e("HermeticFileOverrides", "no data dir", r3);
        r3 = com.google.android.gms.internal.auth.M0.c();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static M0 a(Context context) {
        M0 m02;
        StrictMode.ThreadPolicy allowThreadDiskReads;
        M0 c10;
        synchronized (C11986t0.class) {
            try {
                m02 = f61843a;
                if (m02 == null) {
                    String str = Build.TYPE;
                    String str2 = Build.TAGS;
                    if (!str.equals("eng")) {
                        if (str.equals("userdebug")) {
                        }
                        c10 = M0.c();
                        m02 = c10;
                        f61843a = m02;
                    }
                    if (!str2.contains("dev-keys")) {
                        if (str2.contains("test-keys")) {
                        }
                        c10 = M0.c();
                        m02 = c10;
                        f61843a = m02;
                    }
                    if (C11935g0.b() && !context.isDeviceProtectedStorage()) {
                        context = context.createDeviceProtectedStorageContext();
                    }
                    allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    StrictMode.allowThreadDiskWrites();
                    File file = new File(context.getDir("phenotype_hermetic", 0), "overrides.txt");
                    M0 c11 = file.exists() ? M0.d(file) : M0.c();
                    if (c11.b()) {
                        Object a10 = c11.a();
                        try {
                            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream((File) a10)));
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
                                        Log.e("HermeticFileOverrides", "Invalid: " + readLine);
                                    } else {
                                        String str3 = new String(split[0]);
                                        String decode = Uri.decode(new String(split[1]));
                                        String str4 = (String) hashMap.get(split[2]);
                                        if (str4 == null) {
                                            String str5 = new String(split[2]);
                                            str4 = Uri.decode(str5);
                                            if (str4.length() < 1024 || str4 == str5) {
                                                hashMap.put(str5, str4);
                                            }
                                        }
                                        if (!simpleArrayMap.containsKey(str3)) {
                                            simpleArrayMap.put(str3, new SimpleArrayMap());
                                        }
                                        ((SimpleArrayMap) simpleArrayMap.get(str3)).put(decode, str4);
                                    }
                                }
                                Log.w("HermeticFileOverrides", "Parsed " + a10.toString() + " for Android package " + context.getPackageName());
                                C11959m0 c11959m0 = new C11959m0(simpleArrayMap);
                                bufferedReader.close();
                                c10 = M0.d(c11959m0);
                            } finally {
                                try {
                                    bufferedReader.close();
                                } catch (Throwable th2) {
                                    try {
                                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                                    } catch (Exception unused) {
                                    }
                                }
                            }
                        } catch (IOException e10) {
                            throw new RuntimeException(e10);
                        }
                    } else {
                        c10 = M0.c();
                    }
                    StrictMode.setThreadPolicy(allowThreadDiskReads);
                    m02 = c10;
                    f61843a = m02;
                }
            } catch (Throwable th3) {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                throw th3;
            } finally {
            }
        }
        return m02;
    }
}
