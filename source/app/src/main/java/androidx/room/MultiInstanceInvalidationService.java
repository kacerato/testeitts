package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import androidx.room.IMultiInstanceInvalidationService;
import java.util.HashMap;

public class MultiInstanceInvalidationService extends Service {
    int mMaxClientId = 0;
    final HashMap<Integer, String> mClientNames = new HashMap<>();
    final RemoteCallbackList<IMultiInstanceInvalidationCallback> mCallbackList = new RemoteCallbackList<IMultiInstanceInvalidationCallback>() {
        @Override
        public void onCallbackDied(IMultiInstanceInvalidationCallback callback, Object cookie) {
            HashMap<Integer, String> hashMap = MultiInstanceInvalidationService.this.mClientNames;
            Integer num = (Integer) cookie;
            num.intValue();
            hashMap.remove(num);
        }
    };
    private final IMultiInstanceInvalidationService.Stub mBinder = new IMultiInstanceInvalidationService.Stub() {
        @Override
        public void broadcastInvalidation(int clientId, String[] tables) {
            synchronized (MultiInstanceInvalidationService.this.mCallbackList) {
                try {
                    String str = MultiInstanceInvalidationService.this.mClientNames.get(Integer.valueOf(clientId));
                    if (str == null) {
                        Log.w("ROOM", "Remote invalidation client ID not registered");
                        return;
                    }
                    int beginBroadcast = MultiInstanceInvalidationService.this.mCallbackList.beginBroadcast();
                    for (int i10 = 0; i10 < beginBroadcast; i10++) {
                        try {
                            Integer num = (Integer) MultiInstanceInvalidationService.this.mCallbackList.getBroadcastCookie(i10);
                            int intValue = num.intValue();
                            String str2 = MultiInstanceInvalidationService.this.mClientNames.get(num);
                            if (clientId != intValue && str.equals(str2)) {
                                try {
                                    MultiInstanceInvalidationService.this.mCallbackList.getBroadcastItem(i10).onInvalidation(tables);
                                } catch (RemoteException e10) {
                                    Log.w("ROOM", "Error invoking a remote callback", e10);
                                }
                            }
                        } finally {
                            MultiInstanceInvalidationService.this.mCallbackList.finishBroadcast();
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public int registerCallback(IMultiInstanceInvalidationCallback callback, String name) {
            if (name == null) {
                return 0;
            }
            synchronized (MultiInstanceInvalidationService.this.mCallbackList) {
                try {
                    MultiInstanceInvalidationService multiInstanceInvalidationService = MultiInstanceInvalidationService.this;
                    int i10 = multiInstanceInvalidationService.mMaxClientId + 1;
                    multiInstanceInvalidationService.mMaxClientId = i10;
                    if (multiInstanceInvalidationService.mCallbackList.register(callback, Integer.valueOf(i10))) {
                        MultiInstanceInvalidationService.this.mClientNames.put(Integer.valueOf(i10), name);
                        return i10;
                    }
                    MultiInstanceInvalidationService multiInstanceInvalidationService2 = MultiInstanceInvalidationService.this;
                    multiInstanceInvalidationService2.mMaxClientId--;
                    return 0;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void unregisterCallback(IMultiInstanceInvalidationCallback callback, int clientId) {
            synchronized (MultiInstanceInvalidationService.this.mCallbackList) {
                MultiInstanceInvalidationService.this.mCallbackList.unregister(callback);
                MultiInstanceInvalidationService.this.mClientNames.remove(Integer.valueOf(clientId));
            }
        }
    };

    @Override
    public IBinder onBind(Intent intent) {
        return this.mBinder;
    }
}
