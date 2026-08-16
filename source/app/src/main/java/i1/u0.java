package i1;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.AnyThread;
import androidx.annotation.Nullable;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import org.json.JSONException;
import org.json.JSONObject;

public final class u0 {

    public final Executor f91353a;

    public u0(Executor executor) {
        this.f91353a = executor;
    }

    @AnyThread
    public final Executor a() {
        return this.f91353a;
    }

    @AnyThread
    public final void b(@Nullable final String str, @Nullable final String str2, final t0... t0VarArr) {
        this.f91353a.execute(new Runnable() {
            @Override
            public final void run() {
                final JSONObject jSONObject;
                String str3 = String.this;
                String str4 = str2;
                t0[] t0VarArr2 = t0VarArr;
                if (TextUtils.isEmpty(str3)) {
                    Log.d("UserMessagingPlatform", "Error on action: empty action name");
                    return;
                }
                final String lowerCase = str3.toLowerCase();
                if (TextUtils.isEmpty(str4)) {
                    jSONObject = new JSONObject();
                } else {
                    try {
                        jSONObject = new JSONObject(str4);
                    } catch (JSONException unused) {
                        StringBuilder sb2 = new StringBuilder(String.valueOf(lowerCase).length() + 32 + String.valueOf(str4).length());
                        sb2.append("Action[");
                        sb2.append(lowerCase);
                        sb2.append("]: failed to parse args: ");
                        sb2.append(str4);
                        Log.d("UserMessagingPlatform", sb2.toString());
                        return;
                    }
                }
                String valueOf = String.valueOf(jSONObject);
                StringBuilder sb3 = new StringBuilder(String.valueOf(lowerCase).length() + 10 + valueOf.length());
                sb3.append("Action[");
                sb3.append(lowerCase);
                sb3.append("]: ");
                sb3.append(valueOf);
                Log.d("UserMessagingPlatform", sb3.toString());
                for (final t0 t0Var : t0VarArr2) {
                    FutureTask futureTask = new FutureTask(new Callable() {
                        @Override
                        public final Object call() {
                            return Boolean.valueOf(t0.this.a(lowerCase, jSONObject));
                        }
                    });
                    t0Var.N1().execute(futureTask);
                    try {
                    } catch (InterruptedException e10) {
                        StringBuilder sb4 = new StringBuilder(String.valueOf(lowerCase).length() + 33);
                        sb4.append("Thread interrupted for Action[");
                        sb4.append(lowerCase);
                        sb4.append("]: ");
                        Log.d("UserMessagingPlatform", sb4.toString(), e10);
                    } catch (ExecutionException e11) {
                        StringBuilder sb5 = new StringBuilder(String.valueOf(lowerCase).length() + 24);
                        sb5.append("Failed to run Action[");
                        sb5.append(lowerCase);
                        sb5.append("]: ");
                        Log.d("UserMessagingPlatform", sb5.toString(), e11.getCause());
                    }
                    if (((Boolean) futureTask.get()).booleanValue()) {
                        return;
                    }
                }
            }
        });
    }
}
