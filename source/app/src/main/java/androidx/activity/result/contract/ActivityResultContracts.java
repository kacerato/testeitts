package androidx.activity.result.contract;

import Lf.o;
import Vf.u;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.ext.SdkExtensions;
import android.provider.ContactsContract;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.PickVisualMediaRequest;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.core.content.ContextCompat;
import com.itsmagic.engine.Activities.Editor.Extensions.ManagerDocumentsProvider;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import nf.InterfaceC14412g0;
import nf.InterfaceC14427o;
import nf.Z;
import nf.v0;
import pf.C14960A;
import pf.H;
import pf.S;
import pf.n0;
import pf.o0;

public final class ActivityResultContracts {

    public static final class Api33Impl {
        public static final Api33Impl INSTANCE = new Api33Impl();

        private Api33Impl() {
        }

        public final int getPickImagesMaxLimit() {
            return MediaStore.getPickImagesMaxLimit();
        }
    }

    public static class CaptureVideo extends ActivityResultContract<Uri, Boolean> {
        @Override
        public final ActivityResultContract.SynchronousResult<Boolean> getSynchronousResult(Context context, Uri input) {
            M.p(context, "context");
            M.p(input, "input");
            return null;
        }

        @Override
        public Intent createIntent(Context context, Uri input) {
            M.p(context, "context");
            M.p(input, "input");
            Intent putExtra = new Intent(MediaStore.ACTION_VIDEO_CAPTURE).putExtra("output", input);
            M.o(putExtra, "Intent(MediaStore.ACTION\u2026tore.EXTRA_OUTPUT, input)");
            return putExtra;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final Boolean parseResult(int i10, Intent intent) {
            return Boolean.valueOf(i10 == -1);
        }
    }

    public static class CreateDocument extends ActivityResultContract<String, Uri> {
        private final String mimeType;

        public CreateDocument(String mimeType) {
            M.p(mimeType, "mimeType");
            this.mimeType = mimeType;
        }

        @Override
        public final ActivityResultContract.SynchronousResult<Uri> getSynchronousResult(Context context, String input) {
            M.p(context, "context");
            M.p(input, "input");
            return null;
        }

        @Override
        public Intent createIntent(Context context, String input) {
            M.p(context, "context");
            M.p(input, "input");
            Intent putExtra = new Intent(Intent.ACTION_CREATE_DOCUMENT).setType(this.mimeType).putExtra(Intent.EXTRA_TITLE, input);
            M.o(putExtra, "Intent(Intent.ACTION_CRE\u2026ntent.EXTRA_TITLE, input)");
            return putExtra;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final Uri parseResult(int i10, Intent intent) {
            if (i10 != -1) {
                intent = null;
            }
            if (intent != null) {
                return intent.getData();
            }
            return null;
        }

        @InterfaceC14427o(message = "Using a wildcard mime type with CreateDocument is not recommended as it breaks the automatic handling of file extensions. Instead, specify the mime type by using the constructor that takes an concrete mime type (e.g.., CreateDocument(\"image/png\")).", replaceWith = @InterfaceC14412g0(expression = "CreateDocument(\"todo/todo\")", imports = {}))
        public CreateDocument() {
            this(ManagerDocumentsProvider.f70102b);
        }
    }

    public static class GetContent extends ActivityResultContract<String, Uri> {
        @Override
        public final ActivityResultContract.SynchronousResult<Uri> getSynchronousResult(Context context, String input) {
            M.p(context, "context");
            M.p(input, "input");
            return null;
        }

        @Override
        public Intent createIntent(Context context, String input) {
            M.p(context, "context");
            M.p(input, "input");
            Intent type = new Intent(Intent.ACTION_GET_CONTENT).addCategory(Intent.CATEGORY_OPENABLE).setType(input);
            M.o(type, "Intent(Intent.ACTION_GET\u2026          .setType(input)");
            return type;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final Uri parseResult(int i10, Intent intent) {
            if (i10 != -1) {
                intent = null;
            }
            if (intent != null) {
                return intent.getData();
            }
            return null;
        }
    }

