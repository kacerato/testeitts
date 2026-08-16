package l2;

import android.graphics.Path;
import android.graphics.PointF;
import android.transition.PathMotion;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
public final class k extends PathMotion {
    public static PointF a(float f10, float f11, float f12, float f13) {
        return f11 > f13 ? new PointF(f12, f11) : new PointF(f10, f13);
    }

    @Override
    @NonNull
    public Path getPath(float f10, float f11, float f12, float f13) {
        Path path = new Path();
        path.moveTo(f10, f11);
        PointF a10 = a(f10, f11, f12, f13);
        path.quadTo(a10.f32425x, a10.f32426y, f12, f13);
        return path;
    }
}
