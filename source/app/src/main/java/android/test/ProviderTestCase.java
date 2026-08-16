package android.test;

import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.Context;
import android.test.mock.MockContentResolver;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/test/ProviderTestCase.class
 */
@Deprecated
public abstract class ProviderTestCase<T extends ContentProvider> extends InstrumentationTestCase {
    public ProviderTestCase(Class<T> providerClass, String providerAuthority) {
        throw new RuntimeException("Stub!");
    }

    public T getProvider() {
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

    public MockContentResolver getMockContentResolver() {
        throw new RuntimeException("Stub!");
    }

    public IsolatedContext getMockContext() {
        throw new RuntimeException("Stub!");
    }

    public static <T extends ContentProvider> ContentResolver newResolverWithContentProviderFromSql(Context targetContext, Class<T> providerClass, String authority, String databaseName, int databaseVersion, String sql) throws IllegalAccessException, InstantiationException {
        throw new RuntimeException("Stub!");
    }
}
