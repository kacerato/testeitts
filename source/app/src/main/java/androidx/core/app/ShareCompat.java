package androidx.core.app;

import android.app.Activity;
import android.content.ClipData;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.Html;
import android.text.Spanned;
import android.util.Log;
import android.view.ActionProvider;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ShareActionProvider;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import w2.C15883c;

public final class ShareCompat {
    public static final String EXTRA_CALLING_ACTIVITY = "androidx.core.app.EXTRA_CALLING_ACTIVITY";
    public static final String EXTRA_CALLING_ACTIVITY_INTEROP = "android.support.v4.app.EXTRA_CALLING_ACTIVITY";
    public static final String EXTRA_CALLING_PACKAGE = "androidx.core.app.EXTRA_CALLING_PACKAGE";
    public static final String EXTRA_CALLING_PACKAGE_INTEROP = "android.support.v4.app.EXTRA_CALLING_PACKAGE";
    private static final String HISTORY_FILENAME_PREFIX = ".sharecompat_";

    public static class Api16Impl {
        private Api16Impl() {
        }

        public static String escapeHtml(CharSequence charSequence) {
            return Html.escapeHtml(charSequence);
        }

        public static void migrateExtraStreamToClipData(Intent intent, ArrayList<Uri> arrayList) {
            ClipData clipData = new ClipData(null, new String[]{intent.getType()}, new ClipData.Item(intent.getCharSequenceExtra(Intent.EXTRA_TEXT), intent.getStringExtra("android.intent.extra.HTML_TEXT"), null, arrayList.get(0)));
            int size = arrayList.size();
            for (int i10 = 1; i10 < size; i10++) {
                clipData.addItem(new ClipData.Item(arrayList.get(i10)));
            }
            intent.setClipData(clipData);
            intent.addFlags(1);
        }

        public static void removeClipData(Intent intent) {
            intent.setClipData(null);
            intent.setFlags(intent.getFlags() & (-2));
        }
    }

    public static class IntentBuilder {
        private ArrayList<String> mBccAddresses;
        private ArrayList<String> mCcAddresses;
        private CharSequence mChooserTitle;
        private final Context mContext;
        private final Intent mIntent;
        private ArrayList<Uri> mStreams;
        private ArrayList<String> mToAddresses;

        public IntentBuilder(Context context) {
            Activity activity;
            this.mContext = (Context) Preconditions.checkNotNull(context);
            Intent action = new Intent().setAction(Intent.ACTION_SEND);
            this.mIntent = action;
            action.putExtra(ShareCompat.EXTRA_CALLING_PACKAGE, context.getPackageName());
            action.putExtra(ShareCompat.EXTRA_CALLING_PACKAGE_INTEROP, context.getPackageName());
            action.addFlags(524288);
            while (true) {
                if (!(context instanceof ContextWrapper)) {
                    activity = null;
                    break;
                } else {
                    if (context instanceof Activity) {
                        activity = (Activity) context;
                        break;
                    }
                    context = ((ContextWrapper) context).getBaseContext();
                }
            }
            if (activity != null) {
                ComponentName componentName = activity.getComponentName();
                this.mIntent.putExtra(ShareCompat.EXTRA_CALLING_ACTIVITY, componentName);
                this.mIntent.putExtra(ShareCompat.EXTRA_CALLING_ACTIVITY_INTEROP, componentName);
            }
        }

        private void combineArrayExtra(String str, ArrayList<String> arrayList) {
            String[] stringArrayExtra = this.mIntent.getStringArrayExtra(str);
            int length = stringArrayExtra != null ? stringArrayExtra.length : 0;
            String[] strArr = new String[arrayList.size() + length];
            arrayList.toArray(strArr);
            if (stringArrayExtra != null) {
                System.arraycopy(stringArrayExtra, 0, strArr, arrayList.size(), length);
            }
            this.mIntent.putExtra(str, strArr);
        }

        @Deprecated
        public static IntentBuilder from(Activity activity) {
            return new IntentBuilder(activity);
        }

        public IntentBuilder addEmailBcc(String str) {
            if (this.mBccAddresses == null) {
                this.mBccAddresses = new ArrayList<>();
            }
            this.mBccAddresses.add(str);
            return this;
        }

        public IntentBuilder addEmailCc(String str) {
            if (this.mCcAddresses == null) {
                this.mCcAddresses = new ArrayList<>();
            }
            this.mCcAddresses.add(str);
            return this;
        }

