package android.app;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.media.AudioAttributes;
import android.media.session.MediaSession;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.widget.RemoteViews;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/Notification.class
 */
public class Notification implements Parcelable {
    public static final int BADGE_ICON_LARGE = 2;
    public static final int BADGE_ICON_NONE = 0;
    public static final int BADGE_ICON_SMALL = 1;
    public static final String CATEGORY_ALARM = "alarm";
    public static final String CATEGORY_CALL = "call";
    public static final String CATEGORY_EMAIL = "email";
    public static final String CATEGORY_ERROR = "err";
    public static final String CATEGORY_EVENT = "event";
    public static final String CATEGORY_MESSAGE = "msg";
    public static final String CATEGORY_PROGRESS = "progress";
    public static final String CATEGORY_PROMO = "promo";
    public static final String CATEGORY_RECOMMENDATION = "recommendation";
    public static final String CATEGORY_REMINDER = "reminder";
    public static final String CATEGORY_SERVICE = "service";
    public static final String CATEGORY_SOCIAL = "social";
    public static final String CATEGORY_STATUS = "status";
    public static final String CATEGORY_SYSTEM = "sys";
    public static final String CATEGORY_TRANSPORT = "transport";
    public static final int COLOR_DEFAULT = 0;
    public static final int DEFAULT_ALL = -1;
    public static final int DEFAULT_LIGHTS = 4;
    public static final int DEFAULT_SOUND = 1;
    public static final int DEFAULT_VIBRATE = 2;
    public static final String EXTRA_AUDIO_CONTENTS_URI = "android.audioContents";
    public static final String EXTRA_BACKGROUND_IMAGE_URI = "android.backgroundImageUri";
    public static final String EXTRA_BIG_TEXT = "android.bigText";
    public static final String EXTRA_CHANNEL_ID = "android.intent.extra.CHANNEL_ID";
    public static final String EXTRA_CHRONOMETER_COUNT_DOWN = "android.chronometerCountDown";
    public static final String EXTRA_COLORIZED = "android.colorized";
    public static final String EXTRA_COMPACT_ACTIONS = "android.compactActions";
    public static final String EXTRA_CONVERSATION_TITLE = "android.conversationTitle";
    public static final String EXTRA_HISTORIC_MESSAGES = "android.messages.historic";
    public static final String EXTRA_INFO_TEXT = "android.infoText";

    @Deprecated
    public static final String EXTRA_LARGE_ICON = "android.largeIcon";
    public static final String EXTRA_LARGE_ICON_BIG = "android.largeIcon.big";
    public static final String EXTRA_MEDIA_SESSION = "android.mediaSession";
    public static final String EXTRA_MESSAGES = "android.messages";
    public static final String EXTRA_NOTIFICATION_ID = "android.intent.extra.NOTIFICATION_ID";
    public static final String EXTRA_NOTIFICATION_TAG = "android.intent.extra.NOTIFICATION_TAG";
    public static final String EXTRA_PEOPLE = "android.people";
    public static final String EXTRA_PICTURE = "android.picture";
    public static final String EXTRA_PROGRESS = "android.progress";
    public static final String EXTRA_PROGRESS_INDETERMINATE = "android.progressIndeterminate";
    public static final String EXTRA_PROGRESS_MAX = "android.progressMax";
    public static final String EXTRA_REMOTE_INPUT_HISTORY = "android.remoteInputHistory";
    public static final String EXTRA_SELF_DISPLAY_NAME = "android.selfDisplayName";
    public static final String EXTRA_SHOW_CHRONOMETER = "android.showChronometer";
    public static final String EXTRA_SHOW_WHEN = "android.showWhen";

    @Deprecated
    public static final String EXTRA_SMALL_ICON = "android.icon";
    public static final String EXTRA_SUB_TEXT = "android.subText";
    public static final String EXTRA_SUMMARY_TEXT = "android.summaryText";
    public static final String EXTRA_TEMPLATE = "android.template";
    public static final String EXTRA_TEXT = "android.text";
    public static final String EXTRA_TEXT_LINES = "android.textLines";
    public static final String EXTRA_TITLE = "android.title";
    public static final String EXTRA_TITLE_BIG = "android.title.big";
    public static final int FLAG_AUTO_CANCEL = 16;
    public static final int FLAG_FOREGROUND_SERVICE = 64;
    public static final int FLAG_GROUP_SUMMARY = 512;

