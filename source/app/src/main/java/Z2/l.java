package Z2;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class l {

    public static l f30747b = null;

    public static final String f30748c = "fire-global";

    public static final String f30749d = "FirebaseAppHeartBeat";

    public static final String f30750e = "FirebaseHeartBeat";

    public static final String f30751f = "fire-count";

    public static final String f30752g = "last-used-date";

    public static final int f30753h = 30;

    public final SharedPreferences f30754a;

    public l(Context context, String str) {
        this.f30754a = context.getSharedPreferences(f30750e + str, 0);
    }

    public final synchronized void a() {
        try {
            long j10 = this.f30754a.getLong(f30751f, 0L);
            String str = "";
            Comparable comparable = null;
            for (Map.Entry<String, ?> entry : this.f30754a.getAll().entrySet()) {
                if (entry.getValue() instanceof Set) {
                    for (String str2 : (Set) entry.getValue()) {
                        if (comparable != null && comparable.compareTo(str2) <= 0) {
                        }
                        str = entry.getKey();
                        comparable = str2;
                    }
                }
            }
            HashSet hashSet = new HashSet(this.f30754a.getStringSet(str, new HashSet()));
            hashSet.remove(comparable);
            this.f30754a.edit().putStringSet(str, hashSet).putLong(f30751f, j10 - 1).commit();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void b() {
        try {
            SharedPreferences.Editor edit = this.f30754a.edit();
            int i10 = 0;
            for (Map.Entry<String, ?> entry : this.f30754a.getAll().entrySet()) {
                if (entry.getValue() instanceof Set) {
                    Set set = (Set) entry.getValue();
                    String d10 = d(System.currentTimeMillis());
                    String key = entry.getKey();
                    if (set.contains(d10)) {
                        HashSet hashSet = new HashSet();
                        hashSet.add(d10);
                        i10++;
                        edit.putStringSet(key, hashSet);
                    } else {
                        edit.remove(key);
                    }
                }
            }
            if (i10 == 0) {
                edit.remove(f30751f);
            } else {
                edit.putLong(f30751f, i10);
            }
            edit.commit();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized List<m> c() {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            for (Map.Entry<String, ?> entry : this.f30754a.getAll().entrySet()) {
                if (entry.getValue() instanceof Set) {
                    HashSet hashSet = new HashSet((Set) entry.getValue());
                    hashSet.remove(d(System.currentTimeMillis()));
                    if (!hashSet.isEmpty()) {
                        arrayList.add(m.a(entry.getKey(), new ArrayList(hashSet)));
                    }
                }
            }
            n(System.currentTimeMillis());
        } catch (Throwable th2) {
            throw th2;
        }
        return arrayList;
    }

    public final synchronized String d(long j10) {
        return new Date(j10).toInstant().atOffset(ZoneOffset.UTC).toLocalDateTime().format(DateTimeFormatter.ISO_LOCAL_DATE);
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    @VisibleForTesting
    public int e() {
        return (int) this.f30754a.getLong(f30751f, 0L);
    }

    public synchronized long f() {
        return this.f30754a.getLong(f30748c, -1L);
    }

    public final synchronized String g(String str) {
        for (Map.Entry<String, ?> entry : this.f30754a.getAll().entrySet()) {
            if (entry.getValue() instanceof Set) {
                Iterator it = ((Set) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (str.equals((String) it.next())) {
                        return entry.getKey();
                    }
                }
            }
        }
        return null;
    }

    public synchronized boolean h(long j10, long j11) {
        return d(j10).equals(d(j11));
    }

    public synchronized void i() {
        String d10 = d(System.currentTimeMillis());
        this.f30754a.edit().putString(f30752g, d10).commit();
        j(d10);
    }

    public final synchronized void j(String str) {
        try {
            String g10 = g(str);
            if (g10 == null) {
                return;
            }
            HashSet hashSet = new HashSet(this.f30754a.getStringSet(g10, new HashSet()));
            hashSet.remove(str);
            if (hashSet.isEmpty()) {
                this.f30754a.edit().remove(g10).commit();
            } else {
                this.f30754a.edit().putStringSet(g10, hashSet).commit();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized boolean k(long j10) {
        return l(f30748c, j10);
    }

    public synchronized boolean l(String str, long j10) {
        if (!this.f30754a.contains(str)) {
            this.f30754a.edit().putLong(str, j10).commit();
            return true;
        }
        if (h(this.f30754a.getLong(str, -1L), j10)) {
            return false;
        }
        this.f30754a.edit().putLong(str, j10).commit();
        return true;
    }

    public synchronized void m(long j10, String str) {
        String d10 = d(j10);
        if (this.f30754a.getString(f30752g, "").equals(d10)) {
            String g10 = g(d10);
            if (g10 == null) {
                return;
            }
            if (g10.equals(str)) {
                return;
            }
            o(str, d10);
            return;
        }
        long j11 = this.f30754a.getLong(f30751f, 0L);
        if (j11 + 1 == 30) {
            a();
            j11 = this.f30754a.getLong(f30751f, 0L);
        }
        HashSet hashSet = new HashSet(this.f30754a.getStringSet(str, new HashSet()));
        hashSet.add(d10);
        this.f30754a.edit().putStringSet(str, hashSet).putLong(f30751f, j11 + 1).putString(f30752g, d10).commit();
    }

    public synchronized void n(long j10) {
        this.f30754a.edit().putLong(f30748c, j10).commit();
    }

    public final synchronized void o(String str, String str2) {
        j(str2);
        HashSet hashSet = new HashSet(this.f30754a.getStringSet(str, new HashSet()));
        hashSet.add(str2);
        this.f30754a.edit().putStringSet(str, hashSet).commit();
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    @VisibleForTesting
    public l(SharedPreferences sharedPreferences) {
        this.f30754a = sharedPreferences;
    }
}
