package D;

import android.content.res.AssetManager;
import androidx.annotation.NonNull;
import java.io.IOException;
import java.io.InputStream;

public class n extends b<InputStream> {
    public n(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    @Override
    @NonNull
    public Class<InputStream> a() {
        return InputStream.class;
    }

    @Override
    public void c(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    @Override
    public InputStream d(AssetManager assetManager, String str) throws IOException {
        return assetManager.open(str);
    }
}