    @Deprecated
    public static final int FLAG_HIGH_PRIORITY = 128;
    public static final int FLAG_INSISTENT = 4;
    public static final int FLAG_LOCAL_ONLY = 256;
    public static final int FLAG_NO_CLEAR = 32;
    public static final int FLAG_ONGOING_EVENT = 2;
    public static final int FLAG_ONLY_ALERT_ONCE = 8;

    @Deprecated
    public static final int FLAG_SHOW_LIGHTS = 1;
    public static final int GROUP_ALERT_ALL = 0;
    public static final int GROUP_ALERT_CHILDREN = 2;
    public static final int GROUP_ALERT_SUMMARY = 1;
    public static final String INTENT_CATEGORY_NOTIFICATION_PREFERENCES = "android.intent.category.NOTIFICATION_PREFERENCES";

    @Deprecated
    public static final int PRIORITY_DEFAULT = 0;

    @Deprecated
    public static final int PRIORITY_HIGH = 1;

    @Deprecated
    public static final int PRIORITY_LOW = -1;

    @Deprecated
    public static final int PRIORITY_MAX = 2;

    @Deprecated
    public static final int PRIORITY_MIN = -2;

    @Deprecated
    public static final int STREAM_DEFAULT = -1;
    public static final int VISIBILITY_PRIVATE = 0;
    public static final int VISIBILITY_PUBLIC = 1;
    public static final int VISIBILITY_SECRET = -1;

    @Deprecated
    public AudioAttributes audioAttributes;

    @Deprecated
    public int audioStreamType;

    @Deprecated
    public RemoteViews bigContentView;
    public String category;
    public int color;
    public PendingIntent contentIntent;

    @Deprecated
    public RemoteViews contentView;

    @Deprecated
    public int defaults;
    public PendingIntent deleteIntent;
    public Bundle extras;
    public int flags;
    public PendingIntent fullScreenIntent;

    @Deprecated
    public RemoteViews headsUpContentView;

    @Deprecated
    public int icon;
    public int iconLevel;

    @Deprecated
    public Bitmap largeIcon;

    @Deprecated
    public int ledARGB;

    @Deprecated
    public int ledOffMS;

    @Deprecated
    public int ledOnMS;
    public int number;

    @Deprecated
    public int priority;
    public Notification publicVersion;

    @Deprecated
    public Uri sound;
    public CharSequence tickerText;

    @Deprecated
    public RemoteViews tickerView;
    public int visibility;
    public long when;
    public static final AudioAttributes AUDIO_ATTRIBUTES_DEFAULT = null;
    public static final Parcelable.Creator<Notification> CREATOR = null;
    public Action[] actions = null;

    @Deprecated
    public long[] vibrate = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/Notification$Extender.class
 */
    public interface Extender {
        Builder extend(Builder builder);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/Notification$Action.class
 */
    public static class Action implements Parcelable {
        public static final Parcelable.Creator<Action> CREATOR = null;
        public PendingIntent actionIntent;

        @Deprecated
        public int icon;
        public CharSequence title;

        /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/Notification$Action$Extender.class
 */
        public interface Extender {
            Builder extend(Builder builder);
        }

        /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/Notification$Action$Builder.class
 */
        public static final class Builder {
            @Deprecated
            public Builder(int icon, CharSequence title, PendingIntent intent) {
                throw new RuntimeException("Stub!");
            }

            public Builder(Icon icon, CharSequence title, PendingIntent intent) {
                throw new RuntimeException("Stub!");
            }

            public Builder(Action action) {
                throw new RuntimeException("Stub!");
            }

            public Builder addExtras(Bundle extras) {
                throw new RuntimeException("Stub!");
            }

            public Bundle getExtras() {
                throw new RuntimeException("Stub!");
            }

