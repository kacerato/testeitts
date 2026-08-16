package androidx.core.graphics;

import Mf.l;
import android.graphics.Canvas;
import android.graphics.Picture;
import kotlin.jvm.internal.J;
import kotlin.jvm.internal.M;
import nf.P0;

public final class PictureKt {
    public static final Picture record(Picture picture, int i10, int i11, l<? super Canvas, P0> block) {
        M.p(picture, "<this>");
        M.p(block, "block");
        Canvas beginRecording = picture.beginRecording(i10, i11);
        M.o(beginRecording, "beginRecording(width, height)");
        try {
            block.invoke(beginRecording);
            return picture;
        } finally {
            J.d(1);
            picture.endRecording();
            J.c(1);
        }
    }
}
