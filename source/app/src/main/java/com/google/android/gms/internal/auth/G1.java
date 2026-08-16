package com.google.android.gms.internal.auth;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import javax.annotation.Nullable;
import s0.C15222b;
import s0.C15223c;

public interface G1 extends IInterface {
    Bundle L0(String str, Bundle bundle) throws RemoteException;

    @Nullable
    Bundle S0(Account account, String str, Bundle bundle) throws RemoteException;

    @Nullable
    Bundle d0(Account account) throws RemoteException;

    Bundle n0(String str) throws RemoteException;

    C15223c x0(C15222b c15222b) throws RemoteException;
}