            public Builder addRemoteInput(RemoteInput remoteInput) {
                throw new RuntimeException("Stub!");
            }

            public Builder setAllowGeneratedReplies(boolean allowGeneratedReplies) {
                throw new RuntimeException("Stub!");
            }

            public Builder extend(Extender extender) {
                throw new RuntimeException("Stub!");
            }

            public Action build() {
                throw new RuntimeException("Stub!");
            }
        }

        /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/Notification$Action$WearableExtender.class
 */
        public static final class WearableExtender implements Extender {
            public WearableExtender() {
                throw new RuntimeException("Stub!");
            }

            public WearableExtender(Action action) {
                throw new RuntimeException("Stub!");
            }

            @Override
            public Builder extend(Builder builder) {
                throw new RuntimeException("Stub!");
            }

            public WearableExtender m103clone() {
                throw new RuntimeException("Stub!");
            }

            public WearableExtender setAvailableOffline(boolean availableOffline) {
                throw new RuntimeException("Stub!");
            }

            public boolean isAvailableOffline() {
                throw new RuntimeException("Stub!");
            }

            public WearableExtender setInProgressLabel(CharSequence label) {
                throw new RuntimeException("Stub!");
            }

            public CharSequence getInProgressLabel() {
                throw new RuntimeException("Stub!");
            }

            public WearableExtender setConfirmLabel(CharSequence label) {
                throw new RuntimeException("Stub!");
            }

            public CharSequence getConfirmLabel() {
                throw new RuntimeException("Stub!");
            }

            public WearableExtender setCancelLabel(CharSequence label) {
                throw new RuntimeException("Stub!");
            }

            public CharSequence getCancelLabel() {
                throw new RuntimeException("Stub!");
            }

            public WearableExtender setHintLaunchesActivity(boolean hintLaunchesActivity) {
                throw new RuntimeException("Stub!");
            }

            public boolean getHintLaunchesActivity() {
                throw new RuntimeException("Stub!");
            }

            public WearableExtender setHintDisplayActionInline(boolean hintDisplayInline) {
                throw new RuntimeException("Stub!");
            }

            public boolean getHintDisplayActionInline() {
                throw new RuntimeException("Stub!");
            }
        }

        @Deprecated
        public Action(int icon, CharSequence title, PendingIntent intent) {
            throw new RuntimeException("Stub!");
        }

        public Icon getIcon() {
            throw new RuntimeException("Stub!");
        }

        public Bundle getExtras() {
            throw new RuntimeException("Stub!");
        }

        public boolean getAllowGeneratedReplies() {
            throw new RuntimeException("Stub!");
        }

        public RemoteInput[] getRemoteInputs() {
            throw new RuntimeException("Stub!");
        }

        public RemoteInput[] getDataOnlyRemoteInputs() {
            throw new RuntimeException("Stub!");
        }

        public Action m102clone() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int describeContents() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void writeToParcel(Parcel out, int flags) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/Notification$Builder.class
 */
    public static class Builder {
        public Builder(Context context, String channelId) {
            throw new RuntimeException("Stub!");
        }

        @Deprecated
        public Builder(Context context) {
            throw new RuntimeException("Stub!");
        }

        public Builder setShortcutId(String shortcutId) {
            throw new RuntimeException("Stub!");
        }

        public Builder setBadgeIconType(int icon) {
            throw new RuntimeException("Stub!");
        }

        public Builder setGroupAlertBehavior(int groupAlertBehavior) {
            throw new RuntimeException("Stub!");
        }

        public Builder setChannelId(String channelId) {
            throw new RuntimeException("Stub!");
        }

        public Builder setTimeoutAfter(long durationMs) {
            throw new RuntimeException("Stub!");
        }

        public Builder setWhen(long when) {
            throw new RuntimeException("Stub!");
        }

        public Builder setShowWhen(boolean show) {
            throw new RuntimeException("Stub!");
        }

        public Builder setUsesChronometer(boolean b10) {
            throw new RuntimeException("Stub!");
        }

        public Builder setChronometerCountDown(boolean countDown) {
            throw new RuntimeException("Stub!");
        }

