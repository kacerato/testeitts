package com.google.android.gms.internal.auth;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;

public interface n3 extends IInterface {
    void s(Status status, @Nullable Bundle bundle) throws RemoteException;
}
