package JAVARuntime;

import com.itsmagic.engine.Engines.Engine.World.a;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:WorldController.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:WorldController.class
  classes.dex
 */
@ClassCategory(cat = {"World"})
public final class WorldController {

    public class AnonymousClass1 implements a.k {
        final WorldFile val$worldFile;

        public AnonymousClass1(final WorldFile val$worldFile) {
            this.val$worldFile = val$worldFile;
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [JAVARuntime.WorldFile, jb.a] */
        /* JADX WARN: Type inference failed for: r2v0, types: [JAVARuntime.WorldFile, jb.a] */
        @Override
        public com.itsmagic.engine.Engines.Engine.World.World onFailed() {
            Terminal.log("Failed to load world " + this.val$worldFile.getFilePath());
            Toast.showText("Failed to load world " + this.val$worldFile.getFilePath(), 0);
            return null;
        }

        @Override
        public void onSuccess() {
        }
    }

    public class AnonymousClass2 implements a.k {
        final WorldFile val$worldFile;

        public AnonymousClass2(final WorldFile val$worldFile) {
            this.val$worldFile = val$worldFile;
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [JAVARuntime.WorldFile, jb.a] */
        /* JADX WARN: Type inference failed for: r2v0, types: [JAVARuntime.WorldFile, jb.a] */
        @Override
        public com.itsmagic.engine.Engines.Engine.World.World onFailed() {
            Terminal.log("Failed to load world " + this.val$worldFile.getFilePath());
            Toast.showText("Failed to load world " + this.val$worldFile.getFilePath(), 0);
            return null;
        }

        @Override
        public void onSuccess() {
        }
    }

    private WorldController() {
    }

    public static void loadWorld(WorldFile worldFile) {
    }

    public static void loadWorldAsync(WorldFile worldFile) {
    }

    public static SpatialObject findObject(String str) {
        return null;
    }

    public static List<SpatialObject> getObjectList() {
        return null;
    }

    public static int getObjectsCount() {
        return 0;
    }

    public static SpatialObject getObject(int i10) {
        return null;
    }

    public static <T extends Component> T findFirstComponent(Class<T> cls) {
        return null;
    }

    public static <T extends Component> T findFirstActiveComponent(Class<T> cls) {
        return null;
    }

    @DeprecatedInfo(info = {"use listAllComponents(Class type) instead of title, the performance its much better"})
    @Deprecated
    public static List<Component> listAllComponents(String str) {
        return null;
    }

    public static <T extends Component> List<T> listAllComponents(Class<T> cls) {
        return null;
    }

    public static void sendEvent(String str) {
    }

    public static void sendEvent(String str, int i10) {
    }

    public static void sendEvent(String str, float f10) {
    }

    public static void sendEvent(String str, String str2) {
    }

    public static void sendEvent(String str, boolean z10) {
    }

    public static void sendEvent(String str, Object... objArr) {
    }

    public static float getLoadPercent() {
        return 0.0f;
    }

    public static float getLoadProgress() {
        return 0.0f;
    }

    public static int getLoadedCount() {
        return 0;
    }

    public static int getLoadTotal() {
        return 0;
    }

    public static String getLoadMessage() {
        return null;
    }

    public static boolean isLoaded() {
        return false;
    }

    public static boolean isLoading() {
        return false;
    }

    public static GraphicsSettings getGraphicsSettings() {
        return null;
    }

    public static PhysicsSettings getPhysicsSettings() {
        return null;
    }

    public static SpatialObject findObjectWithTag(String str) {
        return null;
    }

    public static List<SpatialObject> findObjectsWithTag(String str) {
        return null;
    }

    public static SpatialObject findRandomObjectWithTag(String str) {
        return null;
    }

    public static int countObjectsWithTag(String str) {
        return 0;
    }

    public static boolean hasObjectsWithTag(String str) {
        return false;
    }
}