        public Builder setSmallIcon(int icon) {
            throw new RuntimeException("Stub!");
        }

        public Builder setSmallIcon(int icon, int level) {
            throw new RuntimeException("Stub!");
        }

        public Builder setSmallIcon(Icon icon) {
            throw new RuntimeException("Stub!");
        }

        public Builder setContentTitle(CharSequence title) {
            throw new RuntimeException("Stub!");
        }

        public Builder setContentText(CharSequence text) {
            throw new RuntimeException("Stub!");
        }

        public Builder setSubText(CharSequence text) {
            throw new RuntimeException("Stub!");
        }

        public Builder setSettingsText(CharSequence text) {
            throw new RuntimeException("Stub!");
        }

        public Builder setRemoteInputHistory(CharSequence[] text) {
            throw new RuntimeException("Stub!");
        }

        public Builder setNumber(int number) {
            throw new RuntimeException("Stub!");
        }

        @Deprecated
        public Builder setContentInfo(CharSequence info) {
            throw new RuntimeException("Stub!");
        }

        public Builder setProgress(int max, int progress, boolean indeterminate) {
            throw new RuntimeException("Stub!");
        }

        @Deprecated
        public Builder setContent(RemoteViews views) {
            throw new RuntimeException("Stub!");
        }

        public Builder setCustomContentView(RemoteViews contentView) {
            throw new RuntimeException("Stub!");
        }

        public Builder setCustomBigContentView(RemoteViews contentView) {
            throw new RuntimeException("Stub!");
        }

        public Builder setCustomHeadsUpContentView(RemoteViews contentView) {
            throw new RuntimeException("Stub!");
        }

        public Builder setContentIntent(PendingIntent intent) {
            throw new RuntimeException("Stub!");
        }

        public Builder setDeleteIntent(PendingIntent intent) {
            throw new RuntimeException("Stub!");
        }

        public Builder setFullScreenIntent(PendingIntent intent, boolean highPriority) {
            throw new RuntimeException("Stub!");
        }

        public Builder setTicker(CharSequence tickerText) {
            throw new RuntimeException("Stub!");
        }

        @Deprecated
        public Builder setTicker(CharSequence tickerText, RemoteViews views) {
            throw new RuntimeException("Stub!");
        }

        public Builder setLargeIcon(Bitmap b10) {
            throw new RuntimeException("Stub!");
        }

        public Builder setLargeIcon(Icon icon) {
            throw new RuntimeException("Stub!");
        }

        @Deprecated
        public Builder setSound(Uri sound) {
            throw new RuntimeException("Stub!");
        }

        @Deprecated
        public Builder setSound(Uri sound, int streamType) {
            throw new RuntimeException("Stub!");
        }

        @Deprecated
        public Builder setSound(Uri sound, AudioAttributes audioAttributes) {
            throw new RuntimeException("Stub!");
        }

        @Deprecated
        public Builder setVibrate(long[] pattern) {
            throw new RuntimeException("Stub!");
        }

        @Deprecated
        public Builder setLights(int argb, int onMs, int offMs) {
            throw new RuntimeException("Stub!");
        }

        public Builder setOngoing(boolean ongoing) {
            throw new RuntimeException("Stub!");
        }

        public Builder setColorized(boolean colorize) {
            throw new RuntimeException("Stub!");
        }

        public Builder setOnlyAlertOnce(boolean onlyAlertOnce) {
            throw new RuntimeException("Stub!");
        }

        public Builder setAutoCancel(boolean autoCancel) {
            throw new RuntimeException("Stub!");
        }

        public Builder setLocalOnly(boolean localOnly) {
            throw new RuntimeException("Stub!");
        }

        @Deprecated
        public Builder setDefaults(int defaults) {
            throw new RuntimeException("Stub!");
        }

        @Deprecated
        public Builder setPriority(int pri) {
            throw new RuntimeException("Stub!");
        }

        public Builder setCategory(String category) {
            throw new RuntimeException("Stub!");
        }

        public Builder addPerson(String uri) {
            throw new RuntimeException("Stub!");
        }

