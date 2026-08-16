package n6;

import android.os.Build;
import android.os.SystemClock;
import android.provider.Telephony;
import androidx.annotation.Nullable;
import b3.s;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.openjdk.tools.doclint.DocLint;

public class C14355b {

    public static final int f97801f = 60;

    public static final int f97802g = 4;

    public g f97804b;

    public f f97807e;

    public final Map<Integer, g> f97803a = new LinkedHashMap();

    public final Map<Integer, C1882b> f97805c = new LinkedHashMap();

    public final Map<Integer, i> f97806d = new LinkedHashMap();

    public static final class C1882b {

        public final float[] f97808a;

        public int f97809b;

        public int f97810c;

        public final void c(float value) {
            float[] fArr = this.f97808a;
            int i10 = this.f97809b;
            fArr[i10] = value;
            this.f97809b = (i10 + 1) % fArr.length;
            int i11 = this.f97810c;
            if (i11 < fArr.length) {
                this.f97810c = i11 + 1;
            }
        }

        public final float[] d() {
            float[] fArr = this.f97808a;
            float[] fArr2 = new float[fArr.length];
            int i10 = this.f97810c;
            if (i10 == 0) {
                return fArr2;
            }
            int length = fArr.length - i10;
            int i11 = 0;
            if (i10 < fArr.length) {
                while (i11 < this.f97810c) {
                    fArr2[length + i11] = this.f97808a[i11];
                    i11++;
                }
                return fArr2;
            }
            int i12 = this.f97809b;
            while (true) {
                float[] fArr3 = this.f97808a;
                if (i11 >= fArr3.length) {
                    return fArr2;
                }
                fArr2[i11] = fArr3[(i12 + i11) % fArr3.length];
                i11++;
            }
        }

        public C1882b(int size) {
            this.f97808a = new float[size];
        }
    }

    public static final class c {

        public final int f97811a;

        public final float f97812b;

        public final long f97813c;

        public final long f97814d;

        public final float[] f97815e;

        public c(int index, float usagePercent, long currentFreqKhz, long maxFreqKhz, float[] history) {
            this.f97811a = index;
            this.f97812b = usagePercent;
            this.f97813c = currentFreqKhz;
            this.f97814d = maxFreqKhz;
            this.f97815e = history;
        }
    }

    public static final class d {

        public final float f97816a;

        public final List<c> f97817b;

        public final f f97818c;

        public final long f97819d;

        public final long f97820e;

        public final float f97821f;

        public final int f97822g;

        public final int f97823h;

        public final long f97824i;

        public d(float totalUsagePercent, List<c> cores, f staticInfo, long averageCurrentFreqKhz, long averageMaxFreqKhz, float temperatureCelsius, int appThreadCount, int openFileDescriptors, long uptimeSeconds) {
            this.f97816a = totalUsagePercent;
            this.f97817b = cores;
            this.f97818c = staticInfo;
            this.f97819d = averageCurrentFreqKhz;
            this.f97820e = averageMaxFreqKhz;
            this.f97821f = temperatureCelsius;
            this.f97822g = appThreadCount;
            this.f97823h = openFileDescriptors;
            this.f97824i = uptimeSeconds;
        }
    }

    public static final class f {

        public final String f97828a;

        public final int f97829b;

        public final int f97830c;

        public final int f97831d;

        public final int f97832e;

        public final String f97833f;

        public final String f97834g;

        public final String f97835h;

        public final String f97836i;

        public final String f97837j;

        public final String f97838k;

        public final String f97839l;

        public final String f97840m;

        public f(String processorName, int logicalProcessors, int onlineProcessors, int physicalCores, int socketCount, String cacheSummary, String abis, String hardware, String features, String bogoMips, String board, String device, String buildHardware) {
            this.f97828a = processorName;
            this.f97829b = logicalProcessors;
            this.f97830c = onlineProcessors;
            this.f97831d = physicalCores;
            this.f97832e = socketCount;
            this.f97833f = cacheSummary;
            this.f97834g = abis;
            this.f97835h = hardware;
            this.f97836i = features;
            this.f97837j = bogoMips;
            this.f97838k = board;
            this.f97839l = device;
            this.f97840m = buildHardware;
        }
    }

    public static final class g {

        public final long f97841a;

        public final long f97842b;

        public g(long total, long idle) {
            this.f97841a = total;
            this.f97842b = idle;
        }
    }

