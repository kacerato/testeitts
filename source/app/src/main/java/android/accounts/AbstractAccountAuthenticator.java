package android.accounts;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/accounts/AbstractAccountAuthenticator.class
 */
public abstract class AbstractAccountAuthenticator {
    public static final String KEY_CUSTOM_TOKEN_EXPIRY = "android.accounts.expiry";

    public abstract Bundle editProperties(AccountAuthenticatorResponse accountAuthenticatorResponse, String str);

    public abstract Bundle addAccount(AccountAuthenticatorResponse accountAuthenticatorResponse, String str, String str2, String[] strArr, Bundle bundle) throws NetworkErrorException;

    public abstract Bundle confirmCredentials(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, Bundle bundle) throws NetworkErrorException;

    public abstract Bundle getAuthToken(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String str, Bundle bundle) throws NetworkErrorException;

    public abstract String getAuthTokenLabel(String str);

    public abstract Bundle updateCredentials(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String str, Bundle bundle) throws NetworkErrorException;

    public abstract Bundle hasFeatures(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String[] strArr) throws NetworkErrorException;

    public AbstractAccountAuthenticator(Context context) {
        throw new RuntimeException("Stub!");
    }

    public final IBinder getIBinder() {
        throw new RuntimeException("Stub!");
    }

    public Bundle getAccountRemovalAllowed(AccountAuthenticatorResponse response, Account account) throws NetworkErrorException {
        throw new RuntimeException("Stub!");
    }

    public Bundle getAccountCredentialsForCloning(AccountAuthenticatorResponse response, Account account) throws NetworkErrorException {
        throw new RuntimeException("Stub!");
    }

    public Bundle addAccountFromCredentials(AccountAuthenticatorResponse response, Account account, Bundle accountCredentials) throws NetworkErrorException {
        throw new RuntimeException("Stub!");
    }

    public Bundle startAddAccountSession(AccountAuthenticatorResponse response, String accountType, String authTokenType, String[] requiredFeatures, Bundle options) throws NetworkErrorException {
        throw new RuntimeException("Stub!");
    }

    public Bundle startUpdateCredentialsSession(AccountAuthenticatorResponse response, Account account, String authTokenType, Bundle options) throws NetworkErrorException {
        throw new RuntimeException("Stub!");
    }

    public Bundle finishSession(AccountAuthenticatorResponse response, String accountType, Bundle sessionBundle) throws NetworkErrorException {
        throw new RuntimeException("Stub!");
    }

    public Bundle isCredentialsUpdateSuggested(AccountAuthenticatorResponse response, Account account, String statusToken) throws NetworkErrorException {
        throw new RuntimeException("Stub!");
    }
}
