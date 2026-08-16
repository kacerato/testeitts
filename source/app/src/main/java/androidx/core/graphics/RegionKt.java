package androidx.core.graphics;

import Mf.l;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.RegionIterator;
import java.util.Iterator;
import kotlin.jvm.internal.M;
import nf.P0;

public final class RegionKt {
    public static final Region and(Region region, Rect r10) {
        M.p(region, "<this>");
        M.p(r10, "r");
        Region region2 = new Region(region);
        region2.op(r10, Region.Op.INTERSECT);
        return region2;
    }

    public static final boolean contains(Region region, Point p10) {
        M.p(region, "<this>");
        M.p(p10, "p");
        return region.contains(p10.f32423x, p10.f32424y);
    }

    public static final void forEach(Region region, l<? super Rect, P0> action) {
        M.p(region, "<this>");
        M.p(action, "action");
        RegionIterator regionIterator = new RegionIterator(region);
        while (true) {
            Rect rect = new Rect();
            if (!regionIterator.next(rect)) {
                return;
            } else {
                action.invoke(rect);
            }
        }
    }

    public static final Iterator<Rect> iterator(Region region) {
        M.p(region, "<this>");
        return new RegionKt$iterator$1(region);
    }

    public static final Region minus(Region region, Rect r10) {
        M.p(region, "<this>");
        M.p(r10, "r");
        Region region2 = new Region(region);
        region2.op(r10, Region.Op.DIFFERENCE);
        return region2;
    }

    public static final Region not(Region region) {
        M.p(region, "<this>");
        Region region2 = new Region(region.getBounds());
        region2.op(region, Region.Op.DIFFERENCE);
        return region2;
    }

    public static final Region or(Region region, Rect r10) {
        M.p(region, "<this>");
        M.p(r10, "r");
        Region region2 = new Region(region);
        region2.union(r10);
        return region2;
    }

    public static final Region plus(Region region, Rect r10) {
        M.p(region, "<this>");
        M.p(r10, "r");
        Region region2 = new Region(region);
        region2.union(r10);
        return region2;
    }

    public static final Region unaryMinus(Region region) {
        M.p(region, "<this>");
        Region region2 = new Region(region.getBounds());
        region2.op(region, Region.Op.DIFFERENCE);
        return region2;
    }

    public static final Region xor(Region region, Rect r10) {
        M.p(region, "<this>");
        M.p(r10, "r");
        Region region2 = new Region(region);
        region2.op(r10, Region.Op.XOR);
        return region2;
    }

    public static final Region and(Region region, Region r10) {
        M.p(region, "<this>");
        M.p(r10, "r");
        Region region2 = new Region(region);
        region2.op(r10, Region.Op.INTERSECT);
        return region2;
    }

    public static final Region minus(Region region, Region r10) {
        M.p(region, "<this>");
        M.p(r10, "r");
        Region region2 = new Region(region);
        region2.op(r10, Region.Op.DIFFERENCE);
        return region2;
    }

    public static final Region or(Region region, Region r10) {
        M.p(region, "<this>");
        M.p(r10, "r");
        Region region2 = new Region(region);
        region2.op(r10, Region.Op.UNION);
        return region2;
    }

    public static final Region plus(Region region, Region r10) {
        M.p(region, "<this>");
        M.p(r10, "r");
        Region region2 = new Region(region);
        region2.op(r10, Region.Op.UNION);
        return region2;
    }

    public static final Region xor(Region region, Region r10) {
        M.p(region, "<this>");
        M.p(r10, "r");
        Region region2 = new Region(region);
        region2.op(r10, Region.Op.XOR);
        return region2;
    }
}
