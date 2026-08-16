package android.service.carrier;

import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/carrier/CarrierMessagingService.class
 */
public abstract class CarrierMessagingService extends Service {
    public static final int DOWNLOAD_STATUS_ERROR = 2;
    public static final int DOWNLOAD_STATUS_OK = 0;
    public static final int DOWNLOAD_STATUS_RETRY_ON_CARRIER_NETWORK = 1;
    public static final int RECEIVE_OPTIONS_DEFAULT = 0;
    public static final int RECEIVE_OPTIONS_DROP = 1;
    public static final int RECEIVE_OPTIONS_SKIP_NOTIFY_WHEN_CREDENTIAL_PROTECTED_STORAGE_UNAVAILABLE = 2;
    public static final int SEND_FLAG_REQUEST_DELIVERY_STATUS = 1;
    public static final int SEND_STATUS_ERROR = 2;
    public static final int SEND_STATUS_OK = 0;
    public static final int SEND_STATUS_RETRY_ON_CARRIER_NETWORK = 1;
    public static final String SERVICE_INTERFACE = "android.service.carrier.CarrierMessagingService";

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/carrier/CarrierMessagingService$ResultCallback.class
 */
    public interface ResultCallback<T> {
        void onReceiveResult(T t10) throws RemoteException;
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/carrier/CarrierMessagingService$SendMmsResult.class
 */
    public static final class SendMmsResult {
        public SendMmsResult(int sendStatus, byte[] sendConfPdu) {
            throw new RuntimeException("Stub!");
        }

        public int getSendStatus() {
            throw new RuntimeException("Stub!");
        }

        public byte[] getSendConfPdu() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/carrier/CarrierMessagingService$SendSmsResult.class
 */
    public static final class SendSmsResult {
        public SendSmsResult(int sendStatus, int messageRef) {
            throw new RuntimeException("Stub!");
        }

        public int getMessageRef() {
            throw new RuntimeException("Stub!");
        }

        public int getSendStatus() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/carrier/CarrierMessagingService$SendMultipartSmsResult.class
 */
    public static final class SendMultipartSmsResult {
        public SendMultipartSmsResult(int sendStatus, int[] messageRefs) {
            throw new RuntimeException("Stub!");
        }

        public int[] getMessageRefs() {
            throw new RuntimeException("Stub!");
        }

        public int getSendStatus() {
            throw new RuntimeException("Stub!");
        }
    }

    public CarrierMessagingService() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void onFilterSms(MessagePdu pdu, String format, int destPort, int subId, ResultCallback<Boolean> callback) {
        throw new RuntimeException("Stub!");
    }

    public void onReceiveTextSms(MessagePdu pdu, String format, int destPort, int subId, ResultCallback<Integer> callback) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void onSendTextSms(String text, int subId, String destAddress, ResultCallback<SendSmsResult> callback) {
        throw new RuntimeException("Stub!");
    }

    public void onSendTextSms(String text, int subId, String destAddress, int sendSmsFlag, ResultCallback<SendSmsResult> callback) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void onSendDataSms(byte[] data, int subId, String destAddress, int destPort, ResultCallback<SendSmsResult> callback) {
        throw new RuntimeException("Stub!");
    }

    public void onSendDataSms(byte[] data, int subId, String destAddress, int destPort, int sendSmsFlag, ResultCallback<SendSmsResult> callback) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void onSendMultipartTextSms(List<String> parts, int subId, String destAddress, ResultCallback<SendMultipartSmsResult> callback) {
        throw new RuntimeException("Stub!");
    }

    public void onSendMultipartTextSms(List<String> parts, int subId, String destAddress, int sendSmsFlag, ResultCallback<SendMultipartSmsResult> callback) {
        throw new RuntimeException("Stub!");
    }

    public void onSendMms(Uri pduUri, int subId, Uri location, ResultCallback<SendMmsResult> callback) {
        throw new RuntimeException("Stub!");
    }

    public void onDownloadMms(Uri contentUri, int subId, Uri location, ResultCallback<Integer> callback) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public IBinder onBind(Intent intent) {
        throw new RuntimeException("Stub!");
    }
}
