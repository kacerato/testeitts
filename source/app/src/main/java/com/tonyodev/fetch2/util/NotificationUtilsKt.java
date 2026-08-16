package com.tonyodev.fetch2.util;

import android.content.Context;
import android.content.Intent;
import com.tonyodev.fetch2.DownloadNotification;
import com.tonyodev.fetch2.Fetch;
import com.tonyodev.fetch2.FetchIntent;
import com.tonyodev.fetch2.FetchNotificationManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.H;
import pf.I;

@t0({"SMAP\nNotificationUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationUtils.kt\ncom/tonyodev/fetch2/util/NotificationUtilsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,57:1\n1477#2:58\n1502#2,3:59\n1505#2,3:69\n1549#2:73\n1620#2,3:74\n372#3,7:62\n215#4:72\n216#4:77\n*S KotlinDebug\n*F\n+ 1 NotificationUtils.kt\ncom/tonyodev/fetch2/util/NotificationUtilsKt\n*L\n35#1:58\n35#1:59,3\n35#1:69,3\n37#1:73\n37#1:74,3\n35#1:62,7\n35#1:72\n35#1:77\n*E\n"})
public final class NotificationUtilsKt {
    public static final void onDownloadNotificationActionTriggered(@Nullable Context context, @Nullable Intent intent, @NotNull FetchNotificationManager fetchNotificationManager) {
        M.p(fetchNotificationManager, "fetchNotificationManager");
        if (context == null || intent == null) {
            return;
        }
        String stringExtra = intent.getStringExtra(FetchIntent.EXTRA_NAMESPACE);
        int intExtra = intent.getIntExtra(FetchIntent.EXTRA_DOWNLOAD_ID, -1);
        int intExtra2 = intent.getIntExtra(FetchIntent.EXTRA_ACTION_TYPE, -1);
        intent.getIntExtra(FetchIntent.EXTRA_NOTIFICATION_ID, -1);
        int intExtra3 = intent.getIntExtra(FetchIntent.EXTRA_NOTIFICATION_GROUP_ID, -1);
        boolean booleanExtra = intent.getBooleanExtra(FetchIntent.EXTRA_GROUP_ACTION, false);
        Collection parcelableArrayListExtra = intent.getParcelableArrayListExtra(FetchIntent.EXTRA_DOWNLOAD_NOTIFICATIONS);
        if (parcelableArrayListExtra == null) {
            parcelableArrayListExtra = H.J();
        }
        if (!booleanExtra) {
            if (stringExtra == null || stringExtra.length() == 0 || intExtra == -1 || intExtra2 == -1) {
                return;
            }
            Fetch fetchInstanceForNamespace = fetchNotificationManager.getFetchInstanceForNamespace(stringExtra);
            if (fetchInstanceForNamespace.isClosed()) {
                return;
            }
            if (intExtra2 == 0) {
                fetchInstanceForNamespace.pause(intExtra);
                return;
            }
            if (intExtra2 == 1) {
                fetchInstanceForNamespace.resume(intExtra);
                return;
            }
            if (intExtra2 == 2) {
                fetchInstanceForNamespace.delete(intExtra);
                return;
            } else if (intExtra2 == 4) {
                fetchInstanceForNamespace.cancel(intExtra);
                return;
            } else {
                if (intExtra2 != 5) {
                    return;
                }
                fetchInstanceForNamespace.retry(intExtra);
                return;
            }
        }
        if (intExtra3 == -1 || parcelableArrayListExtra.isEmpty()) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : parcelableArrayListExtra) {
            String namespace = ((DownloadNotification) obj).getNamespace();
            Object obj2 = linkedHashMap.get(namespace);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(namespace, obj2);
            }
            ((List) obj2).add(obj);
        }
        Iterator it = linkedHashMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            Iterable iterable = (Iterable) entry.getValue();
            ArrayList arrayList = new ArrayList(I.d0(iterable, 10));
            Iterator it2 = iterable.iterator();
            while (it2.hasNext()) {
                arrayList.add(Integer.valueOf(((DownloadNotification) it2.next()).getNotificationId()));
            }
            Fetch fetchInstanceForNamespace2 = fetchNotificationManager.getFetchInstanceForNamespace(str);
            if (!fetchInstanceForNamespace2.isClosed()) {
                switch (intExtra2) {
                    case 6:
                        fetchInstanceForNamespace2.pause(arrayList);
                        break;
                    case 7:
                        fetchInstanceForNamespace2.resume(arrayList);
                        break;
                    case 8:
                        fetchInstanceForNamespace2.cancel(arrayList);
                        break;
                    case 9:
                        fetchInstanceForNamespace2.delete(arrayList);
                        break;
                    case 10:
                        fetchInstanceForNamespace2.retry(arrayList);
                        break;
                }
            }
        }
    }
}