    public static class GetMultipleContents extends ActivityResultContract<String, List<Uri>> {
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            public Companion(C14026x c14026x) {
                this();
            }

            public final List<Uri> getClipDataUris$activity_release(Intent intent) {
                M.p(intent, "<this>");
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                Uri data = intent.getData();
                if (data != null) {
                    linkedHashSet.add(data);
                }
                ClipData clipData = intent.getClipData();
                if (clipData == null && linkedHashSet.isEmpty()) {
                    return H.J();
                }
                if (clipData != null) {
                    int itemCount = clipData.getItemCount();
                    for (int i10 = 0; i10 < itemCount; i10++) {
                        Uri uri = clipData.getItemAt(i10).getUri();
                        if (uri != null) {
                            linkedHashSet.add(uri);
                        }
                    }
                }
                return new ArrayList(linkedHashSet);
            }

            private Companion() {
            }
        }

        @Override
        public final ActivityResultContract.SynchronousResult<List<Uri>> getSynchronousResult(Context context, String input) {
            M.p(context, "context");
            M.p(input, "input");
            return null;
        }

        @Override
        public Intent createIntent(Context context, String input) {
            M.p(context, "context");
            M.p(input, "input");
            Intent putExtra = new Intent(Intent.ACTION_GET_CONTENT).addCategory(Intent.CATEGORY_OPENABLE).setType(input).putExtra(Intent.EXTRA_ALLOW_MULTIPLE, true);
            M.o(putExtra, "Intent(Intent.ACTION_GET\u2026TRA_ALLOW_MULTIPLE, true)");
            return putExtra;
        }

        @Override
        public final List<Uri> parseResult(int i10, Intent intent) {
            List<Uri> clipDataUris$activity_release;
            if (i10 != -1) {
                intent = null;
            }
            return (intent == null || (clipDataUris$activity_release = Companion.getClipDataUris$activity_release(intent)) == null) ? H.J() : clipDataUris$activity_release;
        }
    }

    public static class OpenDocument extends ActivityResultContract<String[], Uri> {
        @Override
        public final ActivityResultContract.SynchronousResult<Uri> getSynchronousResult(Context context, String[] input) {
            M.p(context, "context");
            M.p(input, "input");
            return null;
        }

        @Override
        public Intent createIntent(Context context, String[] input) {
            M.p(context, "context");
            M.p(input, "input");
            Intent type = new Intent(Intent.ACTION_OPEN_DOCUMENT).putExtra(Intent.EXTRA_MIME_TYPES, input).setType(ManagerDocumentsProvider.f70102b);
            M.o(type, "Intent(Intent.ACTION_OPE\u2026          .setType(\"*/*\")");
            return type;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final Uri parseResult(int i10, Intent intent) {
            if (i10 != -1) {
                intent = null;
            }
            if (intent != null) {
                return intent.getData();
            }
            return null;
        }
    }

    public static class OpenDocumentTree extends ActivityResultContract<Uri, Uri> {
        @Override
        public final ActivityResultContract.SynchronousResult<Uri> getSynchronousResult(Context context, Uri uri) {
            M.p(context, "context");
            return null;
        }

        @Override
        public Intent createIntent(Context context, Uri uri) {
            M.p(context, "context");
            Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT_TREE);
            if (uri != null) {
                intent.putExtra(DocumentsContract.EXTRA_INITIAL_URI, uri);
            }
            return intent;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final Uri parseResult(int i10, Intent intent) {
            if (i10 != -1) {
                intent = null;
            }
            if (intent != null) {
                return intent.getData();
            }
            return null;
        }
    }

    public static class OpenMultipleDocuments extends ActivityResultContract<String[], List<Uri>> {
        @Override
        public final ActivityResultContract.SynchronousResult<List<Uri>> getSynchronousResult(Context context, String[] input) {
            M.p(context, "context");
            M.p(input, "input");
            return null;
        }

