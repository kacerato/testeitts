package android.net.sip;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/sip/SipRegistrationListener.class
 */
public interface SipRegistrationListener {
    void onRegistering(String str);

    void onRegistrationDone(String str, long j10);

    void onRegistrationFailed(String str, int i10, String str2);
}
