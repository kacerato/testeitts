package android.provider;

import android.accounts.Account;
import android.content.ContentProviderClient;
import android.content.ContentProviderOperation;
import android.net.Uri;
import android.os.RemoteException;
import android.util.Pair;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/provider/SyncStateContract.class
 */
public class SyncStateContract {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/provider/SyncStateContract$Columns.class
 */
    public interface Columns extends BaseColumns {
        public static final String ACCOUNT_NAME = "account_name";
        public static final String ACCOUNT_TYPE = "account_type";
        public static final String DATA = "data";
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/provider/SyncStateContract$Constants.class
 */
    public static class Constants implements Columns {
        public static final String CONTENT_DIRECTORY = "syncstate";

        public Constants() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/provider/SyncStateContract$Helpers.class
 */
    public static final class Helpers {
        public Helpers() {
            throw new RuntimeException("Stub!");
        }

        public static byte[] get(ContentProviderClient provider, Uri uri, Account account) throws RemoteException {
            throw new RuntimeException("Stub!");
        }

        public static void set(ContentProviderClient provider, Uri uri, Account account, byte[] data) throws RemoteException {
            throw new RuntimeException("Stub!");
        }

        public static Uri insert(ContentProviderClient provider, Uri uri, Account account, byte[] data) throws RemoteException {
            throw new RuntimeException("Stub!");
        }

        public static void update(ContentProviderClient provider, Uri uri, byte[] data) throws RemoteException {
            throw new RuntimeException("Stub!");
        }

        public static Pair<Uri, byte[]> getWithUri(ContentProviderClient provider, Uri uri, Account account) throws RemoteException {
            throw new RuntimeException("Stub!");
        }

        public static ContentProviderOperation newSetOperation(Uri uri, Account account, byte[] data) {
            throw new RuntimeException("Stub!");
        }

        public static ContentProviderOperation newUpdateOperation(Uri uri, byte[] data) {
            throw new RuntimeException("Stub!");
        }
    }

    public SyncStateContract() {
        throw new RuntimeException("Stub!");
    }
}