    public static final class h {

        public final g f97843a;

        public final List<e> f97844b;

        public final boolean f97845c;

        public h(g totalTimes, List<e> coreTimes, boolean syntheticPerCoreData) {
            this.f97843a = totalTimes;
            this.f97844b = coreTimes;
            this.f97845c = syntheticPerCoreData;
        }
    }

    public static final class i {

        public final float[] f97846a;

        public int f97847b;

        public int f97848c;

        public float f97849d;

        public final float b(float value) {
            int i10 = this.f97848c;
            float[] fArr = this.f97846a;
            if (i10 < fArr.length) {
                this.f97848c = i10 + 1;
            } else {
                this.f97849d -= fArr[this.f97847b];
            }
            int i11 = this.f97847b;
            fArr[i11] = value;
            float f10 = this.f97849d + value;
            this.f97849d = f10;
            this.f97847b = (i11 + 1) % fArr.length;
            return f10 / this.f97848c;
        }

        public i(int windowSize) {
            this.f97846a = new float[windowSize];
        }
    }

    public static String e(long khz) {
        if (khz <= 0) {
            return "";
        }
        double d10 = khz;
        double d11 = d10 / 1000000.0d;
        return d11 >= 1.0d ? String.format(Locale.ROOT, "%.2f GHz", Double.valueOf(d11)) : String.format(Locale.ROOT, "%.0f MHz", Double.valueOf(d10 / 1000.0d));
    }

    public static String f(float value) {
        return String.format(Locale.ROOT, "%.0f%%", Float.valueOf(value));
    }

    public static String g(float celsius) {
        return String.format(Locale.ROOT, "%.0f\u00b0C", Float.valueOf(celsius));
    }

    public static String h(float celsius) {
        return String.format(Locale.ROOT, "%.0fC", Float.valueOf(celsius));
    }

    public static String i(long seconds) {
        long j10 = seconds / 86400;
        long j11 = (seconds % 86400) / 3600;
        long j12 = (seconds % 3600) / 60;
        long j13 = seconds % 60;
        return j10 > 0 ? String.format(Locale.ROOT, "%dd %02d:%02d:%02d", Long.valueOf(j10), Long.valueOf(j11), Long.valueOf(j12), Long.valueOf(j13)) : String.format(Locale.ROOT, "%02d:%02d:%02d", Long.valueOf(j11), Long.valueOf(j12), Long.valueOf(j13));
    }

    public final long A(int coreIndex) {
        String str = "/sys/devices/system/cpu/cpu" + coreIndex + "/cpufreq/";
        String[] strArr = {"cpuinfo_min_freq", "scaling_min_freq"};
        for (int i10 = 0; i10 < 2; i10++) {
            long v10 = v(E(str + strArr[i10]), -1L);
            if (v10 > 0) {
                return v10;
            }
        }
        return -1L;
    }

    public final int B() {
        File[] listFiles = new File("/proc/self/fd").listFiles();
        if (listFiles == null) {
            return -1;
        }
        return listFiles.length;
    }

    public final h C() {
        int r10;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        List<String> F10 = F("/proc/stat");
        boolean z10 = false;
        g gVar = null;
        for (int i10 = 0; i10 < F10.size(); i10++) {
            String str = F10.get(i10);
            if (!str.startsWith("cpu")) {
                break;
            }
            String[] M10 = M(str);
            if (M10.length >= 5) {
                g t10 = t(M10);
                if ("cpu".equals(M10[0])) {
                    gVar = t10;
                } else if (M10[0].startsWith("cpu") && (r10 = r(M10[0])) >= 0) {
                    steppedArrayList.add(new e(r10, t10));
                }
            }
        }
        if (gVar == null) {
            gVar = new g(0L, 0L);
        }
        return new h(gVar, steppedArrayList, z10);
    }

