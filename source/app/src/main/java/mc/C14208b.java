package mc;

import JAVARuntime.Color;
import JAVARuntime.Screen;
import com.itsmagic.engine.Engines.Engine.Texture.ColorTexture;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;
import ub.p;

public class C14208b {

    public static final Color f96922a = new Color(10, 10, 10);

    public static void a(List<p> textures) {
        int i10;
        int width = Screen.getWidth();
        int height = Screen.getHeight();
        int size = textures.size();
        double d10 = size;
        int ceil = (int) Math.ceil(Math.sqrt(d10));
        int ceil2 = (int) Math.ceil(Math.sqrt(d10));
        int i11 = 2;
        if (size <= 2) {
            i10 = 1;
        } else if (size <= 4) {
            i10 = 2;
        } else {
            boolean z10 = false;
            while (ceil * ceil2 < size) {
                if (z10) {
                    ceil2++;
                } else {
                    ceil++;
                }
                z10 = !z10;
            }
            int i12 = ceil2;
            while ((ceil * i12) - ceil > size) {
                i12--;
            }
            i10 = i12;
            i11 = ceil;
        }
        int i13 = width / i11;
        int i14 = height / i10;
        int i15 = 0;
        boolean z11 = false;
        for (int i16 = 0; i16 < i10; i16++) {
            int i17 = 0;
            while (true) {
                if (i17 >= i11) {
                    break;
                }
                if (i15 >= textures.size()) {
                    z11 = true;
                    break;
                } else {
                    i15++;
                    i17++;
                }
            }
            if (z11) {
                return;
            }
        }
    }

    public static void b(List<Tb.a> frameBuffers) {
        c(frameBuffers, null);
    }

    public static void c(List<Tb.a> frameBuffers, List<p> texturesExtra) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (frameBuffers != null) {
            for (int i10 = 0; i10 < frameBuffers.size(); i10++) {
                Tb.a aVar = frameBuffers.get(i10);
                if (aVar != null && aVar.s()) {
                    for (int i11 = 0; i11 < aVar.b(); i11++) {
                        ColorTexture m10 = aVar.m(i11);
                        if (m10 != null && !steppedArrayList.contains(m10)) {
                            steppedArrayList.add(m10);
                        }
                    }
                    if (aVar.t() && !steppedArrayList.contains(aVar.n())) {
                        steppedArrayList.add(aVar.n());
                    }
                }
            }
        }
        if (texturesExtra != null) {
            steppedArrayList.addAll(texturesExtra);
        }
        a(steppedArrayList);
    }

    public static void d(Tb.a... frameBuffers) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (Tb.a aVar : frameBuffers) {
            if (aVar != null && aVar.s()) {
                for (int i10 = 0; i10 < aVar.b(); i10++) {
                    ColorTexture m10 = aVar.m(i10);
                    if (m10 != null) {
                        steppedArrayList.add(m10);
                    }
                }
                if (aVar.t()) {
                    steppedArrayList.add(aVar.n());
                }
            }
        }
        a(steppedArrayList);
    }
}
