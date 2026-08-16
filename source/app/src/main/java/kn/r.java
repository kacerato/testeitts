package kn;

import java.util.Deque;
import java.util.LinkedList;
import java.util.List;
import jn.A;
import jn.C13890g;
import jn.C13904v;
import jn.L;
import jn.O;

public class r {

    public final i f95636a;

    public final Deque<p> f95637b = new LinkedList();

    public r(i config) {
        this.f95636a = config;
    }

    public q a(long startRef, long endRef, float[] startPos, float[] endPos, L filter) {
        if (this.f95637b.size() >= this.f95636a.f95572b) {
            return null;
        }
        p pVar = new p();
        C13890g.w(pVar.f95627a, startPos);
        pVar.f95629c = startRef;
        C13890g.w(pVar.f95628b, endPos);
        pVar.f95630d = endRef;
        pVar.f95632f.f95634a = null;
        pVar.f95631e = filter;
        this.f95637b.add(pVar);
        return pVar.f95632f;
    }

    public void b(C13904v navMesh) {
        int i10 = this.f95636a.f95573c;
        while (i10 > 0) {
            p poll = this.f95637b.poll();
            if (poll == null) {
                return;
            }
            if (poll.f95632f.f95634a == null) {
                A a10 = new A(navMesh);
                poll.f95633g = a10;
                poll.f95632f.f95634a = a10.E(poll.f95629c, poll.f95630d, poll.f95627a, poll.f95628b, poll.f95631e, 0);
            }
            if (poll.f95632f.f95634a.c()) {
                O<Integer> Q10 = poll.f95633g.Q(i10);
                poll.f95632f.f95634a = Q10.f94205b;
                i10 -= Q10.f94204a.intValue();
            }
            if (poll.f95632f.f95634a.e()) {
                O<List<Long>> f10 = poll.f95633g.f();
                q qVar = poll.f95632f;
                qVar.f95634a = f10.f94205b;
                qVar.f95635b = f10.f94204a;
            }
            if (!poll.f95632f.f95634a.b() && !poll.f95632f.f95634a.e()) {
                this.f95637b.addFirst(poll);
            }
        }
    }
}
