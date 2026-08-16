package android.content.pm;

import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.util.Printer;
import java.util.Comparator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/pm/PackageItemInfo.class
 */
public class PackageItemInfo {
    public int banner;
    public int icon;
    public int labelRes;
    public int logo;
    public Bundle metaData;
    public String name;
    public CharSequence nonLocalizedLabel;
    public String packageName;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/pm/PackageItemInfo$DisplayNameComparator.class
 */
    public static class DisplayNameComparator implements Comparator<PackageItemInfo> {
        public DisplayNameComparator(PackageManager pm2) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public final int compare(PackageItemInfo aa2, PackageItemInfo ab2) {
            throw new RuntimeException("Stub!");
        }
    }

    public PackageItemInfo() {
        throw new RuntimeException("Stub!");
    }

    public PackageItemInfo(PackageItemInfo orig) {
        throw new RuntimeException("Stub!");
    }

    protected PackageItemInfo(Parcel source) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence loadLabel(PackageManager pm2) {
        throw new RuntimeException("Stub!");
    }

    public Drawable loadIcon(PackageManager pm2) {
        throw new RuntimeException("Stub!");
    }

    public Drawable loadUnbadgedIcon(PackageManager pm2) {
        throw new RuntimeException("Stub!");
    }

    public Drawable loadBanner(PackageManager pm2) {
        throw new RuntimeException("Stub!");
    }

    public Drawable loadLogo(PackageManager pm2) {
        throw new RuntimeException("Stub!");
    }

    public XmlResourceParser loadXmlMetaData(PackageManager pm2, String name) {
        throw new RuntimeException("Stub!");
    }

    protected void dumpFront(Printer pw, String prefix) {
        throw new RuntimeException("Stub!");
    }

    protected void dumpBack(Printer pw, String prefix) {
        throw new RuntimeException("Stub!");
    }

    public void writeToParcel(Parcel dest, int parcelableFlags) {
        throw new RuntimeException("Stub!");
    }
}
