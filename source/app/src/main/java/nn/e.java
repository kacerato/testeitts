package nn;

import java.util.ArrayList;
import java.util.List;
import jn.C13890g;

public class e {

    public final i f98339a = new i();

    public final List<i> f98340b = new ArrayList();

    public final u f98341c;

    public final float[] f98342d;

    public final float[] f98343e;

    public final float[] f98344f;

    public e(c edge, u trajectory) {
        float[] fArr = new float[3];
        this.f98342d = fArr;
        float[] fArr2 = new float[3];
        this.f98343e = fArr2;
        float[] fArr3 = new float[3];
        this.f98344f = fArr3;
        this.f98341c = trajectory;
        C13890g.w(fArr, C13890g.W(edge.f98338b, edge.f98337a));
        C13890g.R(fArr);
        C13890g.U(fArr3, fArr[2], 0.0f, -fArr[0]);
        C13890g.R(fArr3);
        C13890g.U(fArr2, 0.0f, 1.0f, 0.0f);
    }
}
