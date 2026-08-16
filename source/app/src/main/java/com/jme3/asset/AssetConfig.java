package com.jme3.asset;

import b3.s;
import com.jme3.util.res.Resources;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Locale;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.openjdk.tools.doclint.DocLint;
import yd.C16181m;

public final class AssetConfig {
    private static final Logger logger = Logger.getLogger(AssetConfig.class.getName());

    private AssetConfig() {
    }

    private static Class acquireClass(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static void loadText(AssetManager assetManager, URL url) throws IOException {
        InputStream openStream = url.openStream();
        try {
            Scanner scanner = new Scanner(openStream, "UTF-8");
            scanner.useLocale(Locale.US);
            while (scanner.hasNext()) {
                String next = scanner.next();
                if (next.equals("LOADER")) {
                    String next2 = scanner.next();
                    String next3 = scanner.next();
                    if (!next3.equals(s.f32937c)) {
                        throw new IOException("Expected ':', got '" + next3 + "'");
                    }
                    String[] split = scanner.nextLine().split(DocLint.SEPARATOR);
                    for (int i10 = 0; i10 < split.length; i10++) {
                        split[i10] = split[i10].trim();
                    }
                    Class<? extends AssetLoader> acquireClass = acquireClass(next2);
                    if (acquireClass != null) {
                        assetManager.registerLoader(acquireClass, split);
                    } else {
                        logger.log(Level.WARNING, "Cannot find loader {0}", next2);
                    }
                } else if (next.equals("LOCATOR")) {
                    String next4 = scanner.next();
                    String trim = scanner.nextLine().trim();
                    Class<? extends AssetLocator> acquireClass2 = acquireClass(trim);
                    if (acquireClass2 != null) {
                        assetManager.registerLocator(next4, acquireClass2);
                    } else {
                        logger.log(Level.WARNING, "Cannot find locator {0}", trim);
                    }
                } else if (next.equals("INCLUDE")) {
                    String trim2 = scanner.nextLine().trim();
                    URL resource = Resources.getResource(trim2);
                    if (resource != null) {
                        loadText(assetManager, resource);
                    } else {
                        logger.log(Level.WARNING, "Cannot find config include {0}", trim2);
                    }
                } else {
                    if (!next.trim().startsWith(C16181m.f130230g)) {
                        throw new IOException("Expected command, got '" + next + "'");
                    }
                    scanner.nextLine();
                }
            }
            if (openStream != null) {
                openStream.close();
            }
        } catch (Throwable th2) {
            if (openStream != null) {
                openStream.close();
            }
            throw th2;
        }
    }
}
