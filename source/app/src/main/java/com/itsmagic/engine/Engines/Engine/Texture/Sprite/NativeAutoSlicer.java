package com.itsmagic.engine.Engines.Engine.Texture.Sprite;

import androidx.annotation.Keep;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.File;
import java.util.List;

@Keep
public class NativeAutoSlicer {
    static {
        System.loadLibrary("native-auto-slicer");
    }

    private static native int[] nativeSliceSprites(String imagePath, int alphaThreshold, int minIslandSizePixels);

    public static List<Rect> sliceSprites(File imageFile) {
        return sliceSprites(imageFile, 1);
    }

    public static List<Rect> sliceSprites(File imageFile, int alphaThreshold) {
        return sliceSprites(imageFile, alphaThreshold, 1);
    }

    public static List<Rect> sliceSprites(File imageFile, int alphaThreshold, int minIslandSizePixels) {
        int[] nativeSliceSprites;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (imageFile != null && imageFile.exists() && imageFile.isFile() && (nativeSliceSprites = nativeSliceSprites(imageFile.getAbsolutePath(), alphaThreshold, minIslandSizePixels)) != null) {
            int i10 = 2;
            if (nativeSliceSprites.length >= 2) {
                int i11 = nativeSliceSprites[0];
                int i12 = nativeSliceSprites[1];
                while (true) {
                    int i13 = i10 + 3;
                    if (i13 >= nativeSliceSprites.length) {
                        break;
                    }
                    steppedArrayList.add(new Rect(nativeSliceSprites[i10], nativeSliceSprites[i10 + 1], nativeSliceSprites[i10 + 2], nativeSliceSprites[i13], i11, i12));
                    i10 += 4;
                }
            }
        }
        return steppedArrayList;
    }
}
