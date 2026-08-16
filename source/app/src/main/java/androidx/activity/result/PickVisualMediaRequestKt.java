package androidx.activity.result;

import androidx.activity.result.PickVisualMediaRequest;
import androidx.activity.result.contract.ActivityResultContracts;
import kotlin.jvm.internal.M;

public final class PickVisualMediaRequestKt {
    public static final PickVisualMediaRequest PickVisualMediaRequest(ActivityResultContracts.PickVisualMedia.VisualMediaType mediaType) {
        M.p(mediaType, "mediaType");
        return new PickVisualMediaRequest.Builder().setMediaType(mediaType).build();
    }

    public static PickVisualMediaRequest PickVisualMediaRequest$default(ActivityResultContracts.PickVisualMedia.VisualMediaType visualMediaType, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            visualMediaType = ActivityResultContracts.PickVisualMedia.ImageAndVideo.INSTANCE;
        }
        return PickVisualMediaRequest(visualMediaType);
    }
}