        public Builder setGroup(String groupKey) {
            throw new RuntimeException("Stub!");
        }

        public Builder setGroupSummary(boolean isGroupSummary) {
            throw new RuntimeException("Stub!");
        }

        public Builder setSortKey(String sortKey) {
            throw new RuntimeException("Stub!");
        }

        public Builder addExtras(Bundle extras) {
            throw new RuntimeException("Stub!");
        }

        public Builder setExtras(Bundle extras) {
            throw new RuntimeException("Stub!");
        }

        public Bundle getExtras() {
            throw new RuntimeException("Stub!");
        }

        @Deprecated
        public Builder addAction(int icon, CharSequence title, PendingIntent intent) {
            throw new RuntimeException("Stub!");
        }

        public Builder addAction(Action action) {
            throw new RuntimeException("Stub!");
        }

        public Builder setActions(Action... actions) {
            throw new RuntimeException("Stub!");
        }

        public Builder setStyle(Style style) {
            throw new RuntimeException("Stub!");
        }

        public Builder setVisibility(int visibility) {
            throw new RuntimeException("Stub!");
        }

        public Builder setPublicVersion(Notification n10) {
            throw new RuntimeException("Stub!");
        }

        public Builder extend(Extender extender) {
            throw new RuntimeException("Stub!");
        }

        public Builder setColor(int argb) {
            throw new RuntimeException("Stub!");
        }

        public RemoteViews createContentView() {
            throw new RuntimeException("Stub!");
        }

        public RemoteViews createBigContentView() {
            throw new RuntimeException("Stub!");
        }

        public RemoteViews createHeadsUpContentView() {
            throw new RuntimeException("Stub!");
        }

        public static Builder recoverBuilder(Context context, Notification n10) {
            throw new RuntimeException("Stub!");
        }

        @Deprecated
        public Notification getNotification() {
            throw new RuntimeException("Stub!");
        }

        public Notification build() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/Notification$Style.class
 */
    public static abstract class Style {
        protected Builder mBuilder;

        public Style() {
            throw new RuntimeException("Stub!");
        }

        protected void internalSetBigContentTitle(CharSequence title) {
            throw new RuntimeException("Stub!");
        }

        protected void internalSetSummaryText(CharSequence cs) {
            throw new RuntimeException("Stub!");
        }

        public void setBuilder(Builder builder) {
            throw new RuntimeException("Stub!");
        }

        protected void checkBuilder() {
            throw new RuntimeException("Stub!");
        }

        protected RemoteViews getStandardView(int layoutId) {
            throw new RuntimeException("Stub!");
        }

        public Notification build() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/Notification$BigPictureStyle.class
 */
    public static class BigPictureStyle extends Style {
        public BigPictureStyle() {
            throw new RuntimeException("Stub!");
        }

        @Deprecated
        public BigPictureStyle(Builder builder) {
            throw new RuntimeException("Stub!");
        }

        public BigPictureStyle setBigContentTitle(CharSequence title) {
            throw new RuntimeException("Stub!");
        }

        public BigPictureStyle setSummaryText(CharSequence cs) {
            throw new RuntimeException("Stub!");
        }

        public BigPictureStyle bigPicture(Bitmap b10) {
            throw new RuntimeException("Stub!");
        }

        public BigPictureStyle bigLargeIcon(Bitmap b10) {
            throw new RuntimeException("Stub!");
        }

        public BigPictureStyle bigLargeIcon(Icon icon) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/Notification$BigTextStyle.class
 */
    public static class BigTextStyle extends Style {
        public BigTextStyle() {
            throw new RuntimeException("Stub!");
        }

        @Deprecated
        public BigTextStyle(Builder builder) {
            throw new RuntimeException("Stub!");
        }

        public BigTextStyle setBigContentTitle(CharSequence title) {
            throw new RuntimeException("Stub!");
        }

        public BigTextStyle setSummaryText(CharSequence cs) {
            throw new RuntimeException("Stub!");
        }

