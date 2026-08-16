package com.itsmagic.engine.Activities.Editor.Extensions.AIAgent;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class k {

    public final List<m> f69899a = new SteppedArrayList();

    public synchronized void a(m messageObject) {
        this.f69899a.add(messageObject);
    }

    public void b(m promptMessageObject) {
        this.f69899a.remove(promptMessageObject);
    }

    public void c() {
        if (this.f69899a.isEmpty()) {
            return;
        }
        this.f69899a.remove(r0.size() - 1);
    }

    public synchronized k d() {
        k kVar;
        kVar = new k();
        kVar.f69899a.addAll(this.f69899a);
        return kVar;
    }
}
