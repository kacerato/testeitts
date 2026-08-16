package android.telephony;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telephony/ServiceState.class
 */
public class ServiceState implements Parcelable {
    public static final Parcelable.Creator<ServiceState> CREATOR = null;
    public static final int STATE_EMERGENCY_ONLY = 2;
    public static final int STATE_IN_SERVICE = 0;
    public static final int STATE_OUT_OF_SERVICE = 1;
    public static final int STATE_POWER_OFF = 3;

    public ServiceState() {
        throw new RuntimeException("Stub!");
    }

    public ServiceState(ServiceState s10) {
        throw new RuntimeException("Stub!");
    }

    public ServiceState(Parcel in2) {
        throw new RuntimeException("Stub!");
    }

    protected void copyFrom(ServiceState s10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel out, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    public int getState() {
        throw new RuntimeException("Stub!");
    }

    public boolean getRoaming() {
        throw new RuntimeException("Stub!");
    }

    public String getOperatorAlphaLong() {
        throw new RuntimeException("Stub!");
    }

    public String getOperatorAlphaShort() {
        throw new RuntimeException("Stub!");
    }

    public String getOperatorNumeric() {
        throw new RuntimeException("Stub!");
    }

    public boolean getIsManualSelection() {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public void setStateOutOfService() {
        throw new RuntimeException("Stub!");
    }

    public void setStateOff() {
        throw new RuntimeException("Stub!");
    }

    public void setState(int state) {
        throw new RuntimeException("Stub!");
    }

    public void setRoaming(boolean roaming) {
        throw new RuntimeException("Stub!");
    }

    public void setOperatorName(String longName, String shortName, String numeric) {
        throw new RuntimeException("Stub!");
    }

    public void setIsManualSelection(boolean isManual) {
        throw new RuntimeException("Stub!");
    }
}
