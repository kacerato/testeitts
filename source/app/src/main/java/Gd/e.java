package Gd;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import kotlin.TypeCastException;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class e {

    public static final e f7784a = new e();

    public final boolean a(@NotNull Context context) {
        M.q(context, "context");
        Object systemService = context.getSystemService(Context.CONNECTIVITY_SERVICE);
        if (systemService == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.net.ConnectivityManager");
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @NotNull
    public final String b(@NotNull InputStream inputStream) {
        M.q(inputStream, "inputStream");
        try {
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "utf-8"));
                StringBuilder sb2 = new StringBuilder();
                for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                    sb2.append(readLine);
                    sb2.append("\n");
                }
                String sb3 = sb2.toString();
                M.h(sb3, "sb.toString()");
                inputStream.close();
                return sb3;
            } catch (Exception unused) {
                throw new RuntimeException("Can't parse HTML file.");
            }
        } catch (Throwable th2) {
            inputStream.close();
            throw th2;
        }
    }
}
