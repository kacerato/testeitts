package com.itsmagic.engine.Activities.Editor.Utils;

import android.util.Log;
import androidx.annotation.NonNull;
import com.android.tools.r8.internal.C8779oc1;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.File;
import java.util.ArrayDeque;
import java.util.List;
import org.eclipse.jdt.internal.core.JavaElement;

public final class w {

    public static final String f72318a = "PermsUtil";

    public static final class a {

        public final int f72319a;

        public final int f72320b;

        public final int f72321c;

        public final List<String> f72322d;

        public a(int totalVisited, int success, int failed, List<String> failedPaths) {
            this.f72319a = totalVisited;
            this.f72320b = success;
            this.f72321c = failed;
            this.f72322d = failedPaths;
        }

        @NonNull
        public String toString() {
            return "ChmodReport{totalVisited=" + this.f72319a + ", success=" + this.f72320b + ", failed=" + this.f72321c + ", failedPaths=" + ((Object) this.f72322d) + JavaElement.JEM_ANNOTATION;
        }
    }

    public static boolean a(@NonNull File f10) {
        try {
            boolean readable = f10.setReadable(true, false);
            boolean writable = f10.setWritable(true, false);
            boolean executable = f10.setExecutable(true, false);
            if (!readable || !writable || !executable) {
                Log.w(f72318a, "Nem todas permiss\u00f5es foram aplicadas em: " + f10.getAbsolutePath() + " [r=" + readable + ", w=" + writable + ", x=" + executable + "]");
            }
            return readable && writable && executable;
        } catch (SecurityException e10) {
            Log.e(f72318a, "SecurityException em " + f10.getAbsolutePath(), e10);
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public static a b(@NonNull File root) {
        List a10;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (!root.exists()) {
            Log.w(f72318a, "Raiz n\u00e3o existe: " + root.getAbsolutePath());
            a10 = C8779oc1.a(new Object[]{root.getAbsolutePath()});
            return new a(0, 0, 1, a10);
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(root);
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (!arrayDeque.isEmpty()) {
            File file = (File) arrayDeque.pop();
            i10++;
            if (a(file)) {
                i11++;
            } else {
                i12++;
                steppedArrayList.add(file.getAbsolutePath());
            }
            if (file.isDirectory()) {
                File[] listFiles = file.listFiles();
                if (listFiles != null) {
                    for (File file2 : listFiles) {
                        arrayDeque.push(file2);
                    }
                } else {
                    Log.w(f72318a, "N\u00e3o foi poss\u00edvel listar: " + file.getAbsolutePath());
                }
            }
        }
        a aVar = new a(i10, i11, i12, steppedArrayList);
        Log.i(f72318a, "chmodRecursiveAllowAll -> " + ((Object) aVar));
        return aVar;
    }
}