        public BigTextStyle bigText(CharSequence cs) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/Notification$MessagingStyle.class
 */
    public static class MessagingStyle extends Style {
        public static final int MAXIMUM_RETAINED_MESSAGES = 25;

        /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/Notification$MessagingStyle$Message.class
 */
        public static final class Message {
            public Message(CharSequence text, long timestamp, CharSequence sender) {
                throw new RuntimeException("Stub!");
            }

            public Message setData(String dataMimeType, Uri dataUri) {
                throw new RuntimeException("Stub!");
            }

            public CharSequence getText() {
                throw new RuntimeException("Stub!");
            }

            public long getTimestamp() {
                throw new RuntimeException("Stub!");
            }

            public Bundle getExtras() {
                throw new RuntimeException("Stub!");
            }

            public CharSequence getSender() {
                throw new RuntimeException("Stub!");
            }

            public String getDataMimeType() {
                throw new RuntimeException("Stub!");
            }

            public Uri getDataUri() {
                throw new RuntimeException("Stub!");
            }
        }

        public MessagingStyle(CharSequence userDisplayName) {
            throw new RuntimeException("Stub!");
        }

        public CharSequence getUserDisplayName() {
            throw new RuntimeException("Stub!");
        }

        public MessagingStyle setConversationTitle(CharSequence conversationTitle) {
            throw new RuntimeException("Stub!");
        }

        public CharSequence getConversationTitle() {
            throw new RuntimeException("Stub!");
        }

        public MessagingStyle addMessage(CharSequence text, long timestamp, CharSequence sender) {
            throw new RuntimeException("Stub!");
        }

        public MessagingStyle addMessage(Message message) {
            throw new RuntimeException("Stub!");
        }

        public MessagingStyle addHistoricMessage(Message message) {
            throw new RuntimeException("Stub!");
        }

        public List<Message> getMessages() {
            throw new RuntimeException("Stub!");
        }

        public List<Message> getHistoricMessages() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/Notification$InboxStyle.class
 */
    public static class InboxStyle extends Style {
        public InboxStyle() {
            throw new RuntimeException("Stub!");
        }

        @Deprecated
        public InboxStyle(Builder builder) {
            throw new RuntimeException("Stub!");
        }

        public InboxStyle setBigContentTitle(CharSequence title) {
            throw new RuntimeException("Stub!");
        }

        public InboxStyle setSummaryText(CharSequence cs) {
            throw new RuntimeException("Stub!");
        }

        public InboxStyle addLine(CharSequence cs) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/Notification$MediaStyle.class
 */
    public static class MediaStyle extends Style {
        public MediaStyle() {
            throw new RuntimeException("Stub!");
        }

        @Deprecated
        public MediaStyle(Builder builder) {
            throw new RuntimeException("Stub!");
        }

        public MediaStyle setShowActionsInCompactView(int... actions) {
            throw new RuntimeException("Stub!");
        }

        public MediaStyle setMediaSession(MediaSession.Token token) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/Notification$DecoratedCustomViewStyle.class
 */
    public static class DecoratedCustomViewStyle extends Style {
        public DecoratedCustomViewStyle() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/Notification$DecoratedMediaCustomViewStyle.class
 */
    public static class DecoratedMediaCustomViewStyle extends MediaStyle {
        public DecoratedMediaCustomViewStyle() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/Notification$WearableExtender.class
 */
    public static final class WearableExtender implements Extender {
        public static final int SCREEN_TIMEOUT_LONG = -1;
        public static final int SCREEN_TIMEOUT_SHORT = 0;
        public static final int SIZE_DEFAULT = 0;
        public static final int SIZE_FULL_SCREEN = 5;
        public static final int SIZE_LARGE = 4;
        public static final int SIZE_MEDIUM = 3;
        public static final int SIZE_SMALL = 2;
        public static final int SIZE_XSMALL = 1;
        public static final int UNSET_ACTION_INDEX = -1;

        public WearableExtender() {
            throw new RuntimeException("Stub!");
        }

        public WearableExtender(Notification notif) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public Builder extend(Builder builder) {
            throw new RuntimeException("Stub!");
        }

