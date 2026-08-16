package org.apache.commons.math3.geometry.enclosing;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.Space;

public class WelzlEncloser<S extends Space, P extends Point<S>> implements Encloser<S, P> {
    private final SupportBallGenerator<S, P> generator;
    private final double tolerance;

    public WelzlEncloser(double d10, SupportBallGenerator<S, P> supportBallGenerator) {
        this.tolerance = d10;
        this.generator = supportBallGenerator;
    }

    private EnclosingBall<S, P> moveToFrontBall(List<P> list, int i10, List<P> list2) {
        EnclosingBall<S, P> ballOnSupport = this.generator.ballOnSupport(list2);
        if (ballOnSupport.getSupportSize() <= ballOnSupport.getCenter().getSpace().getDimension()) {
            for (int i11 = 0; i11 < i10; i11++) {
                P p10 = list.get(i11);
                if (!ballOnSupport.contains(p10, this.tolerance)) {
                    list2.add(p10);
                    ballOnSupport = moveToFrontBall(list, i11, list2);
                    list2.remove(list2.size() - 1);
                    for (int i12 = i11; i12 > 0; i12--) {
                        list.set(i12, list.get(i12 - 1));
                    }
                    list.set(0, p10);
                }
            }
        }
        return ballOnSupport;
    }

    private EnclosingBall<S, P> pivotingBall(Iterable<P> iterable) {
        P next = iterable.iterator().next();
        List<P> arrayList = new ArrayList<>(next.getSpace().getDimension() + 1);
        List<P> arrayList2 = new ArrayList<>(next.getSpace().getDimension() + 1);
        arrayList.add(next);
        EnclosingBall enclosingBall = (EnclosingBall<S, P>) moveToFrontBall(arrayList, arrayList.size(), arrayList2);
        while (true) {
            P selectFarthest = selectFarthest(iterable, enclosingBall);
            if (enclosingBall.contains(selectFarthest, this.tolerance)) {
                return (EnclosingBall<S, P>) enclosingBall;
            }
            arrayList2.clear();
            arrayList2.add(selectFarthest);
            EnclosingBall moveToFrontBall = moveToFrontBall(arrayList, arrayList.size(), arrayList2);
            if (moveToFrontBall.getRadius() < enclosingBall.getRadius()) {
                throw new MathInternalError();
            }
            arrayList.add(0, selectFarthest);
            arrayList.subList(moveToFrontBall.getSupportSize(), arrayList.size()).clear();
            enclosingBall = (EnclosingBall<S, P>) moveToFrontBall;
        }
    }

    @Override
    public EnclosingBall<S, P> enclose(Iterable<P> iterable) {
        return (iterable == null || !iterable.iterator().hasNext()) ? this.generator.ballOnSupport(new ArrayList()) : pivotingBall(iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public P selectFarthest(Iterable<P> iterable, EnclosingBall<S, P> enclosingBall) {
        P center = enclosingBall.getCenter();
        P p10 = null;
        double d10 = -1.0d;
        for (P p11 : iterable) {
            double distance = p11.distance(center);
            if (distance > d10) {
                p10 = p11;
                d10 = distance;
            }
        }
        return p10;
    }
}
