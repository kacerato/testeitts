package jn;

import wn.C16033k;
import wn.C16034l;
import wn.p;

public class T extends C13889f {
    public C13900q b(xn.c geom, wn.q rcConfig, float agentHeight, float agentRadius, float agentMaxClimb, int x10, int y10, boolean applyRecastDemoFlags) {
        p.b c10 = new wn.p().c(geom, rcConfig);
        C16033k c11 = c10.c();
        if (applyRecastDemoFlags) {
            for (int i10 = 0; i10 < c11.f127738f; i10++) {
                int[] iArr = c11.f127736d;
                int i11 = iArr[i10];
                if (i11 == P.f94208b || i11 == P.f94212f || i11 == P.f94210d) {
                    c11.f127741i[i10] = 1;
                } else if (i11 == P.f94209c) {
                    c11.f127741i[i10] = 2;
                } else if (i11 == P.f94211e) {
                    c11.f127741i[i10] = 5;
                }
                int i12 = iArr[i10];
                if (i12 > 0) {
                    iArr[i10] = i12 - 1;
                }
            }
        }
        return a(c(rcConfig.f127775a, c11, c10.d(), agentHeight, agentRadius, agentMaxClimb), x10, y10);
    }

    public x c(wn.t rcConfig, C16033k pmesh, C16034l dmesh, float agentHeight, float agentRadius, float agentMaxClimb) {
        x xVar = new x();
        xVar.f94361a = pmesh.f127733a;
        xVar.f94362b = pmesh.f127737e;
        xVar.f94363c = pmesh.f127734b;
        xVar.f94365e = pmesh.f127736d;
        xVar.f94364d = pmesh.f127741i;
        xVar.f94366f = pmesh.f127738f;
        xVar.f94367g = pmesh.f127739g;
        if (dmesh != null) {
            xVar.f94368h = dmesh.f127748a;
            xVar.f94369i = dmesh.f127749b;
            xVar.f94370j = dmesh.f127752e;
            xVar.f94371k = dmesh.f127750c;
            xVar.f94372l = dmesh.f127753f;
        }
        xVar.f94386z = agentHeight;
        xVar.f94356A = agentRadius;
        xVar.f94357B = agentMaxClimb;
        xVar.f94384x = pmesh.f127742j;
        xVar.f94385y = pmesh.f127743k;
        xVar.f94358C = rcConfig.f127791e;
        xVar.f94359D = rcConfig.f127792f;
        xVar.f94360E = true;
        return xVar;
    }
}