        public IntentBuilder addEmailTo(String str) {
            if (this.mToAddresses == null) {
                this.mToAddresses = new ArrayList<>();
            }
            this.mToAddresses.add(str);
            return this;
        }

        public IntentBuilder addStream(Uri uri) {
            if (this.mStreams == null) {
                this.mStreams = new ArrayList<>();
            }
            this.mStreams.add(uri);
            return this;
        }

        public Intent createChooserIntent() {
            return Intent.createChooser(getIntent(), this.mChooserTitle);
        }

        public Context getContext() {
            return this.mContext;
        }

        public Intent getIntent() {
            ArrayList<String> arrayList = this.mToAddresses;
            if (arrayList != null) {
                combineArrayExtra(Intent.EXTRA_EMAIL, arrayList);
                this.mToAddresses = null;
            }
            ArrayList<String> arrayList2 = this.mCcAddresses;
            if (arrayList2 != null) {
                combineArrayExtra(Intent.EXTRA_CC, arrayList2);
                this.mCcAddresses = null;
            }
            ArrayList<String> arrayList3 = this.mBccAddresses;
            if (arrayList3 != null) {
                combineArrayExtra(Intent.EXTRA_BCC, arrayList3);
                this.mBccAddresses = null;
            }
            ArrayList<Uri> arrayList4 = this.mStreams;
            if (arrayList4 == null || arrayList4.size() <= 1) {
                this.mIntent.setAction(Intent.ACTION_SEND);
                ArrayList<Uri> arrayList5 = this.mStreams;
                if (arrayList5 == null || arrayList5.isEmpty()) {
                    this.mIntent.removeExtra(Intent.EXTRA_STREAM);
                    Api16Impl.removeClipData(this.mIntent);
                } else {
                    this.mIntent.putExtra(Intent.EXTRA_STREAM, this.mStreams.get(0));
                    Api16Impl.migrateExtraStreamToClipData(this.mIntent, this.mStreams);
                }
            } else {
                this.mIntent.setAction(Intent.ACTION_SEND_MULTIPLE);
                this.mIntent.putParcelableArrayListExtra(Intent.EXTRA_STREAM, this.mStreams);
                Api16Impl.migrateExtraStreamToClipData(this.mIntent, this.mStreams);
            }
            return this.mIntent;
        }

        public IntentBuilder setChooserTitle(CharSequence charSequence) {
            this.mChooserTitle = charSequence;
            return this;
        }

        public IntentBuilder setEmailBcc(String[] strArr) {
            this.mIntent.putExtra(Intent.EXTRA_BCC, strArr);
            return this;
        }

        public IntentBuilder setEmailCc(String[] strArr) {
            this.mIntent.putExtra(Intent.EXTRA_CC, strArr);
            return this;
        }

        public IntentBuilder setEmailTo(String[] strArr) {
            if (this.mToAddresses != null) {
                this.mToAddresses = null;
            }
            this.mIntent.putExtra(Intent.EXTRA_EMAIL, strArr);
            return this;
        }

        public IntentBuilder setHtmlText(String str) {
            this.mIntent.putExtra("android.intent.extra.HTML_TEXT", str);
            if (!this.mIntent.hasExtra(Intent.EXTRA_TEXT)) {
                setText(Html.fromHtml(str));
            }
            return this;
        }

        public IntentBuilder setStream(Uri uri) {
            this.mStreams = null;
            if (uri != null) {
                addStream(uri);
            }
            return this;
        }

        public IntentBuilder setSubject(String str) {
            this.mIntent.putExtra(Intent.EXTRA_SUBJECT, str);
            return this;
        }

        public IntentBuilder setText(CharSequence charSequence) {
            this.mIntent.putExtra(Intent.EXTRA_TEXT, charSequence);
            return this;
        }

        public IntentBuilder setType(String str) {
            this.mIntent.setType(str);
            return this;
        }

        public void startChooser() {
            this.mContext.startActivity(createChooserIntent());
        }

        public IntentBuilder setChooserTitle(int i10) {
            return setChooserTitle(this.mContext.getText(i10));
        }

        public IntentBuilder addEmailBcc(String[] strArr) {
            combineArrayExtra(Intent.EXTRA_BCC, strArr);
            return this;
        }

        public IntentBuilder addEmailCc(String[] strArr) {
            combineArrayExtra(Intent.EXTRA_CC, strArr);
            return this;
        }

