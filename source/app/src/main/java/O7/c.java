package O7;

import android.content.ClipData;
import android.content.Intent;
import android.net.Uri;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;

public final class c {
    public static List<Uri> a(Intent intent) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (intent == null) {
            return steppedArrayList;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        String action = intent.getAction();
        int i10 = 0;
        if (Intent.ACTION_SEND.equals(action)) {
            Uri uri = (Uri) intent.getParcelableExtra(Intent.EXTRA_STREAM);
            if (uri != null) {
                linkedHashSet.add(uri);
            }
            ClipData clipData = intent.getClipData();
            if (clipData != null) {
                while (i10 < clipData.getItemCount()) {
                    ClipData.Item itemAt = clipData.getItemAt(i10);
                    if (itemAt != null && itemAt.getUri() != null) {
                        linkedHashSet.add(itemAt.getUri());
                    }
                    i10++;
                }
            }
        } else if (Intent.ACTION_SEND_MULTIPLE.equals(action)) {
            ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra(Intent.EXTRA_STREAM);
            if (parcelableArrayListExtra != null) {
                linkedHashSet.addAll(parcelableArrayListExtra);
            }
            ClipData clipData2 = intent.getClipData();
            if (clipData2 != null) {
                while (i10 < clipData2.getItemCount()) {
                    ClipData.Item itemAt2 = clipData2.getItemAt(i10);
                    if (itemAt2 != null && itemAt2.getUri() != null) {
                        linkedHashSet.add(itemAt2.getUri());
                    }
                    i10++;
                }
            }
        }
        if (linkedHashSet.isEmpty() && intent.getData() != null) {
            linkedHashSet.add(intent.getData());
        }
        steppedArrayList.addAll(linkedHashSet);
        return steppedArrayList;
    }
}
