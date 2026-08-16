package com.itsmagic.engine.Activities.Editor.Extensions.AIAgent;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;
import t3.C15377a;
import y3.C16136a;
import y3.C16137b;
import y3.C16138c;
import y3.C16139d;
import y3.C16140e;
import y3.C16141f;
import y3.C16142g;
import z3.C16259b;

@k0.i
public class j {

    public static boolean f69895a = true;

    public static final List<String> f69896b;

    public static final List<v> f69897c;

    public static final String f69898d = "You are the ITsMagic Engine assistant.\nKeep answers short, practical, and focused.\nDo not repeat information that is already present in the conversation context.\n";

    static {
        if (C15377a.f109719g.booleanValue()) {
            f69895a = false;
        }
        f69896b = new SteppedArrayList();
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        f69897c = steppedArrayList;
        steppedArrayList.add(new C16140e());
        steppedArrayList.add(new C16139d());
        steppedArrayList.add(new C16138c());
        steppedArrayList.add(new C16142g());
        steppedArrayList.add(new C16137b());
        steppedArrayList.add(new y3.i());
        steppedArrayList.add(new C16136a());
        steppedArrayList.add(new y3.h());
        steppedArrayList.add(new C16141f());
        steppedArrayList.add(new z3.e());
        steppedArrayList.add(new C16259b());
        steppedArrayList.add(new z3.h());
        steppedArrayList.add(new z3.d());
        steppedArrayList.add(new z3.f());
        steppedArrayList.add(new A3.a());
        steppedArrayList.add(new B3.a());
        steppedArrayList.add(new B3.b());
        steppedArrayList.add(new B3.c());
        steppedArrayList.add(new B3.d());
    }

    public static List<String> a(g specialist) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (specialist != null) {
            specialist.e();
        }
        return steppedArrayList;
    }

    public static String b() {
        return c(null);
    }

    public static String c(g specialist) {
        if (specialist != null && specialist.e()) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder(f69898d);
        sb2.append("Rules:\n");
        for (String str : f69896b) {
            sb2.append("- ");
            sb2.append(str);
            sb2.append("\n");
        }
        for (String str2 : a(specialist)) {
            sb2.append("- ");
            sb2.append(str2);
            sb2.append("\n");
        }
        return sb2.toString();
    }
}