        public IntentBuilder addEmailTo(String[] strArr) {
            combineArrayExtra(Intent.EXTRA_EMAIL, strArr);
            return this;
        }

        private void combineArrayExtra(String str, String[] strArr) {
            Intent intent = getIntent();
            String[] stringArrayExtra = intent.getStringArrayExtra(str);
            int length = stringArrayExtra != null ? stringArrayExtra.length : 0;
            String[] strArr2 = new String[strArr.length + length];
            if (stringArrayExtra != null) {
                System.arraycopy(stringArrayExtra, 0, strArr2, 0, length);
            }
            System.arraycopy(strArr, 0, strArr2, length, strArr.length);
            intent.putExtra(str, strArr2);
        }
    }

    public static class IntentReader {
        private static final String TAG = "IntentReader";
        private final ComponentName mCallingActivity;
        private final String mCallingPackage;
        private final Context mContext;
        private final Intent mIntent;
        private ArrayList<Uri> mStreams;

        public IntentReader(Activity activity) {
            this((Context) Preconditions.checkNotNull(activity), activity.getIntent());
        }

        @Deprecated
        public static IntentReader from(Activity activity) {
            return new IntentReader(activity);
        }

        private static void withinStyle(StringBuilder sb2, CharSequence charSequence, int i10, int i11) {
            while (i10 < i11) {
                char charAt = charSequence.charAt(i10);
                if (charAt == '<') {
                    sb2.append("&lt;");
                } else if (charAt == '>') {
                    sb2.append("&gt;");
                } else if (charAt == '&') {
                    sb2.append("&amp;");
                } else if (charAt > '~' || charAt < ' ') {
                    sb2.append("&#");
                    sb2.append((int) charAt);
                    sb2.append(";");
                } else if (charAt == ' ') {
                    while (true) {
                        int i12 = i10 + 1;
                        if (i12 >= i11 || charSequence.charAt(i12) != ' ') {
                            break;
                        }
                        sb2.append("&nbsp;");
                        i10 = i12;
                    }
                    sb2.append(C15883c.f126249O);
                } else {
                    sb2.append(charAt);
                }
                i10++;
            }
        }

        public ComponentName getCallingActivity() {
            return this.mCallingActivity;
        }

        public Drawable getCallingActivityIcon() {
            if (this.mCallingActivity == null) {
                return null;
            }
            try {
                return this.mContext.getPackageManager().getActivityIcon(this.mCallingActivity);
            } catch (PackageManager.NameNotFoundException e10) {
                Log.e(TAG, "Could not retrieve icon for calling activity", e10);
                return null;
            }
        }

        public Drawable getCallingApplicationIcon() {
            if (this.mCallingPackage == null) {
                return null;
            }
            try {
                return this.mContext.getPackageManager().getApplicationIcon(this.mCallingPackage);
            } catch (PackageManager.NameNotFoundException e10) {
                Log.e(TAG, "Could not retrieve icon for calling application", e10);
                return null;
            }
        }

        public CharSequence getCallingApplicationLabel() {
            if (this.mCallingPackage == null) {
                return null;
            }
            PackageManager packageManager = this.mContext.getPackageManager();
            try {
                return packageManager.getApplicationLabel(packageManager.getApplicationInfo(this.mCallingPackage, 0));
            } catch (PackageManager.NameNotFoundException e10) {
                Log.e(TAG, "Could not retrieve label for calling application", e10);
                return null;
            }
        }

        public String getCallingPackage() {
            return this.mCallingPackage;
        }

        public String[] getEmailBcc() {
            return this.mIntent.getStringArrayExtra(Intent.EXTRA_BCC);
        }

        public String[] getEmailCc() {
            return this.mIntent.getStringArrayExtra(Intent.EXTRA_CC);
        }

        public String[] getEmailTo() {
            return this.mIntent.getStringArrayExtra(Intent.EXTRA_EMAIL);
        }

        public String getHtmlText() {
            String stringExtra = this.mIntent.getStringExtra("android.intent.extra.HTML_TEXT");
            if (stringExtra != null) {
                return stringExtra;
            }
            CharSequence text = getText();
            return text instanceof Spanned ? Html.toHtml((Spanned) text) : text != null ? Api16Impl.escapeHtml(text) : stringExtra;
        }

        public Uri getStream() {
            return (Uri) this.mIntent.getParcelableExtra(Intent.EXTRA_STREAM);
        }

