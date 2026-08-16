package com.android.tools.r8.naming;

import com.android.tools.r8.internal.AbstractC4895Av0;
import com.android.tools.r8.internal.AbstractC8552nC;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C8051kC;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

public class S0 {

    public final AbstractC8552nC f55747a;

    public final HashSet f55748b;

    public final C5094Ef0 f55749c;

    public S0(AbstractC8552nC abstractC8552nC, HashSet hashSet, C5094Ef0 c5094Ef0) {
        this.f55749c = c5094Ef0;
        C8051kC c8051kC = new C8051kC(4);
        for (Map.Entry entry : abstractC8552nC.entrySet()) {
            String str = (String) entry.getKey();
            C10947i c10947i = (C10947i) entry.getValue();
            c8051kC.a(str, new C10952j(c10947i.f55921b, c10947i.f55920a, c10947i.f55922c, c10947i.f55924e, c10947i.f55925f, c10947i.f55926g));
        }
        AbstractC8552nC b10 = c8051kC.b();
        this.f55747a = b10;
        this.f55748b = hashSet;
        HashMap hashMap = new HashMap();
        AbstractC4895Av0 it = b10.keySet().iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            C10952j c10952j = (C10952j) this.f55747a.get(str2);
            String str3 = (String) hashMap.put(c10952j.f55936b, str2);
            if (str3 != null) {
                C5094Ef0 c5094Ef02 = this.f55749c;
                String b11 = C4932Bl.b(str2);
                String b12 = C4932Bl.b(str3);
                String a10 = C4932Bl.a(c10952j.f55936b);
                c5094Ef02.error(new C11027y0("'" + b11 + "' and '" + b12 + "' map to same name: '" + a10 + "'", c10952j.f55937c));
            }
        }
        this.f55749c.a();
    }

    public static S0 a(C5094Ef0 c5094Ef0, Path path) throws IOException {
        G0 g02 = new G0(new O(new BufferedReader(new InputStreamReader(Files.newInputStream(path, new OpenOption[0]), StandardCharsets.UTF_8))), c5094Ef0, false, false, MapVersion.MAP_VERSION_NONE);
        try {
            R0 r02 = new R0(c5094Ef0);
            g02.b(r02);
            g02.a(r02);
            r02.f55739c.a();
            S0 s02 = new S0(AbstractC8552nC.a(r02.f55737a), r02.f55738b, r02.f55739c);
            g02.f55618a.close();
            return s02;
        } catch (Throwable th2) {
            try {
                g02.f55618a.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }
}
