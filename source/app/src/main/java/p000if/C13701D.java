package p000if;

import com.jme3.asset.AssetKey;
import com.jme3.asset.cache.AssetCache;
import java.util.logging.Logger;

public class C13701D extends AssetKey<Object> {

    public static final Logger f92071b = Logger.getLogger(C13701D.class.getName());

    public C13701D() {
    }

    @Override
    public Class<? extends AssetCache> getCacheType() {
        return null;
    }

    public C13701D(String str) {
        super(str);
    }
}
