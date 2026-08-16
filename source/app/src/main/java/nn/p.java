package nn;

import java.lang.reflect.Array;
import java.util.Deque;
import java.util.LinkedList;

public class p {
    public final void a(e es, Deque<int[]> queue, float agentClimb, float h10, int i10, int j10) {
        g gVar = es.f98340b.get(j10).f98351c[i10];
        if (!gVar.f98347b || Math.abs(gVar.f98346a[1] - h10) >= agentClimb) {
            return;
        }
        queue.add(new int[]{i10, j10});
    }

    public o[] b(m acfg, e es) {
        int length = es.f98340b.get(0).f98351c.length;
        int[][] iArr = (int[][]) Array.newInstance(Integer.TYPE, length, es.f98340b.size());
        for (int i10 = 0; i10 < es.f98340b.size(); i10++) {
            for (int i11 = 0; i11 < length; i11++) {
                iArr[i11][i10] = -1;
            }
        }
        int i12 = 0;
        int i13 = 0;
        while (i13 < es.f98340b.size()) {
            int i14 = i12;
            for (int i15 = 0; i15 < length; i15++) {
                if (iArr[i15][i13] == -1) {
                    if (es.f98340b.get(i13).f98351c[i15].f98347b) {
                        LinkedList linkedList = new LinkedList();
                        linkedList.add(new int[]{i15, i13});
                        c(es, iArr, linkedList, acfg.f98372c, i14);
                        i14++;
                    } else {
                        iArr[i15][i13] = -2;
                    }
                }
            }
            i13++;
            i12 = i14;
        }
        o[] oVarArr = new o[i12];
        for (int i16 = 0; i16 < i12; i16++) {
            oVarArr[i16] = new o();
        }
        for (int i17 = 0; i17 < es.f98340b.size(); i17++) {
            int i18 = 0;
            int i19 = -2;
            for (int i20 = 0; i20 < length + 1; i20++) {
                if (i20 == length || iArr[i20][i17] != i19) {
                    if (i19 >= 0) {
                        o oVar = oVarArr[i19];
                        if (oVar.f98383c < i18) {
                            oVar.f98383c = i18;
                            oVar.f98382b = i20 - i18;
                            oVar.f98381a = i17;
                        }
                    }
                    if (i20 < length) {
                        i19 = iArr[i20][i17];
                    }
                    i18 = 1;
                } else {
                    i18++;
                }
            }
        }
        return oVarArr;
    }

    public final void c(e es, int[][] sampleGrid, Deque<int[]> queue, float agentClimb, int region) {
        while (!queue.isEmpty()) {
            int[] poll = queue.poll();
            int i10 = poll[0];
            int i11 = poll[1];
            if (sampleGrid[i10][i11] == -1) {
                g gVar = es.f98340b.get(i11).f98351c[i10];
                sampleGrid[i10][i11] = region;
                float f10 = gVar.f98346a[1];
                if (i10 < sampleGrid.length - 1) {
                    a(es, queue, agentClimb, f10, i10 + 1, i11);
                }
                if (i10 > 0) {
                    a(es, queue, agentClimb, f10, i10 - 1, i11);
                }
                if (i11 < sampleGrid[0].length - 1) {
                    a(es, queue, agentClimb, f10, i10, i11 + 1);
                }
                if (i11 > 0) {
                    a(es, queue, agentClimb, f10, i10, i11 - 1);
                }
            }
        }
    }
}
