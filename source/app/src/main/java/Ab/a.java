package Ab;

import com.itsmagic.engine.Engines.Engine.Texture.Sprite.NativeAutoSlicer;
import com.itsmagic.engine.Engines.Engine.Texture.Sprite.Rect;
import java.io.File;
import java.util.List;

public class a {
    public static List<Rect> a(File imageFile) {
        return NativeAutoSlicer.sliceSprites(imageFile);
    }

    public static List<Rect> b(File imageFile, int alphaThreshold) {
        return NativeAutoSlicer.sliceSprites(imageFile, alphaThreshold);
    }

    public static List<Rect> c(File imageFile, int alphaThreshold, int minIslandSizePixels) {
        return NativeAutoSlicer.sliceSprites(imageFile, alphaThreshold, minIslandSizePixels);
    }
}
