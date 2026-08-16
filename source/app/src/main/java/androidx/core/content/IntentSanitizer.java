package androidx.core.content;

import android.content.ClipData;
import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.textclassifier.TextLinks;
import androidx.core.content.IntentSanitizer;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import androidx.core.util.Predicate;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

public class IntentSanitizer {
    private static final String TAG = "IntentSanitizer";
    private boolean mAllowAnyComponent;
    private boolean mAllowClipDataText;
    private boolean mAllowIdentifier;
    private boolean mAllowSelector;
    private boolean mAllowSourceBounds;
    private Predicate<String> mAllowedActions;
    private Predicate<String> mAllowedCategories;
    private Predicate<ClipData> mAllowedClipData;
    private Predicate<Uri> mAllowedClipDataUri;
    private Predicate<ComponentName> mAllowedComponents;
    private Predicate<Uri> mAllowedData;
    private Map<String, Predicate<Object>> mAllowedExtras;
    private int mAllowedFlags;
    private Predicate<String> mAllowedPackages;
    private Predicate<String> mAllowedTypes;

    public static class Api15Impl {
        private Api15Impl() {
        }

        public static Intent getSelector(Intent intent) {
            return intent.getSelector();
        }

        public static void setSelector(Intent intent, Intent intent2) {
            intent.setSelector(intent2);
        }
    }

    public static class Api16Impl {

        public static class Api31Impl {
            private Api31Impl() {
            }

            public static void checkOtherMembers(int i10, ClipData.Item item, Consumer<String> consumer) {
                TextLinks textLinks;
                if (item.getHtmlText() == null && item.getIntent() == null) {
                    textLinks = item.getTextLinks();
                    if (textLinks == null) {
                        return;
                    }
                }
                consumer.accept("ClipData item at position " + i10 + " contains htmlText, textLinks or intent: " + ((Object) item));
            }
        }

        private Api16Impl() {
        }

        private static void checkOtherMembers(int i10, ClipData.Item item, Consumer<String> consumer) {
            if (item.getHtmlText() == null && item.getIntent() == null) {
                return;
            }
            consumer.accept("ClipData item at position " + i10 + " contains htmlText, textLinks or intent: " + ((Object) item));
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x00be  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00cd  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static void sanitizeClipData(Intent intent, Intent intent2, Predicate<ClipData> predicate, boolean z10, Predicate<Uri> predicate2, Consumer<String> consumer) {
            CharSequence charSequence;
            Uri uri;
            ClipData clipData = intent.getClipData();
            if (clipData == null) {
                return;
            }
            if (predicate != null && predicate.test(clipData)) {
                intent2.setClipData(clipData);
                return;
            }
            ClipData clipData2 = null;
            for (int i10 = 0; i10 < clipData.getItemCount(); i10++) {
                ClipData.Item itemAt = clipData.getItemAt(i10);
                if (Build.VERSION.SDK_INT >= 31) {
                    Api31Impl.checkOtherMembers(i10, itemAt, consumer);
                } else {
                    checkOtherMembers(i10, itemAt, consumer);
                }
                if (z10) {
                    charSequence = itemAt.getText();
                } else {
                    if (itemAt.getText() != null) {
                        consumer.accept("Item text cannot contain value. Item position: " + i10 + ". Text: " + ((Object) itemAt.getText()));
                    }
                    charSequence = null;
                }
                if (predicate2 == null) {
                    if (itemAt.getUri() != null) {
                        consumer.accept("Item URI is not allowed. Item position: " + i10 + ". URI: " + ((Object) itemAt.getUri()));
                    }
                } else if (itemAt.getUri() == null || predicate2.test(itemAt.getUri())) {
                    uri = itemAt.getUri();
                    if (charSequence == null || uri != null) {
                        if (clipData2 != null) {
                            clipData2 = new ClipData(clipData.getDescription(), new ClipData.Item(charSequence, null, uri));
                        } else {
                            clipData2.addItem(new ClipData.Item(charSequence, null, uri));
                        }
                    }
                } else {
                    consumer.accept("Item URI is not allowed. Item position: " + i10 + ". URI: " + ((Object) itemAt.getUri()));
                }
                uri = null;
                if (charSequence == null) {
                }
                if (clipData2 != null) {
                }
            }
            if (clipData2 != null) {
                intent2.setClipData(clipData2);
            }
        }
    }

    public static class Api29Impl {
        private Api29Impl() {
        }

        public static String getIdentifier(Intent intent) {
            return intent.getIdentifier();
        }

        public static Intent setIdentifier(Intent intent, String str) {
            return intent.setIdentifier(str);
        }
    }

