package p000if;

import com.jme3.asset.AssetInfo;
import com.jme3.asset.AssetLoader;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import java.util.logging.Logger;

public class C13727w implements AssetLoader {

    public static final Logger f92170a = Logger.getLogger(C13727w.class.getName());

    @Override
    public Object load(AssetInfo assetInfo) throws IOException {
        InputStream openStream = assetInfo.openStream();
        Properties properties = new Properties();
        properties.loadFromXML(openStream);
        return properties;
    }
}
