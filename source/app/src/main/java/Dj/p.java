package Dj;

import Fk.A0;
import Fk.C2537i;
import Fk.p0;
import Fk.s0;
import java.util.Date;

public class p {

    public final long f5259a;

    public final s0 f5260b;

    public final b f5261c;

    public static class a {

        public final long f5262a;

        public a(Date date) {
            this.f5262a = date.getTime();
        }

        public p a(int i10) {
            return new p(this.f5262a, s0.x(i10), b.sixtyHours);
        }

        public p b(int i10) {
            return new p(this.f5262a, s0.x(i10), b.years);
        }
    }

    public enum b {
        microseconds(0),
        milliseconds(1),
        seconds(2),
        minutes(3),
        hours(4),
        sixtyHours(5),
        years(6);

        private final int unitTag;

        b(int i10) {
            this.unitTag = i10;
        }
    }

    public p(long j10, s0 s0Var, b bVar) {
        this.f5259a = j10;
        this.f5260b = s0Var;
        this.f5261c = bVar;
    }

    public static a a(Date date) {
        return new a(date);
    }

    public Date b() {
        return new Date(this.f5259a);
    }

    public A0 c() {
        return A0.u().c(new p0(this.f5259a / 1000)).b(new C2537i(this.f5261c.unitTag, this.f5260b)).a();
    }

    public p(A0 a02) {
        this.f5259a = a02.x().v().longValue();
        C2537i v10 = a02.v();
        this.f5260b = v10.v();
        this.f5261c = b.values()[v10.u()];
    }
}