        public int getStreamCount() {
            if (this.mStreams == null && isMultipleShare()) {
                this.mStreams = this.mIntent.getParcelableArrayListExtra(Intent.EXTRA_STREAM);
            }
            ArrayList<Uri> arrayList = this.mStreams;
            return arrayList != null ? arrayList.size() : this.mIntent.hasExtra(Intent.EXTRA_STREAM) ? 1 : 0;
        }

        public String getSubject() {
            return this.mIntent.getStringExtra(Intent.EXTRA_SUBJECT);
        }

        public CharSequence getText() {
            return this.mIntent.getCharSequenceExtra(Intent.EXTRA_TEXT);
        }

        public String getType() {
            return this.mIntent.getType();
        }

        public boolean isMultipleShare() {
            return Intent.ACTION_SEND_MULTIPLE.equals(this.mIntent.getAction());
        }

        public boolean isShareIntent() {
            String action = this.mIntent.getAction();
            return Intent.ACTION_SEND.equals(action) || Intent.ACTION_SEND_MULTIPLE.equals(action);
        }

        public boolean isSingleShare() {
            return Intent.ACTION_SEND.equals(this.mIntent.getAction());
        }

        public IntentReader(Context context, Intent intent) {
            this.mContext = (Context) Preconditions.checkNotNull(context);
            this.mIntent = (Intent) Preconditions.checkNotNull(intent);
            this.mCallingPackage = ShareCompat.getCallingPackage(intent);
            this.mCallingActivity = ShareCompat.getCallingActivity(intent);
        }

        public Uri getStream(int i10) {
            if (this.mStreams == null && isMultipleShare()) {
                this.mStreams = this.mIntent.getParcelableArrayListExtra(Intent.EXTRA_STREAM);
            }
            ArrayList<Uri> arrayList = this.mStreams;
            if (arrayList != null) {
                return arrayList.get(i10);
            }
            if (i10 == 0) {
                return (Uri) this.mIntent.getParcelableExtra(Intent.EXTRA_STREAM);
            }
            throw new IndexOutOfBoundsException("Stream items available: " + getStreamCount() + " index requested: " + i10);
        }
    }

    private ShareCompat() {
    }

    @Deprecated
    public static void configureMenuItem(MenuItem menuItem, IntentBuilder intentBuilder) {
        ShareActionProvider shareActionProvider;
        ActionProvider actionProvider = menuItem.getActionProvider();
        if (!(actionProvider instanceof ShareActionProvider)) {
            shareActionProvider = new ShareActionProvider(intentBuilder.getContext());
        } else {
            shareActionProvider = (ShareActionProvider) actionProvider;
        }
        shareActionProvider.setShareHistoryFileName(HISTORY_FILENAME_PREFIX + intentBuilder.getContext().getClass().getName());
        shareActionProvider.setShareIntent(intentBuilder.getIntent());
        menuItem.setActionProvider(shareActionProvider);
    }

    public static ComponentName getCallingActivity(Activity activity) {
        Intent intent = activity.getIntent();
        ComponentName callingActivity = activity.getCallingActivity();
        return callingActivity == null ? getCallingActivity(intent) : callingActivity;
    }

    public static String getCallingPackage(Activity activity) {
        Intent intent = activity.getIntent();
        String callingPackage = activity.getCallingPackage();
        return (callingPackage != null || intent == null) ? callingPackage : getCallingPackage(intent);
    }

    public static ComponentName getCallingActivity(Intent intent) {
        ComponentName componentName = (ComponentName) intent.getParcelableExtra(EXTRA_CALLING_ACTIVITY);
        return componentName == null ? (ComponentName) intent.getParcelableExtra(EXTRA_CALLING_ACTIVITY_INTEROP) : componentName;
    }

    public static String getCallingPackage(Intent intent) {
        String stringExtra = intent.getStringExtra(EXTRA_CALLING_PACKAGE);
        return stringExtra == null ? intent.getStringExtra(EXTRA_CALLING_PACKAGE_INTEROP) : stringExtra;
    }

    @Deprecated
    public static void configureMenuItem(Menu menu, int i10, IntentBuilder intentBuilder) {
        MenuItem findItem = menu.findItem(i10);
        if (findItem != null) {
            configureMenuItem(findItem, intentBuilder);
            return;
        }
        throw new IllegalArgumentException("Could not find menu item with id " + i10 + " in the supplied menu");
    }
}