        @Override
        public Intent createIntent(Context context, String[] input) {
            M.p(context, "context");
            M.p(input, "input");
            Intent type = new Intent(Intent.ACTION_OPEN_DOCUMENT).putExtra(Intent.EXTRA_MIME_TYPES, input).putExtra(Intent.EXTRA_ALLOW_MULTIPLE, true).setType(ManagerDocumentsProvider.f70102b);
            M.o(type, "Intent(Intent.ACTION_OPE\u2026          .setType(\"*/*\")");
            return type;
        }

        @Override
        public final List<Uri> parseResult(int i10, Intent intent) {
            List<Uri> clipDataUris$activity_release;
            if (i10 != -1) {
                intent = null;
            }
            return (intent == null || (clipDataUris$activity_release = GetMultipleContents.Companion.getClipDataUris$activity_release(intent)) == null) ? H.J() : clipDataUris$activity_release;
        }
    }

    public static final class PickContact extends ActivityResultContract<Void, Uri> {
        @Override
        public Intent createIntent(Context context, Void r22) {
            M.p(context, "context");
            Intent type = new Intent(Intent.ACTION_PICK).setType(ContactsContract.Contacts.CONTENT_TYPE);
            M.o(type, "Intent(Intent.ACTION_PIC\u2026ct.Contacts.CONTENT_TYPE)");
            return type;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Uri parseResult(int i10, Intent intent) {
            if (i10 != -1) {
                intent = null;
            }
            if (intent != null) {
                return intent.getData();
            }
            return null;
        }
    }

    public static class PickMultipleVisualMedia extends ActivityResultContract<PickVisualMediaRequest, List<Uri>> {
        public static final Companion Companion = new Companion(null);
        private final int maxItems;

        public static final class Companion {
            public Companion(C14026x c14026x) {
                this();
            }

            public final int getMaxItems$activity_release() {
                if (!PickVisualMedia.Companion.isPhotoPickerAvailable() || Build.VERSION.SDK_INT < 33) {
                    return Integer.MAX_VALUE;
                }
                return Api33Impl.INSTANCE.getPickImagesMaxLimit();
            }

            private Companion() {
            }
        }

        public PickMultipleVisualMedia() {
            this(0, 1, null);
        }

        @Override
        public final ActivityResultContract.SynchronousResult<List<Uri>> getSynchronousResult(Context context, PickVisualMediaRequest input) {
            M.p(context, "context");
            M.p(input, "input");
            return null;
        }

        public PickMultipleVisualMedia(int i10, int i11, C14026x c14026x) {
            this((i11 & 1) != 0 ? Companion.getMaxItems$activity_release() : i10);
        }

        @Override
        public Intent createIntent(Context context, PickVisualMediaRequest input) {
            Intent intent;
            M.p(context, "context");
            M.p(input, "input");
            PickVisualMedia.Companion companion = PickVisualMedia.Companion;
            if (companion.isPhotoPickerAvailable()) {
                intent = new Intent("android.provider.action.PICK_IMAGES");
                intent.setType(companion.getVisualMimeType$activity_release(input.getMediaType()));
                if (Build.VERSION.SDK_INT >= 33 && this.maxItems > Api33Impl.INSTANCE.getPickImagesMaxLimit()) {
                    throw new IllegalArgumentException("Max items must be less or equals MediaStore.getPickImagesMaxLimit()");
                }
                intent.putExtra("android.provider.extra.PICK_IMAGES_MAX", this.maxItems);
            } else {
                intent = new Intent(Intent.ACTION_OPEN_DOCUMENT);
                intent.setType(companion.getVisualMimeType$activity_release(input.getMediaType()));
                intent.putExtra(Intent.EXTRA_ALLOW_MULTIPLE, true);
                if (intent.getType() == null) {
                    intent.setType(ManagerDocumentsProvider.f70102b);
                    intent.putExtra(Intent.EXTRA_MIME_TYPES, new String[]{"image/*", "video/*"});
                }
            }
            return intent;
        }