        public WearableExtender m104clone() {
            throw new RuntimeException("Stub!");
        }

        public WearableExtender addAction(Action action) {
            throw new RuntimeException("Stub!");
        }

        public WearableExtender addActions(List<Action> actions) {
            throw new RuntimeException("Stub!");
        }

        public WearableExtender clearActions() {
            throw new RuntimeException("Stub!");
        }

        public List<Action> getActions() {
            throw new RuntimeException("Stub!");
        }

        public WearableExtender setDisplayIntent(PendingIntent intent) {
            throw new RuntimeException("Stub!");
        }

        public PendingIntent getDisplayIntent() {
            throw new RuntimeException("Stub!");
        }

        public WearableExtender addPage(Notification page) {
            throw new RuntimeException("Stub!");
        }

        public WearableExtender addPages(List<Notification> pages) {
            throw new RuntimeException("Stub!");
        }

        public WearableExtender clearPages() {
            throw new RuntimeException("Stub!");
        }

        public List<Notification> getPages() {
            throw new RuntimeException("Stub!");
        }

        public WearableExtender setBackground(Bitmap background) {
            throw new RuntimeException("Stub!");
        }

        public Bitmap getBackground() {
            throw new RuntimeException("Stub!");
        }

        public WearableExtender setContentIcon(int icon) {
            throw new RuntimeException("Stub!");
        }

        public int getContentIcon() {
            throw new RuntimeException("Stub!");
        }

        public WearableExtender setContentIconGravity(int contentIconGravity) {
            throw new RuntimeException("Stub!");
        }

        public int getContentIconGravity() {
            throw new RuntimeException("Stub!");
        }

        public WearableExtender setContentAction(int actionIndex) {
            throw new RuntimeException("Stub!");
        }

        public int getContentAction() {
            throw new RuntimeException("Stub!");
        }

        public WearableExtender setGravity(int gravity) {
            throw new RuntimeException("Stub!");
        }

        public int getGravity() {
            throw new RuntimeException("Stub!");
        }

        public WearableExtender setCustomSizePreset(int sizePreset) {
            throw new RuntimeException("Stub!");
        }

        public int getCustomSizePreset() {
            throw new RuntimeException("Stub!");
        }

        public WearableExtender setCustomContentHeight(int height) {
            throw new RuntimeException("Stub!");
        }

        public int getCustomContentHeight() {
            throw new RuntimeException("Stub!");
        }

        public WearableExtender setStartScrollBottom(boolean startScrollBottom) {
            throw new RuntimeException("Stub!");
        }

        public boolean getStartScrollBottom() {
            throw new RuntimeException("Stub!");
        }

        public WearableExtender setContentIntentAvailableOffline(boolean contentIntentAvailableOffline) {
            throw new RuntimeException("Stub!");
        }

        public boolean getContentIntentAvailableOffline() {
            throw new RuntimeException("Stub!");
        }

        public WearableExtender setHintHideIcon(boolean hintHideIcon) {
            throw new RuntimeException("Stub!");
        }

        public boolean getHintHideIcon() {
            throw new RuntimeException("Stub!");
        }

        public WearableExtender setHintShowBackgroundOnly(boolean hintShowBackgroundOnly) {
            throw new RuntimeException("Stub!");
        }

        public boolean getHintShowBackgroundOnly() {
            throw new RuntimeException("Stub!");
        }

        public WearableExtender setHintAvoidBackgroundClipping(boolean hintAvoidBackgroundClipping) {
            throw new RuntimeException("Stub!");
        }

        public boolean getHintAvoidBackgroundClipping() {
            throw new RuntimeException("Stub!");
        }

        public WearableExtender setHintScreenTimeout(int timeout) {
            throw new RuntimeException("Stub!");
        }

        public int getHintScreenTimeout() {
            throw new RuntimeException("Stub!");
        }

        public WearableExtender setHintAmbientBigPicture(boolean hintAmbientBigPicture) {
            throw new RuntimeException("Stub!");
        }

        public boolean getHintAmbientBigPicture() {
            throw new RuntimeException("Stub!");
        }

