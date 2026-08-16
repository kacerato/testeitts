package android.test;

import android.content.Context;
import android.net.Uri;
import android.test.suitebuilder.annotation.Suppress;
import junit.framework.TestCase;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/test/AndroidTestCase.class
 */
@Deprecated
public class AndroidTestCase extends TestCase {
    protected Context mContext;

    public AndroidTestCase() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void setUp() throws Exception {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void tearDown() throws Exception {
        throw new RuntimeException("Stub!");
    }

    @Suppress
    public void testAndroidTestCaseSetupProperly() {
        throw new RuntimeException("Stub!");
    }

    public void setContext(Context context) {
        throw new RuntimeException("Stub!");
    }

    public Context getContext() {
        throw new RuntimeException("Stub!");
    }

    public void assertActivityRequiresPermission(String packageName, String className, String permission) {
        throw new RuntimeException("Stub!");
    }

    public void assertReadingContentUriRequiresPermission(Uri uri, String permission) {
        throw new RuntimeException("Stub!");
    }

    public void assertWritingContentUriRequiresPermission(Uri uri, String permission) {
        throw new RuntimeException("Stub!");
    }

    protected void scrubClass(Class<?> testCaseClass) throws IllegalAccessException {
        throw new RuntimeException("Stub!");
    }
}