        @Override
        public final List<Uri> parseResult(int i10, Intent intent) {
            List<Uri> clipDataUris$activity_release;
            if (i10 != -1) {
                intent = null;
            }
            return (intent == null || (clipDataUris$activity_release = GetMultipleContents.Companion.getClipDataUris$activity_release(intent)) == null) ? H.J() : clipDataUris$activity_release;
        }

        public PickMultipleVisualMedia(int i10) {
            this.maxItems = i10;
            if (i10 <= 1) {
                throw new IllegalArgumentException("Max items must be higher than 1");
            }
        }
    }

    public static class PickVisualMedia extends ActivityResultContract<PickVisualMediaRequest, Uri> {
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            public Companion(C14026x c14026x) {
                this();
            }

            public final String getVisualMimeType$activity_release(VisualMediaType input) {
                M.p(input, "input");
                if (input instanceof ImageOnly) {
                    return "image/*";
                }
                if (input instanceof VideoOnly) {
                    return "video/*";
                }
                if (input instanceof SingleMimeType) {
                    return ((SingleMimeType) input).getMimeType();
                }
                if (input instanceof ImageAndVideo) {
                    return null;
                }
                throw new NoWhenBranchMatchedException();
            }

            @o
            public final boolean isPhotoPickerAvailable() {
                int extensionVersion;
                int i10 = Build.VERSION.SDK_INT;
                if (i10 >= 33) {
                    return true;
                }
                if (i10 >= 30) {
                    extensionVersion = SdkExtensions.getExtensionVersion(30);
                    if (extensionVersion >= 2) {
                        return true;
                    }
                }
                return false;
            }

            private Companion() {
            }
        }

        public static final class ImageAndVideo implements VisualMediaType {
            public static final ImageAndVideo INSTANCE = new ImageAndVideo();

            private ImageAndVideo() {
            }
        }

        public static final class ImageOnly implements VisualMediaType {
            public static final ImageOnly INSTANCE = new ImageOnly();

            private ImageOnly() {
            }
        }

        public static final class SingleMimeType implements VisualMediaType {
            private final String mimeType;

            public SingleMimeType(String mimeType) {
                M.p(mimeType, "mimeType");
                this.mimeType = mimeType;
            }

            public final String getMimeType() {
                return this.mimeType;
            }
        }

        public static final class VideoOnly implements VisualMediaType {
            public static final VideoOnly INSTANCE = new VideoOnly();

            private VideoOnly() {
            }
        }

        public interface VisualMediaType {
        }

        @o
        public static final boolean isPhotoPickerAvailable() {
            return Companion.isPhotoPickerAvailable();
        }

        @Override
        public final ActivityResultContract.SynchronousResult<Uri> getSynchronousResult(Context context, PickVisualMediaRequest input) {
            M.p(context, "context");
            M.p(input, "input");
            return null;
        }

        @Override
        public Intent createIntent(Context context, PickVisualMediaRequest input) {
            M.p(context, "context");
            M.p(input, "input");
            Companion companion = Companion;
            if (companion.isPhotoPickerAvailable()) {
                Intent intent = new Intent("android.provider.action.PICK_IMAGES");
                intent.setType(companion.getVisualMimeType$activity_release(input.getMediaType()));
                return intent;
            }
            Intent intent2 = new Intent(Intent.ACTION_OPEN_DOCUMENT);
            intent2.setType(companion.getVisualMimeType$activity_release(input.getMediaType()));
            if (intent2.getType() != null) {
                return intent2;
            }
            intent2.setType(ManagerDocumentsProvider.f70102b);
            intent2.putExtra(Intent.EXTRA_MIME_TYPES, new String[]{"image/*", "video/*"});
            return intent2;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final Uri parseResult(int i10, Intent intent) {
            if (i10 != -1) {
                intent = null;
            }
            if (intent != null) {
                return intent.getData();
            }
            return null;
        }
    }

    public static final class RequestMultiplePermissions extends ActivityResultContract<String[], Map<String, Boolean>> {
        public static final String ACTION_REQUEST_PERMISSIONS = "androidx.activity.result.contract.action.REQUEST_PERMISSIONS";
        public static final Companion Companion = new Companion(null);
        public static final String EXTRA_PERMISSIONS = "androidx.activity.result.contract.extra.PERMISSIONS";
        public static final String EXTRA_PERMISSION_GRANT_RESULTS = "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS";

