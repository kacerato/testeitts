package f3;

import K2.g;
import androidx.annotation.NonNull;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

public class C13184c {

    public static final String f86001c = "PersistedInstallation";

    public static final String f86002d = "Fid";

    public static final String f86003e = "AuthToken";

    public static final String f86004f = "RefreshToken";

    public static final String f86005g = "TokenCreationEpochInSecs";

    public static final String f86006h = "ExpiresInSecs";

    public static final String f86007i = "Status";

    public static final String f86008j = "FisError";

    public File f86009a;

    @NonNull
    public final g f86010b;

    public enum a {
        ATTEMPT_MIGRATION,
        NOT_GENERATED,
        UNREGISTERED,
        REGISTERED,
        REGISTER_ERROR
    }

    public C13184c(@NonNull g gVar) {
        this.f86010b = gVar;
    }

    public void a() {
        b().delete();
    }

    public final File b() {
        if (this.f86009a == null) {
            synchronized (this) {
                try {
                    if (this.f86009a == null) {
                        this.f86009a = new File(this.f86010b.n().getFilesDir(), "PersistedInstallation." + this.f86010b.t() + ".json");
                    }
                } finally {
                }
            }
        }
        return this.f86009a;
    }

    @NonNull
    public d c(@NonNull d dVar) {
        File createTempFile;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(f86002d, dVar.d());
            jSONObject.put(f86007i, dVar.g().ordinal());
            jSONObject.put(f86003e, dVar.b());
            jSONObject.put(f86004f, dVar.f());
            jSONObject.put(f86005g, dVar.h());
            jSONObject.put(f86006h, dVar.c());
            jSONObject.put(f86008j, dVar.e());
            createTempFile = File.createTempFile(f86001c, "tmp", this.f86010b.n().getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
        } catch (IOException | JSONException unused) {
        }
        if (createTempFile.renameTo(b())) {
            return dVar;
        }
        throw new IOException("unable to rename the tmpfile to PersistedInstallation");
    }

    public final JSONObject d() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        try {
            FileInputStream fileInputStream = new FileInputStream(b());
            while (true) {
                try {
                    int read = fileInputStream.read(bArr, 0, 16384);
                    if (read < 0) {
                        JSONObject jSONObject = new JSONObject(byteArrayOutputStream.toString());
                        fileInputStream.close();
                        return jSONObject;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                } catch (Throwable th2) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        } catch (IOException | JSONException unused) {
            return new JSONObject();
        }
    }

    @NonNull
    public d e() {
        JSONObject d10 = d();
        String optString = d10.optString(f86002d, null);
        int optInt = d10.optInt(f86007i, a.ATTEMPT_MIGRATION.ordinal());
        String optString2 = d10.optString(f86003e, null);
        String optString3 = d10.optString(f86004f, null);
        long optLong = d10.optLong(f86005g, 0L);
        long optLong2 = d10.optLong(f86006h, 0L);
        return d.a().d(optString).g(a.values()[optInt]).b(optString2).f(optString3).h(optLong).c(optLong2).e(d10.optString(f86008j, null)).a();
    }
}
