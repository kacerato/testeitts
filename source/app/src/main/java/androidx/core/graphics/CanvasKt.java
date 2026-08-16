package androidx.core.graphics;

import Mf.l;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import kotlin.jvm.internal.J;
import kotlin.jvm.internal.M;
import nf.P0;

public final class CanvasKt {
    public static final void withClip(Canvas canvas, Rect clipRect, l<? super Canvas, P0> block) {
        M.p(canvas, "<this>");
        M.p(clipRect, "clipRect");
        M.p(block, "block");
        int save = canvas.save();
        canvas.clipRect(clipRect);
        try {
            block.invoke(canvas);
        } finally {
            J.d(1);
            canvas.restoreToCount(save);
            J.c(1);
        }
    }

    public static final void withMatrix(Canvas canvas, Matrix matrix, l<? super Canvas, P0> block) {
        M.p(canvas, "<this>");
        M.p(matrix, "matrix");
        M.p(block, "block");
        int save = canvas.save();
        canvas.concat(matrix);
        try {
            block.invoke(canvas);
        } finally {
            J.d(1);
            canvas.restoreToCount(save);
            J.c(1);
        }
    }

    public static void withMatrix$default(Canvas canvas, Matrix matrix, l block, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            matrix = new Matrix();
        }
        M.p(canvas, "<this>");
        M.p(matrix, "matrix");
        M.p(block, "block");
        int save = canvas.save();
        canvas.concat(matrix);
        try {
            block.invoke(canvas);
        } finally {
            J.d(1);
            canvas.restoreToCount(save);
            J.c(1);
        }
    }

    public static final void withRotation(Canvas canvas, float f10, float f11, float f12, l<? super Canvas, P0> block) {
        M.p(canvas, "<this>");
        M.p(block, "block");
        int save = canvas.save();
        canvas.rotate(f10, f11, f12);
        try {
            block.invoke(canvas);
        } finally {
            J.d(1);
            canvas.restoreToCount(save);
            J.c(1);
        }
    }

    public static void withRotation$default(Canvas canvas, float f10, float f11, float f12, l block, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = 0.0f;
        }
        if ((i10 & 2) != 0) {
            f11 = 0.0f;
        }
        if ((i10 & 4) != 0) {
            f12 = 0.0f;
        }
        M.p(canvas, "<this>");
        M.p(block, "block");
        int save = canvas.save();
        canvas.rotate(f10, f11, f12);
        try {
            block.invoke(canvas);
        } finally {
            J.d(1);
            canvas.restoreToCount(save);
            J.c(1);
        }
    }

    public static final void withSave(Canvas canvas, l<? super Canvas, P0> block) {
        M.p(canvas, "<this>");
        M.p(block, "block");
        int save = canvas.save();
        try {
            block.invoke(canvas);
        } finally {
            J.d(1);
            canvas.restoreToCount(save);
            J.c(1);
        }
    }

    public static final void withScale(Canvas canvas, float f10, float f11, float f12, float f13, l<? super Canvas, P0> block) {
        M.p(canvas, "<this>");
        M.p(block, "block");
        int save = canvas.save();
        canvas.scale(f10, f11, f12, f13);
        try {
            block.invoke(canvas);
        } finally {
            J.d(1);
            canvas.restoreToCount(save);
            J.c(1);
        }
    }

    public static void withScale$default(Canvas canvas, float f10, float f11, float f12, float f13, l block, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = 1.0f;
        }
        if ((i10 & 2) != 0) {
            f11 = 1.0f;
        }
        if ((i10 & 4) != 0) {
            f12 = 0.0f;
        }
        if ((i10 & 8) != 0) {
            f13 = 0.0f;
        }
        M.p(canvas, "<this>");
        M.p(block, "block");
        int save = canvas.save();
        canvas.scale(f10, f11, f12, f13);
        try {
            block.invoke(canvas);
        } finally {
            J.d(1);
            canvas.restoreToCount(save);
            J.c(1);
        }
    }

    public static final void withSkew(Canvas canvas, float f10, float f11, l<? super Canvas, P0> block) {
        M.p(canvas, "<this>");
        M.p(block, "block");
        int save = canvas.save();
        canvas.skew(f10, f11);
        try {
            block.invoke(canvas);
        } finally {
            J.d(1);
            canvas.restoreToCount(save);
            J.c(1);
        }
    }

    public static void withSkew$default(Canvas canvas, float f10, float f11, l block, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = 0.0f;
        }
        if ((i10 & 2) != 0) {
            f11 = 0.0f;
        }
        M.p(canvas, "<this>");
        M.p(block, "block");
        int save = canvas.save();
        canvas.skew(f10, f11);
        try {
            block.invoke(canvas);
        } finally {
            J.d(1);
            canvas.restoreToCount(save);
            J.c(1);
        }
    }

    public static final void withTranslation(Canvas canvas, float f10, float f11, l<? super Canvas, P0> block) {
        M.p(canvas, "<this>");
        M.p(block, "block");
        int save = canvas.save();
        canvas.translate(f10, f11);
        try {
            block.invoke(canvas);
        } finally {
            J.d(1);
            canvas.restoreToCount(save);
            J.c(1);
        }
    }

    public static void withTranslation$default(Canvas canvas, float f10, float f11, l block, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = 0.0f;
        }
        if ((i10 & 2) != 0) {
            f11 = 0.0f;
        }
        M.p(canvas, "<this>");
        M.p(block, "block");
        int save = canvas.save();
        canvas.translate(f10, f11);
        try {
            block.invoke(canvas);
        } finally {
            J.d(1);
            canvas.restoreToCount(save);
            J.c(1);
        }
    }

    public static final void withClip(Canvas canvas, RectF clipRect, l<? super Canvas, P0> block) {
        M.p(canvas, "<this>");
        M.p(clipRect, "clipRect");
        M.p(block, "block");
        int save = canvas.save();
        canvas.clipRect(clipRect);
        try {
            block.invoke(canvas);
        } finally {
            J.d(1);
            canvas.restoreToCount(save);
            J.c(1);
        }
    }

    public static final void withClip(Canvas canvas, int i10, int i11, int i12, int i13, l<? super Canvas, P0> block) {
        M.p(canvas, "<this>");
        M.p(block, "block");
        int save = canvas.save();
        canvas.clipRect(i10, i11, i12, i13);
        try {
            block.invoke(canvas);
        } finally {
            J.d(1);
            canvas.restoreToCount(save);
            J.c(1);
        }
    }

    public static final void withClip(Canvas canvas, float f10, float f11, float f12, float f13, l<? super Canvas, P0> block) {
        M.p(canvas, "<this>");
        M.p(block, "block");
        int save = canvas.save();
        canvas.clipRect(f10, f11, f12, f13);
        try {
            block.invoke(canvas);
        } finally {
            J.d(1);
            canvas.restoreToCount(save);
            J.c(1);
        }
    }

    public static final void withClip(Canvas canvas, Path clipPath, l<? super Canvas, P0> block) {
        M.p(canvas, "<this>");
        M.p(clipPath, "clipPath");
        M.p(block, "block");
        int save = canvas.save();
        canvas.clipPath(clipPath);
        try {
            block.invoke(canvas);
        } finally {
            J.d(1);
            canvas.restoreToCount(save);
            J.c(1);
        }
    }
}