        public static final class Companion {
            public Companion(C14026x c14026x) {
                this();
            }

            public final Intent createIntent$activity_release(String[] input) {
                M.p(input, "input");
                Intent putExtra = new Intent(RequestMultiplePermissions.ACTION_REQUEST_PERMISSIONS).putExtra(RequestMultiplePermissions.EXTRA_PERMISSIONS, input);
                M.o(putExtra, "Intent(ACTION_REQUEST_PE\u2026EXTRA_PERMISSIONS, input)");
                return putExtra;
            }

            private Companion() {
            }
        }

        @Override
        public Intent createIntent(Context context, String[] input) {
            M.p(context, "context");
            M.p(input, "input");
            return Companion.createIntent$activity_release(input);
        }

        @Override
        public ActivityResultContract.SynchronousResult<Map<String, Boolean>> getSynchronousResult(Context context, String[] input) {
            M.p(context, "context");
            M.p(input, "input");
            if (input.length == 0) {
                return new ActivityResultContract.SynchronousResult<>(o0.z());
            }
            for (String str : input) {
                if (ContextCompat.checkSelfPermission(context, str) != 0) {
                    return null;
                }
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(u.w(n0.j(input.length), 16));
            for (String str2 : input) {
                Z a10 = v0.a(str2, Boolean.TRUE);
                linkedHashMap.put(a10.e(), a10.f());
            }
            return new ActivityResultContract.SynchronousResult<>(linkedHashMap);
        }

        @Override
        public Map<String, Boolean> parseResult(int i10, Intent intent) {
            if (i10 != -1) {
                return o0.z();
            }
            if (intent == null) {
                return o0.z();
            }
            String[] stringArrayExtra = intent.getStringArrayExtra(EXTRA_PERMISSIONS);
            int[] intArrayExtra = intent.getIntArrayExtra(EXTRA_PERMISSION_GRANT_RESULTS);
            if (intArrayExtra != null && stringArrayExtra != null) {
                ArrayList arrayList = new ArrayList(intArrayExtra.length);
                for (int i11 : intArrayExtra) {
                    arrayList.add(Boolean.valueOf(i11 == 0));
                }
                return o0.D0(S.o6(C14960A.lb(stringArrayExtra), arrayList));
            }
            return o0.z();
        }
    }

    public static final class RequestPermission extends ActivityResultContract<String, Boolean> {
        @Override
        public Intent createIntent(Context context, String input) {
            M.p(context, "context");
            M.p(input, "input");
            return RequestMultiplePermissions.Companion.createIntent$activity_release(new String[]{input});
        }

        @Override
        public ActivityResultContract.SynchronousResult<Boolean> getSynchronousResult(Context context, String input) {
            M.p(context, "context");
            M.p(input, "input");
            if (ContextCompat.checkSelfPermission(context, input) == 0) {
                return new ActivityResultContract.SynchronousResult<>(Boolean.TRUE);
            }
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Boolean parseResult(int i10, Intent intent) {
            if (intent != null && i10 == -1) {
                int[] intArrayExtra = intent.getIntArrayExtra(RequestMultiplePermissions.EXTRA_PERMISSION_GRANT_RESULTS);
                boolean z10 = false;
                if (intArrayExtra != null) {
                    int length = intArrayExtra.length;
                    int i11 = 0;
                    while (true) {
                        if (i11 >= length) {
                            break;
                        }
                        if (intArrayExtra[i11] == 0) {
                            z10 = true;
                            break;
                        }
                        i11++;
                    }
                }
                return Boolean.valueOf(z10);
            }
            return Boolean.FALSE;
        }
    }

    public static final class StartActivityForResult extends ActivityResultContract<Intent, ActivityResult> {
        public static final Companion Companion = new Companion(null);
        public static final String EXTRA_ACTIVITY_OPTIONS_BUNDLE = "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE";