    public static final class Builder {
        private static final int HISTORY_STACK_FLAGS = 2112614400;
        private static final int RECEIVER_FLAGS = 2015363072;
        private boolean mAllowAnyComponent;
        private boolean mAllowIdentifier;
        private boolean mAllowSelector;
        private boolean mAllowSomeComponents;
        private boolean mAllowSourceBounds;
        private int mAllowedFlags;
        private Predicate<String> mAllowedActions = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$new$0;
                lambda$new$0 = IntentSanitizer.Builder.lambda$new$0((String) obj);
                return lambda$new$0;
            }
        };
        private Predicate<Uri> mAllowedData = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$new$1;
                lambda$new$1 = IntentSanitizer.Builder.lambda$new$1((Uri) obj);
                return lambda$new$1;
            }
        };
        private Predicate<String> mAllowedTypes = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$new$2;
                lambda$new$2 = IntentSanitizer.Builder.lambda$new$2((String) obj);
                return lambda$new$2;
            }
        };
        private Predicate<String> mAllowedCategories = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$new$3;
                lambda$new$3 = IntentSanitizer.Builder.lambda$new$3((String) obj);
                return lambda$new$3;
            }
        };
        private Predicate<String> mAllowedPackages = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$new$4;
                lambda$new$4 = IntentSanitizer.Builder.lambda$new$4((String) obj);
                return lambda$new$4;
            }
        };
        private Predicate<ComponentName> mAllowedComponents = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$new$5;
                lambda$new$5 = IntentSanitizer.Builder.lambda$new$5((ComponentName) obj);
                return lambda$new$5;
            }
        };
        private Map<String, Predicate<Object>> mAllowedExtras = new HashMap();
        private boolean mAllowClipDataText = false;
        private Predicate<Uri> mAllowedClipDataUri = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$new$6;
                lambda$new$6 = IntentSanitizer.Builder.lambda$new$6((Uri) obj);
                return lambda$new$6;
            }
        };
        private Predicate<ClipData> mAllowedClipData = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$new$7;
                lambda$new$7 = IntentSanitizer.Builder.lambda$new$7((ClipData) obj);
                return lambda$new$7;
            }
        };

        public static boolean lambda$allowAnyComponent$10(ComponentName componentName) {
            return true;
        }

        public static boolean lambda$allowClipDataUriWithAuthority$11(String str, Uri uri) {
            return str.equals(uri.getAuthority());
        }

        public static boolean lambda$allowComponentWithPackage$9(String str, ComponentName componentName) {
            return str.equals(componentName.getPackageName());
        }

        public static boolean lambda$allowDataWithAuthority$8(String str, Uri uri) {
            return str.equals(uri.getAuthority());
        }

        public static boolean lambda$allowExtra$12(Object obj) {
            return true;
        }

        public static boolean lambda$allowExtra$13(Class cls, Predicate predicate, Object obj) {
            return cls.isInstance(obj) && predicate.test(cls.cast(obj));
        }

        public static boolean lambda$allowExtra$14(Object obj) {
            return false;
        }

        public static boolean lambda$allowExtraOutput$16(String str, Uri uri) {
            return str.equals(uri.getAuthority());
        }

        public static boolean lambda$allowExtraStreamUriWithAuthority$15(String str, Uri uri) {
            return str.equals(uri.getAuthority());
        }

        public static boolean lambda$new$0(String str) {
            return false;
        }

        public static boolean lambda$new$1(Uri uri) {
            return false;
        }

        public static boolean lambda$new$2(String str) {
            return false;
        }

        public static boolean lambda$new$3(String str) {
            return false;
        }

        public static boolean lambda$new$4(String str) {
            return false;
        }

        public static boolean lambda$new$5(ComponentName componentName) {
            return false;
        }

        public static boolean lambda$new$6(Uri uri) {
            return false;
        }

        public static boolean lambda$new$7(ClipData clipData) {
            return false;
        }

        public Builder allowAction(String str) {
            Preconditions.checkNotNull(str);
            Objects.requireNonNull(str);
            allowAction(new e(str));
            return this;
        }

        public Builder allowAnyComponent() {
            this.mAllowAnyComponent = true;
            this.mAllowedComponents = new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$allowAnyComponent$10;
                    lambda$allowAnyComponent$10 = IntentSanitizer.Builder.lambda$allowAnyComponent$10((ComponentName) obj);
                    return lambda$allowAnyComponent$10;
                }
            };
            return this;
        }

        public Builder allowCategory(String str) {
            Preconditions.checkNotNull(str);
            Objects.requireNonNull(str);
            return allowCategory(new e(str));
        }

        public Builder allowClipData(Predicate<ClipData> predicate) {
            Preconditions.checkNotNull(predicate);
            this.mAllowedClipData = this.mAllowedClipData.or(predicate);
            return this;
        }

        public Builder allowClipDataText() {
            this.mAllowClipDataText = true;
            return this;
        }

        public Builder allowClipDataUri(Predicate<Uri> predicate) {
            Preconditions.checkNotNull(predicate);
            this.mAllowedClipDataUri = this.mAllowedClipDataUri.or(predicate);
            return this;
        }

        public Builder allowClipDataUriWithAuthority(final String str) {
            Preconditions.checkNotNull(str);
            return allowClipDataUri(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$allowClipDataUriWithAuthority$11;
                    lambda$allowClipDataUriWithAuthority$11 = IntentSanitizer.Builder.lambda$allowClipDataUriWithAuthority$11(String.this, (Uri) obj);
                    return lambda$allowClipDataUriWithAuthority$11;
                }
            });
        }

        public Builder allowComponent(final ComponentName componentName) {
            Preconditions.checkNotNull(componentName);
            Objects.requireNonNull(componentName);
            return allowComponent(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return ComponentName.this.equals((ComponentName) obj);
                }
            });
        }

        public Builder allowComponentWithPackage(final String str) {
            Preconditions.checkNotNull(str);
            return allowComponent(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$allowComponentWithPackage$9;
                    lambda$allowComponentWithPackage$9 = IntentSanitizer.Builder.lambda$allowComponentWithPackage$9(String.this, (ComponentName) obj);
                    return lambda$allowComponentWithPackage$9;
                }
            });
        }

        public Builder allowData(Predicate<Uri> predicate) {
            Preconditions.checkNotNull(predicate);
            this.mAllowedData = this.mAllowedData.or(predicate);
            return this;
        }

        public Builder allowDataWithAuthority(final String str) {
            Preconditions.checkNotNull(str);
            allowData(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$allowDataWithAuthority$8;
                    lambda$allowDataWithAuthority$8 = IntentSanitizer.Builder.lambda$allowDataWithAuthority$8(String.this, (Uri) obj);
                    return lambda$allowDataWithAuthority$8;
                }
            });
            return this;
        }

        public Builder allowExtra(String str, Class<?> cls) {
            return allowExtra(str, cls, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$allowExtra$12;
                    lambda$allowExtra$12 = IntentSanitizer.Builder.lambda$allowExtra$12(obj);
                    return lambda$allowExtra$12;
                }
            });
        }

        public Builder allowExtraOutput(final String str) {
            allowExtra("output", Uri.class, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$allowExtraOutput$16;
                    lambda$allowExtraOutput$16 = IntentSanitizer.Builder.lambda$allowExtraOutput$16(String.this, (Uri) obj);
                    return lambda$allowExtraOutput$16;
                }
            });
            return this;
        }

        public Builder allowExtraStream(Predicate<Uri> predicate) {
            allowExtra(Intent.EXTRA_STREAM, Uri.class, predicate);
            return this;
        }

        public Builder allowExtraStreamUriWithAuthority(final String str) {
            Preconditions.checkNotNull(str);
            allowExtra(Intent.EXTRA_STREAM, Uri.class, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$allowExtraStreamUriWithAuthority$15;
                    lambda$allowExtraStreamUriWithAuthority$15 = IntentSanitizer.Builder.lambda$allowExtraStreamUriWithAuthority$15(String.this, (Uri) obj);
                    return lambda$allowExtraStreamUriWithAuthority$15;
                }
            });
            return this;
        }

        public Builder allowFlags(int i10) {
            this.mAllowedFlags = i10 | this.mAllowedFlags;
            return this;
        }

        public Builder allowHistoryStackFlags() {
            this.mAllowedFlags |= HISTORY_STACK_FLAGS;
            return this;
        }

        public Builder allowIdentifier() {
            this.mAllowIdentifier = true;
            return this;
        }

        public Builder allowPackage(String str) {
            Preconditions.checkNotNull(str);
            Objects.requireNonNull(str);
            return allowPackage(new e(str));
        }

        public Builder allowReceiverFlags() {
            this.mAllowedFlags |= RECEIVER_FLAGS;
            return this;
        }

        public Builder allowSelector() {
            this.mAllowSelector = true;
            return this;
        }

        public Builder allowSourceBounds() {
            this.mAllowSourceBounds = true;
            return this;
        }

        public Builder allowType(String str) {
            Preconditions.checkNotNull(str);
            Objects.requireNonNull(str);
            return allowType(new e(str));
        }

        public IntentSanitizer build() {
            boolean z10 = this.mAllowAnyComponent;
            if ((z10 && this.mAllowSomeComponents) || (!z10 && !this.mAllowSomeComponents)) {
                throw new SecurityException("You must call either allowAnyComponent or one or more of the allowComponent methods; but not both.");
            }
            IntentSanitizer intentSanitizer = new IntentSanitizer();
            intentSanitizer.mAllowedFlags = this.mAllowedFlags;
            intentSanitizer.mAllowedActions = this.mAllowedActions;
            intentSanitizer.mAllowedData = this.mAllowedData;
            intentSanitizer.mAllowedTypes = this.mAllowedTypes;
            intentSanitizer.mAllowedCategories = this.mAllowedCategories;
            intentSanitizer.mAllowedPackages = this.mAllowedPackages;
            intentSanitizer.mAllowAnyComponent = this.mAllowAnyComponent;
            intentSanitizer.mAllowedComponents = this.mAllowedComponents;
            intentSanitizer.mAllowedExtras = this.mAllowedExtras;
            intentSanitizer.mAllowClipDataText = this.mAllowClipDataText;
            intentSanitizer.mAllowedClipDataUri = this.mAllowedClipDataUri;
            intentSanitizer.mAllowedClipData = this.mAllowedClipData;
            intentSanitizer.mAllowIdentifier = this.mAllowIdentifier;
            intentSanitizer.mAllowSelector = this.mAllowSelector;
            intentSanitizer.mAllowSourceBounds = this.mAllowSourceBounds;
            return intentSanitizer;
        }

        public <T> Builder allowExtra(String str, final Class<T> cls, final Predicate<T> predicate) {
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(cls);
            Preconditions.checkNotNull(predicate);
            return allowExtra(str, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$allowExtra$13;
                    lambda$allowExtra$13 = IntentSanitizer.Builder.lambda$allowExtra$13(Class.this, predicate, obj);
                    return lambda$allowExtra$13;
                }
            });
        }

        public Builder allowExtraOutput(Predicate<Uri> predicate) {
            allowExtra("output", Uri.class, predicate);
            return this;
        }

        public Builder allowAction(Predicate<String> predicate) {
            Preconditions.checkNotNull(predicate);
            this.mAllowedActions = this.mAllowedActions.or(predicate);
            return this;
        }

        public Builder allowCategory(Predicate<String> predicate) {
            Preconditions.checkNotNull(predicate);
            this.mAllowedCategories = this.mAllowedCategories.or(predicate);
            return this;
        }

        public Builder allowComponent(Predicate<ComponentName> predicate) {
            Preconditions.checkNotNull(predicate);
            this.mAllowSomeComponents = true;
            this.mAllowedComponents = this.mAllowedComponents.or(predicate);
            return this;
        }

        public Builder allowPackage(Predicate<String> predicate) {
            Preconditions.checkNotNull(predicate);
            this.mAllowedPackages = this.mAllowedPackages.or(predicate);
            return this;
        }

        public Builder allowType(Predicate<String> predicate) {
            Preconditions.checkNotNull(predicate);
            this.mAllowedTypes = this.mAllowedTypes.or(predicate);
            return this;
        }

        public Builder allowExtra(String str, Predicate<Object> predicate) {
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(predicate);
            Predicate<Object> predicate2 = this.mAllowedExtras.get(str);
            if (predicate2 == null) {
                predicate2 = new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean lambda$allowExtra$14;
                        lambda$allowExtra$14 = IntentSanitizer.Builder.lambda$allowExtra$14(obj);
                        return lambda$allowExtra$14;
                    }
                };
            }
            this.mAllowedExtras.put(str, predicate2.or(predicate));
            return this;
        }
    }

    public static void lambda$sanitizeByFiltering$0(String str) {
    }

    public static void lambda$sanitizeByThrowing$1(String str) {
        throw new SecurityException(str);
    }

    private void putExtra(Intent intent, String str, Object obj) {
        if (obj == null) {
            intent.getExtras().putString(str, null);
            return;
        }
        if (obj instanceof Parcelable) {
            intent.putExtra(str, (Parcelable) obj);
            return;
        }
        if (obj instanceof Parcelable[]) {
            intent.putExtra(str, (Parcelable[]) obj);
        } else {
            if (obj instanceof Serializable) {
                intent.putExtra(str, (Serializable) obj);
                return;
            }
            throw new IllegalArgumentException("Unsupported type " + ((Object) obj.getClass()));
        }
    }

    public Intent sanitize(Intent intent, Consumer<String> consumer) {
        Intent intent2 = new Intent();
        ComponentName component = intent.getComponent();
        if ((this.mAllowAnyComponent && component == null) || this.mAllowedComponents.test(component)) {
            intent2.setComponent(component);
        } else {
            consumer.accept("Component is not allowed: " + ((Object) component));
            intent2.setComponent(new ComponentName("android", "java.lang.Void"));
        }
        String str = intent.getPackage();
        if (str == null || this.mAllowedPackages.test(str)) {
            intent2.setPackage(str);
        } else {
            consumer.accept("Package is not allowed: " + str);
        }
        int flags = this.mAllowedFlags | intent.getFlags();
        int i10 = this.mAllowedFlags;
        if (flags == i10) {
            intent2.setFlags(intent.getFlags());
        } else {
            intent2.setFlags(intent.getFlags() & i10);
            consumer.accept("The intent contains flags that are not allowed: 0x" + Integer.toHexString(intent.getFlags() & (~this.mAllowedFlags)));
        }
        String action = intent.getAction();
        if (action == null || this.mAllowedActions.test(action)) {
            intent2.setAction(action);
        } else {
            consumer.accept("Action is not allowed: " + action);
        }
        Uri data = intent.getData();
        if (data == null || this.mAllowedData.test(data)) {
            intent2.setData(data);
        } else {
            consumer.accept("Data is not allowed: " + ((Object) data));
        }
        String type = intent.getType();
        if (type == null || this.mAllowedTypes.test(type)) {
            intent2.setDataAndType(intent2.getData(), type);
        } else {
            consumer.accept("Type is not allowed: " + type);
        }
        Set<String> categories = intent.getCategories();
        if (categories != null) {
            for (String str2 : categories) {
                if (this.mAllowedCategories.test(str2)) {
                    intent2.addCategory(str2);
                } else {
                    consumer.accept("Category is not allowed: " + str2);
                }
            }
        }
        Bundle extras = intent.getExtras();
        if (extras != null) {
            for (String str3 : extras.keySet()) {
                if (str3.equals(Intent.EXTRA_STREAM) && (this.mAllowedFlags & 1) == 0) {
                    consumer.accept("Allowing Extra Stream requires also allowing at least  FLAG_GRANT_READ_URI_PERMISSION Flag.");
                } else if (!str3.equals("output") || ((~this.mAllowedFlags) & 3) == 0) {
                    Object obj = extras.get(str3);
                    Predicate<Object> predicate = this.mAllowedExtras.get(str3);
                    if (predicate == null || !predicate.test(obj)) {
                        consumer.accept("Extra is not allowed. Key: " + str3 + ". Value: " + obj);
                    } else {
                        putExtra(intent2, str3, obj);
                    }
                } else {
                    consumer.accept("Allowing Extra Output requires also allowing FLAG_GRANT_READ_URI_PERMISSION and FLAG_GRANT_WRITE_URI_PERMISSION Flags.");
                }
            }
        }
        int i11 = Build.VERSION.SDK_INT;
        Api16Impl.sanitizeClipData(intent, intent2, this.mAllowedClipData, this.mAllowClipDataText, this.mAllowedClipDataUri, consumer);
        if (i11 >= 29) {
            if (this.mAllowIdentifier) {
                Api29Impl.setIdentifier(intent2, Api29Impl.getIdentifier(intent));
            } else if (Api29Impl.getIdentifier(intent) != null) {
                consumer.accept("Identifier is not allowed: " + Api29Impl.getIdentifier(intent));
            }
        }
        if (this.mAllowSelector) {
            Api15Impl.setSelector(intent2, Api15Impl.getSelector(intent));
        } else if (Api15Impl.getSelector(intent) != null) {
            consumer.accept("Selector is not allowed: " + ((Object) Api15Impl.getSelector(intent)));
        }
        if (this.mAllowSourceBounds) {
            intent2.setSourceBounds(intent.getSourceBounds());
        } else if (intent.getSourceBounds() != null) {
            consumer.accept("SourceBounds is not allowed: " + ((Object) intent.getSourceBounds()));
        }
        return intent2;
    }

    public Intent sanitizeByFiltering(Intent intent) {
        return sanitize(intent, new Consumer() {
            @Override
            public final void accept(Object obj) {
                IntentSanitizer.lambda$sanitizeByFiltering$0((String) obj);
            }
        });
    }

    public Intent sanitizeByThrowing(Intent intent) {
        return sanitize(intent, new Consumer() {
            @Override
            public final void accept(Object obj) {
                IntentSanitizer.lambda$sanitizeByThrowing$1((String) obj);
            }
        });
    }

    private IntentSanitizer() {
    }
}
