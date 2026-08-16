package android.widget;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/RemoteViewsService.class
 */
public abstract class RemoteViewsService extends Service {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/RemoteViewsService$RemoteViewsFactory.class
 */
    public interface RemoteViewsFactory {
        void onCreate();

        void onDataSetChanged();

        void onDestroy();

        int getCount();

        RemoteViews getViewAt(int i10);

        RemoteViews getLoadingView();

        int getViewTypeCount();

        long getItemId(int i10);

        boolean hasStableIds();
    }

    public abstract RemoteViewsFactory onGetViewFactory(Intent intent);

    public RemoteViewsService() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public IBinder onBind(Intent intent) {
        throw new RuntimeException("Stub!");
    }
}
