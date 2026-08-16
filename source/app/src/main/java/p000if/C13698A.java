package p000if;

import com.jme3.asset.AssetInfo;
import com.jme3.asset.AssetLoader;
import java.nio.charset.StandardCharsets;
import java.util.Scanner;
import java.util.logging.Logger;

public final class C13698A implements AssetLoader {

    public static final Logger f92058a = Logger.getLogger(C13698A.class.getName());

    @Override
    public Object load(AssetInfo assetInfo) {
        Scanner scanner = new Scanner(assetInfo.openStream(), StandardCharsets.UTF_8.name());
        try {
            scanner.useDelimiter("\\Z");
            String next = scanner.next();
            scanner.close();
            return next;
        } catch (Throwable th2) {
            try {
                scanner.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }
}