        public WearableExtender setHintContentIntentLaunchesActivity(boolean hintContentIntentLaunchesActivity) {
            throw new RuntimeException("Stub!");
        }

        public boolean getHintContentIntentLaunchesActivity() {
            throw new RuntimeException("Stub!");
        }

        public WearableExtender setDismissalId(String dismissalId) {
            throw new RuntimeException("Stub!");
        }

        public String getDismissalId() {
            throw new RuntimeException("Stub!");
        }

        public WearableExtender setBridgeTag(String bridgeTag) {
            throw new RuntimeException("Stub!");
        }

        public String getBridgeTag() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/Notification$CarExtender.class
 */
    public static final class CarExtender implements Extender {

        /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/Notification$CarExtender$UnreadConversation.class
 */
        public static class UnreadConversation {
            UnreadConversation() {
                throw new RuntimeException("Stub!");
            }

            public String[] getMessages() {
                throw new RuntimeException("Stub!");
            }

            public RemoteInput getRemoteInput() {
                throw new RuntimeException("Stub!");
            }

            public PendingIntent getReplyPendingIntent() {
                throw new RuntimeException("Stub!");
            }

            public PendingIntent getReadPendingIntent() {
                throw new RuntimeException("Stub!");
            }

            public String[] getParticipants() {
                throw new RuntimeException("Stub!");
            }

            public String getParticipant() {
                throw new RuntimeException("Stub!");
            }

            public long getLatestTimestamp() {
                throw new RuntimeException("Stub!");
            }
        }

        /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/Notification$CarExtender$Builder.class
 */
        public static class Builder {
            public Builder(String name) {
                throw new RuntimeException("Stub!");
            }

            public Builder addMessage(String message) {
                throw new RuntimeException("Stub!");
            }

            public Builder setReplyAction(PendingIntent pendingIntent, RemoteInput remoteInput) {
                throw new RuntimeException("Stub!");
            }

            public Builder setReadPendingIntent(PendingIntent pendingIntent) {
                throw new RuntimeException("Stub!");
            }

            public Builder setLatestTimestamp(long timestamp) {
                throw new RuntimeException("Stub!");
            }

            public UnreadConversation build() {
                throw new RuntimeException("Stub!");
            }
        }

        public CarExtender() {
            throw new RuntimeException("Stub!");
        }

        public CarExtender(Notification notif) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public Builder extend(Builder builder) {
            throw new RuntimeException("Stub!");
        }

        public CarExtender setColor(int color) {
            throw new RuntimeException("Stub!");
        }

        public int getColor() {
            throw new RuntimeException("Stub!");
        }

        public CarExtender setLargeIcon(Bitmap largeIcon) {
            throw new RuntimeException("Stub!");
        }

        public Bitmap getLargeIcon() {
            throw new RuntimeException("Stub!");
        }

        public CarExtender setUnreadConversation(UnreadConversation unreadConversation) {
            throw new RuntimeException("Stub!");
        }

        public UnreadConversation getUnreadConversation() {
            throw new RuntimeException("Stub!");
        }
    }

    public Notification() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public Notification(int icon, CharSequence tickerText, long when) {
        throw new RuntimeException("Stub!");
    }

    public Notification(Parcel parcel) {
        throw new RuntimeException("Stub!");
    }

    public String getGroup() {
        throw new RuntimeException("Stub!");
    }

    public String getSortKey() {
        throw new RuntimeException("Stub!");
    }

    public Notification m100clone() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public String getChannelId() {
        throw new RuntimeException("Stub!");
    }

    public long getTimeoutAfter() {
        throw new RuntimeException("Stub!");
    }

    public int getBadgeIconType() {
        throw new RuntimeException("Stub!");
    }

    public String getShortcutId() {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getSettingsText() {
        throw new RuntimeException("Stub!");
    }

    public int getGroupAlertBehavior() {
        throw new RuntimeException("Stub!");
    }

    public Icon getSmallIcon() {
        throw new RuntimeException("Stub!");
    }

    public Icon getLargeIcon() {
        throw new RuntimeException("Stub!");
    }
}