    public final int D() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/self/status"));
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        bufferedReader.close();
                        return -1;
                    }
                    if (readLine.startsWith("Threads:")) {
                        String[] M10 = M(readLine);
                        if (M10.length >= 2) {
                            int v10 = (int) v(M10[1], -1L);
                            bufferedReader.close();
                            return v10;
                        }
                    }
                } finally {
                }
            }
        } catch (Exception unused) {
            return -1;
        }
    }

    public final String E(String path) {
        BufferedReader bufferedReader;
        String readLine;
        try {
            bufferedReader = new BufferedReader(new FileReader(path));
            try {
                readLine = bufferedReader.readLine();
            } finally {
            }
        } catch (IOException unused) {
        }
        if (readLine != null) {
            String trim = readLine.trim();
            bufferedReader.close();
            return trim;
        }
        bufferedReader.close();
        List<String> H10 = H(path);
        return !H10.isEmpty() ? H10.get(0).trim() : "";
    }

    public final List<String> F(String path) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(path));
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    steppedArrayList.add(readLine);
                } catch (Throwable th2) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
            bufferedReader.close();
        } catch (IOException unused) {
        }
        return !steppedArrayList.isEmpty() ? steppedArrayList : H(path);
    }

    public final long G() {
        String E10 = E("/proc/uptime");
        if (E10.isEmpty()) {
            return SystemClock.elapsedRealtime() / 1000;
        }
        String[] M10 = M(E10);
        return M10.length == 0 ? SystemClock.elapsedRealtime() / 1000 : (long) u(M10[0], SystemClock.elapsedRealtime() / 1000.0d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0062, code lost:
    
        if (r1 != null) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List<String> H(String path) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        Process process = null;
        try {
            process = new ProcessBuilder("sh", "-c", "cat " + path).redirectErrorStream(true).start();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    steppedArrayList.add(readLine);
                } catch (Throwable th2) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
            bufferedReader.close();
            process.waitFor();
        } catch (Exception unused) {
        } catch (Throwable th4) {
            if (process != null) {
                process.destroy();
            }
            throw th4;
        }
        process.destroy();
        return steppedArrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public d I() {
        float size;
        int i10;
        C14355b c14355b = this;
        if (c14355b.f97807e == null) {
            c14355b.f97807e = n();
        }
        h C10 = C();
        if (C10.f97844b.isEmpty() && (i10 = c14355b.f97807e.f97829b) > 0) {
            C10 = c14355b.N(C10, i10);
        }
        c14355b.O(C10);
        f o10 = c14355b.o(c14355b.f97807e);
        c14355b.f97807e = o10;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        float a10 = c14355b.a(C10.f97843a, c14355b.f97804b);
        c14355b.f97804b = C10.f97843a;
        int i11 = 0;
        int i12 = 0;
        long j10 = 0;
        int i13 = 0;
        long j11 = 0;
        while (i11 < C10.f97844b.size()) {
            e eVar = (e) C10.f97844b.get(i11);
            C1882b c1882b = c14355b.f97805c.get(Integer.valueOf(eVar.f97825a));
            if (c1882b == null) {
                c1882b = new C1882b(60);
                c14355b.f97805c.put(Integer.valueOf(eVar.f97825a), c1882b);
            }
            long z10 = c14355b.z(eVar.f97825a, true);
            long z11 = c14355b.z(eVar.f97825a, false);
            float L10 = c14355b.L(eVar.f97825a, eVar.f97827c != null ? eVar.f97827c.floatValue() : c14355b.a(eVar.f97826b, c14355b.f97803a.get(Integer.valueOf(eVar.f97825a))));
            f fVar = o10;
            c14355b.f97803a.put(Integer.valueOf(eVar.f97825a), eVar.f97826b);
            c1882b.c(L10);
            if (z10 > 0) {
                j10 += z10;
                i12++;
            }
            if (z11 > 0) {
                j11 += z11;
                i13++;
            }
            steppedArrayList.add(new c(eVar.f97825a, L10, z10, z11, c1882b.d()));
            i11++;
            c14355b = this;
            o10 = fVar;
        }
        f fVar2 = o10;
        long j12 = i12 == 0 ? -1L : j10 / i12;
        long j13 = i13 == 0 ? -1L : j11 / i13;
        float f10 = 0.0f;
        if ((a10 <= 0.0f || C10.f97845c) && !steppedArrayList.isEmpty()) {
            for (int i14 = 0; i14 < steppedArrayList.size(); i14++) {
                f10 += ((c) steppedArrayList.get(i14)).f97812b;
            }
            size = f10 / steppedArrayList.size();
        } else {
            size = a10;
        }
        return new d(size, steppedArrayList, fVar2, j12, j13, y(), D(), B(), G());
    }

    public final String J(Map<String, String> cpuInfo) {
        String[] strArr = {cpuInfo.get("model name"), cpuInfo.get("Processor"), cpuInfo.get("Hardware"), Build.HARDWARE, Build.DEVICE};
        for (int i10 = 0; i10 < 5; i10++) {
            String b10 = b(strArr[i10]);
            if (!b10.isEmpty()) {
                return b10;
            }
        }
        return "CPU";
    }

    public final int K(String type) {
        if (type == null) {
            return -1;
        }
        String lowerCase = type.toLowerCase(Locale.ROOT);
        if (lowerCase.contains("cpu")) {
            return 100;
        }
        if (lowerCase.contains("soc")) {
            return 90;
        }
        if (lowerCase.contains("ap")) {
            return 80;
        }
        if (lowerCase.contains("cluster")) {
            return 70;
        }
        if (lowerCase.contains(Telephony.Sms.Intents.EXTRA_PACKAGE_NAME)) {
            return 60;
        }
        if (lowerCase.contains("big")) {
            return 50;
        }
        return lowerCase.contains("little") ? 40 : -1;
    }

    public final float L(int coreIndex, float usage) {
        i iVar = this.f97806d.get(Integer.valueOf(coreIndex));
        if (iVar == null) {
            iVar = new i(4);
            this.f97806d.put(Integer.valueOf(coreIndex), iVar);
        }
        return iVar.b(usage);
    }

    public final String[] M(String text) {
        return text.trim().split("\\s+");
    }

    public final h N(h original, int logicalProcessors) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        float a10 = a(original.f97843a, this.f97804b);
        int i10 = 0;
        while (true) {
            boolean z10 = true;
            if (i10 >= logicalProcessors) {
                return new h(original.f97843a, steppedArrayList, z10);
            }
            boolean l10 = l(i10);
            long z11 = z(i10, true);
            long z12 = z(i10, false);
            long A10 = A(i10);
            steppedArrayList.add(new e(i10, original.f97843a, !l10 ? Float.valueOf(0.0f) : (z11 <= 0 || z12 <= 0) ? a10 > 0.0f ? Float.valueOf(a10) : null : (A10 <= 0 || z12 <= A10) ? Float.valueOf(Nc.b.E(0.0f, (((float) z11) / ((float) z12)) * 100.0f, 100.0f)) : Float.valueOf(Nc.b.E(0.0f, (((float) (z11 - A10)) / ((float) (z12 - A10))) * 100.0f, 100.0f))));
            i10++;
        }
    }

    public final void O(h statSnapshot) {
        for (int i10 = 0; i10 < statSnapshot.f97844b.size(); i10++) {
            e eVar = (e) statSnapshot.f97844b.get(i10);
            if (!this.f97805c.containsKey(Integer.valueOf(eVar.f97825a))) {
                this.f97805c.put(Integer.valueOf(eVar.f97825a), new C1882b(60));
            }
        }
    }

    public final long P(long[] values, int index) {
        if (index < 0 || index >= values.length) {
            return 0L;
        }
        return values[index];
    }

    public final float a(@Nullable g current, @Nullable g previous) {
        if (current == null || previous == null) {
            return 0.0f;
        }
        long j10 = current.f97841a - previous.f97841a;
        long j11 = current.f97842b - previous.f97842b;
        if (j10 <= 0) {
            return 0.0f;
        }
        return Nc.b.E(0.0f, (((float) (j10 - j11)) / ((float) j10)) * 100.0f, 100.0f);
    }

    public final String b(String value) {
        if (value == null) {
            return "";
        }
        String trim = value.trim();
        return (trim.isEmpty() || trim.startsWith("ARMv8") || trim.startsWith("AArch64")) ? "" : trim;
    }

    public final int c() {
        File[] listFiles = new File("/sys/devices/system/cpu").listFiles();
        int i10 = 0;
        if (listFiles != null) {
            int length = listFiles.length;
            int i11 = 0;
            while (i10 < length) {
                File file = listFiles[i10];
                if (file.isDirectory() && file.getName().matches(H.b.f7951b)) {
                    i11++;
                }
                i10++;
            }
            i10 = i11;
        }
        if (i10 > 0) {
            return i10;
        }
        int s10 = s(E("/sys/devices/system/cpu/present"));
        if (s10 > 0) {
            return s10;
        }
        int s11 = s(E("/sys/devices/system/cpu/possible"));
        if (s11 > 0) {
            return s11;
        }
        int s12 = s(E("/sys/devices/system/cpu/online"));
        return s12 > 0 ? s12 : Runtime.getRuntime().availableProcessors();
    }

    public final int d(int fallback) {
        int v10;
        int v11;
        String E10 = E("/sys/devices/system/cpu/online");
        if (E10.isEmpty()) {
            return fallback;
        }
        int i10 = 0;
        for (String str : E10.split(DocLint.SEPARATOR)) {
            String trim = str.trim();
            if (!trim.isEmpty()) {
                if (trim.contains("-")) {
                    String[] split = trim.split("-");
                    if (split.length == 2 && (v11 = (int) v(split[1], 0L)) >= (v10 = (int) v(split[0], 0L))) {
                        i10 += (v11 - v10) + 1;
                    }
                } else {
                    i10++;
                }
            }
        }
        return i10 == 0 ? fallback : i10;
    }

    public final int j(int fallback) {
        File[] listFiles = new File("/sys/devices/system/cpu").listFiles();
        if (listFiles == null) {
            return -1;
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (File file : listFiles) {
            if (file.isDirectory() && file.getName().matches(H.b.f7951b)) {
                String E10 = E(file.getAbsolutePath() + "/topology/physical_package_id");
                String E11 = E(file.getAbsolutePath() + "/topology/core_id");
                if (!E11.isEmpty()) {
                    String str = E10 + s.f32937c + E11;
                    if (!steppedArrayList.contains(str)) {
                        steppedArrayList.add(str);
                    }
                }
            }
        }
        if (steppedArrayList.isEmpty()) {
            return -1;
        }
        return Math.min(steppedArrayList.size(), fallback);
    }

    public final int k() {
        File[] listFiles = new File("/sys/devices/system/cpu").listFiles();
        if (listFiles == null) {
            return -1;
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (File file : listFiles) {
            if (file.isDirectory() && file.getName().matches(H.b.f7951b)) {
                String E10 = E(file.getAbsolutePath() + "/topology/physical_package_id");
                if (!E10.isEmpty() && !steppedArrayList.contains(E10)) {
                    steppedArrayList.add(E10);
                }
            }
        }
        if (steppedArrayList.isEmpty()) {
            return -1;
        }
        return steppedArrayList.size();
    }

    public final boolean l(int coreIndex) {
        String E10 = E("/sys/devices/system/cpu/cpu" + coreIndex + "/online");
        return E10.isEmpty() || v(E10, 1L) != 0;
    }

    public final String m() {
        String[] strArr = Build.SUPPORTED_ABIS;
        return (strArr == null || strArr.length == 0) ? "" : Arrays.toString(strArr);
    }

    public final f n() {
        Map<String, String> x10 = x();
        int max = Math.max(c(), Runtime.getRuntime().availableProcessors());
        return new f(J(x10), max, d(max), j(max), k(), w(), m(), q(x10.get("Hardware")), q(x10.get("Features")), q(x10.get("BogoMIPS")), Build.BOARD, Build.DEVICE, Build.HARDWARE);
    }

    public final f o(f base) {
        return new f(base.f97828a, Math.max(base.f97829b, c()), d(base.f97829b), j(base.f97829b), k(), w(), base.f97834g, base.f97835h, base.f97836i, base.f97837j, base.f97838k, base.f97839l, base.f97840m);
    }

    public final float p(String value) {
        float f10;
        if (value != null && !value.trim().isEmpty()) {
            try {
                float parseFloat = Float.parseFloat(value.trim());
                if (parseFloat <= 1000.0f) {
                    f10 = parseFloat > 150.0f ? 10.0f : 1000.0f;
                    if (parseFloat < -30.0f && parseFloat <= 200.0f) {
                        return parseFloat;
                    }
                }
                parseFloat /= f10;
                if (parseFloat < -30.0f) {
                }
            } catch (Exception unused) {
            }
        }
        return -1.0f;
    }

    public final String q(String value) {
        return value == null ? "" : value;
    }

    public final int r(String cpuName) {
        try {
            return Integer.parseInt(cpuName.substring(3));
        } catch (Exception unused) {
            return -1;
        }
    }

    public final int s(String text) {
        int v10;
        int v11;
        if (text == null || text.trim().isEmpty()) {
            return 0;
        }
        int i10 = 0;
        for (String str : text.split(DocLint.SEPARATOR)) {
            String trim = str.trim();
            if (!trim.isEmpty()) {
                if (trim.contains("-")) {
                    String[] split = trim.split("-");
                    if (split.length == 2 && (v11 = (int) v(split[1], -1L)) >= (v10 = (int) v(split[0], 0L))) {
                        i10 += (v11 - v10) + 1;
                    }
                } else {
                    i10++;
                }
            }
        }
        return i10;
    }

    public final g t(String[] parts) {
        long j10;
        int i10 = 1;
        int max = Math.max(0, parts.length - 1);
        long[] jArr = new long[max];
        while (true) {
            j10 = 0;
            if (i10 >= parts.length) {
                break;
            }
            jArr[i10 - 1] = v(parts[i10], 0L);
            i10++;
        }
        for (int i11 = 0; i11 < max; i11++) {
            j10 += jArr[i11];
        }
        return new g(j10, P(jArr, 3) + P(jArr, 4));
    }

    public final double u(String value, double fallback) {
        try {
            return Double.parseDouble(value.trim());
        } catch (Exception unused) {
            return fallback;
        }
    }

    public final long v(String value, long fallback) {
        try {
            return Long.parseLong(value.trim());
        } catch (Exception unused) {
            return fallback;
        }
    }

    public final String w() {
        File[] listFiles = new File("/sys/devices/system/cpu/cpu0/cache").listFiles();
        if (listFiles == null) {
            return "";
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (File file : listFiles) {
            if (file.isDirectory() && file.getName().startsWith(FirebaseAnalytics.d.f67690b0)) {
                String E10 = E(file.getAbsolutePath() + "/level");
                String E11 = E(file.getAbsolutePath() + "/type");
                String E12 = E(file.getAbsolutePath() + "/size");
                if (!E10.isEmpty() && !E11.isEmpty() && !E12.isEmpty()) {
                    linkedHashMap.put("L" + E10 + " " + E11, E12);
                }
            }
        }
        if (linkedHashMap.isEmpty()) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        Iterator it = linkedHashMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (sb2.length() > 0) {
                sb2.append(", ");
            }
            sb2.append((String) entry.getKey());
            sb2.append(": ");
            sb2.append((String) entry.getValue());
        }
        return sb2.toString();
    }

    public final Map<String, String> x() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/cpuinfo"));
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    int indexOf = readLine.indexOf(58);
                    if (indexOf > 0) {
                        String trim = readLine.substring(0, indexOf).trim();
                        String trim2 = readLine.substring(indexOf + 1).trim();
                        if (!linkedHashMap.containsKey(trim) && !trim2.isEmpty()) {
                            linkedHashMap.put(trim, trim2);
                        }
                    }
                } catch (Throwable th2) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
            bufferedReader.close();
        } catch (Exception unused) {
        }
        return linkedHashMap;
    }

    public final float y() {
        File[] listFiles = new File("/sys/class/thermal").listFiles();
        float f10 = -1.0f;
        if (listFiles == null) {
            return -1.0f;
        }
        int i10 = -1;
        float f11 = -1.0f;
        for (File file : listFiles) {
            if (file.isDirectory() && file.getName().startsWith("thermal_zone")) {
                String E10 = E(file.getAbsolutePath() + "/type");
                float p10 = p(E(file.getAbsolutePath() + "/temp"));
                if (p10 > 0.0f) {
                    if (f11 < 0.0f) {
                        f11 = p10;
                    }
                    int K10 = K(E10);
                    if (K10 > i10) {
                        f10 = p10;
                        i10 = K10;
                    }
                }
            }
        }
        return f10 > 0.0f ? f10 : f11;
    }

    public final long z(int coreIndex, boolean current) {
        String str = "/sys/devices/system/cpu/cpu" + coreIndex + "/cpufreq/";
        String[] strArr = {"scaling_cur_freq", "cpuinfo_cur_freq"};
        String[] strArr2 = {"cpuinfo_max_freq", "scaling_max_freq"};
        if (!current) {
            strArr = strArr2;
        }
        for (String str2 : strArr) {
            long v10 = v(E(str + str2), -1L);
            if (v10 > 0) {
                return v10;
            }
        }
        return -1L;
    }

    public static final class e {

        public final int f97825a;

        public final g f97826b;

        public final Float f97827c;

        public e(int coreIndex, g times) {
            this(coreIndex, times, (Float) null);
        }

        public e(int coreIndex, g times, Float overrideUsagePercent) {
            this.f97825a = coreIndex;
            this.f97826b = times;
            this.f97827c = overrideUsagePercent;
        }
    }
}
