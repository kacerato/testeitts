package com.bumptech.glide.load.engine;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

public class w {

    public boolean f59296a;

    public final Handler f59297b = new Handler(Looper.getMainLooper(), new a());

    public static final class a implements Handler.Callback {

        public static final int f59298c = 1;

        @Override
        public boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            ((t) message.obj).recycle();
            return true;
        }
    }

    public synchronized void a(t<?> tVar, boolean z10) {
        try {
            if (!this.f59296a && !z10) {
                this.f59296a = true;
                tVar.recycle();
                this.f59296a = false;
            }
            this.f59297b.obtainMessage(1, tVar).sendToTarget();
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
