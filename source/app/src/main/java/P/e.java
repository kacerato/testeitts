package P;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.p;

public class e extends N.b<c> implements p {
    public e(c cVar) {
        super(cVar);
    }

    @Override
    @NonNull
    public Class<c> a() {
        return c.class;
    }

    @Override
    public int getSize() {
        return ((c) this.f15451b).j();
    }

    @Override
    public void initialize() {
        ((c) this.f15451b).e().prepareToDraw();
    }

    @Override
    public void recycle() {
        ((c) this.f15451b).stop();
        ((c) this.f15451b).m();
    }
}
