package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class AbstractC5885Ry extends AbstractC5827Qy implements InterfaceC8262lW {

    public C5418Jw f44037c = C5418Jw.f41525c;

    public boolean f44038d;

    public final void a(AbstractC6001Ty abstractC6001Ty) {
        if (!this.f44038d) {
            this.f44037c = this.f44037c.m719clone();
            this.f44038d = true;
        }
        C5418Jw c5418Jw = this.f44037c;
        C5418Jw c5418Jw2 = abstractC6001Ty.f44631b;
        c5418Jw.getClass();
        for (int i10 = 0; i10 < c5418Jw2.f41526a.f44864c.size(); i10++) {
            c5418Jw.b((Map.Entry) c5418Jw2.f41526a.f44864c.get(i10));
        }
        C6036Um0 c6036Um0 = c5418Jw2.f41526a;
        Iterator it = (c6036Um0.f44865d.isEmpty() ? AbstractC6477an0.f46629b : c6036Um0.f44865d.entrySet()).iterator();
        while (it.hasNext()) {
            c5418Jw.b((Map.Entry) it.next());
        }
    }

    public final AbstractC5885Ry a(C6173Wy c6173Wy, Serializable serializable) {
        Object obj;
        if (c6173Wy.f45590a == b()) {
            if (!this.f44038d) {
                this.f44037c = this.f44037c.m719clone();
                this.f44038d = true;
            }
            C5418Jw c5418Jw = this.f44037c;
            C6116Vy c6116Vy = c6173Wy.f45593d;
            if (c6116Vy.f45238d) {
                obj = serializable;
                if (c6116Vy.f45237c.f44348b == EnumC6058Ux0.f44919j) {
                    ArrayList arrayList = new ArrayList();
                    Iterator it = ((List) serializable).iterator();
                    while (it.hasNext()) {
                        arrayList.add(c6173Wy.b(it.next()));
                    }
                    obj = arrayList;
                }
            } else {
                obj = c6173Wy.b(serializable);
            }
            c5418Jw.c(c6116Vy, obj);
            return this;
        }
        throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
    }
}