        public static final class Companion {
            public Companion(C14026x c14026x) {
                this();
            }

            private Companion() {
            }
        }

        @Override
        public Intent createIntent(Context context, Intent input) {
            M.p(context, "context");
            M.p(input, "input");
            return input;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public ActivityResult parseResult(int i10, Intent intent) {
            return new ActivityResult(i10, intent);
        }
    }

    public static final class StartIntentSenderForResult extends ActivityResultContract<IntentSenderRequest, ActivityResult> {
        public static final String ACTION_INTENT_SENDER_REQUEST = "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST";
        public static final Companion Companion = new Companion(null);
        public static final String EXTRA_INTENT_SENDER_REQUEST = "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST";
        public static final String EXTRA_SEND_INTENT_EXCEPTION = "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION";

        public static final class Companion {
            public Companion(C14026x c14026x) {
                this();
            }

            private Companion() {
            }
        }

        @Override
        public Intent createIntent(Context context, IntentSenderRequest input) {
            M.p(context, "context");
            M.p(input, "input");
            Intent putExtra = new Intent(ACTION_INTENT_SENDER_REQUEST).putExtra(EXTRA_INTENT_SENDER_REQUEST, input);
            M.o(putExtra, "Intent(ACTION_INTENT_SEN\u2026NT_SENDER_REQUEST, input)");
            return putExtra;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public ActivityResult parseResult(int i10, Intent intent) {
            return new ActivityResult(i10, intent);
        }
    }

    public static class TakePicture extends ActivityResultContract<Uri, Boolean> {
        @Override
        public final ActivityResultContract.SynchronousResult<Boolean> getSynchronousResult(Context context, Uri input) {
            M.p(context, "context");
            M.p(input, "input");
            return null;
        }

        @Override
        public Intent createIntent(Context context, Uri input) {
            M.p(context, "context");
            M.p(input, "input");
            Intent putExtra = new Intent(MediaStore.ACTION_IMAGE_CAPTURE).putExtra("output", input);
            M.o(putExtra, "Intent(MediaStore.ACTION\u2026tore.EXTRA_OUTPUT, input)");
            return putExtra;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final Boolean parseResult(int i10, Intent intent) {
            return Boolean.valueOf(i10 == -1);
        }
    }

    public static class TakePicturePreview extends ActivityResultContract<Void, Bitmap> {
        @Override
        public final ActivityResultContract.SynchronousResult<Bitmap> getSynchronousResult(Context context, Void r22) {
            M.p(context, "context");
            return null;
        }

        @Override
        public Intent createIntent(Context context, Void r22) {
            M.p(context, "context");
            return new Intent(MediaStore.ACTION_IMAGE_CAPTURE);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final Bitmap parseResult(int i10, Intent intent) {
            if (i10 != -1) {
                intent = null;
            }
            if (intent != null) {
                return (Bitmap) intent.getParcelableExtra("data");
            }
            return null;
        }
    }

    @InterfaceC14427o(message = "The thumbnail bitmap is rarely returned and is not a good signal to determine\n      whether the video was actually successfully captured. Use {@link CaptureVideo} instead.")
    public static class TakeVideo extends ActivityResultContract<Uri, Bitmap> {
        @Override
        public final ActivityResultContract.SynchronousResult<Bitmap> getSynchronousResult(Context context, Uri input) {
            M.p(context, "context");
            M.p(input, "input");
            return null;
        }

        @Override
        public Intent createIntent(Context context, Uri input) {
            M.p(context, "context");
            M.p(input, "input");
            Intent putExtra = new Intent(MediaStore.ACTION_VIDEO_CAPTURE).putExtra("output", input);
            M.o(putExtra, "Intent(MediaStore.ACTION\u2026tore.EXTRA_OUTPUT, input)");
            return putExtra;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final Bitmap parseResult(int i10, Intent intent) {
            if (i10 != -1) {
                intent = null;
            }
            if (intent != null) {
                return (Bitmap) intent.getParcelableExtra("data");
            }
            return null;
        }
    }

    private ActivityResultContracts() {
    }
}
