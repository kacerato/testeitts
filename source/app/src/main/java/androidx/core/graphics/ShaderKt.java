package androidx.core.graphics;

import Mf.l;
import android.graphics.Matrix;
import android.graphics.Shader;
import kotlin.jvm.internal.M;
import nf.P0;

public final class ShaderKt {
    public static final void transform(Shader shader, l<? super Matrix, P0> block) {
        M.p(shader, "<this>");
        M.p(block, "block");
        Matrix matrix = new Matrix();
        shader.getLocalMatrix(matrix);
        block.invoke(matrix);
        shader.setLocalMatrix(matrix);
    }
}
