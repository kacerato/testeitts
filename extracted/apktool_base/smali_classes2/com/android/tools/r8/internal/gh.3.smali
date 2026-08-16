.class public abstract Lcom/android/tools/r8/internal/gh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/Cl;

.field public static final b:Lcom/android/tools/r8/internal/uz;

.field public static final c:Lcom/android/tools/r8/internal/Pl;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    const-string v0, "\n\u0013Configuration.proto\u0012\u0007aapt.pb\"\u0097\u0016\n\rConfiguration\u0012\u000b\n\u0003mcc\u0018\u0001 \u0001(\r\u0012\u000b\n\u0003mnc\u0018\u0002 \u0001(\r\u0012\u000e\n\u0006locale\u0018\u0003 \u0001(\t\u0012@\n\u0010layout_direction\u0018\u0004 \u0001(\u000e2&.aapt.pb.Configuration.LayoutDirection\u0012\u0014\n\u000cscreen_width\u0018\u0005 \u0001(\r\u0012\u0015\n\rscreen_height\u0018\u0006 \u0001(\r\u0012\u0017\n\u000fscreen_width_dp\u0018\u0007 \u0001(\r\u0012\u0018\n\u0010screen_height_dp\u0018\u0008 \u0001(\r\u0012 \n\u0018smallest_screen_width_dp\u0018\t \u0001(\r\u0012C\n\u0012screen_layout_size\u0018\n \u0001(\u000e2\'.aapt.pb.Configuration.ScreenLayoutSize\u0012C\n\u0012screen_layout_long\u0018\u000b \u0001(\u000e2\'.aapt.pb.Configuration.ScreenLayoutLong\u00128\n\u000cscreen_round\u0018\u000c \u0001(\u000e2\".aapt.pb.Configuration.ScreenRound\u0012?\n\u0010wide_color_gamut\u0018\r \u0001(\u000e2%.aapt.pb.Configuration.WideColorGamut\u0012\'\n\u0003hdr\u0018\u000e \u0001(\u000e2\u001a.aapt.pb.Configuration.Hdr\u00127\n\u000borientation\u0018\u000f \u0001(\u000e2\".aapt.pb.Configuration.Orientation\u00127\n\u000cui_mode_type\u0018\u0010 \u0001(\u000e2!.aapt.pb.Configuration.UiModeType\u00129\n\rui_mode_night\u0018\u0011 \u0001(\u000e2\".aapt.pb.Configuration.UiModeNight\u0012\u000f\n\u0007density\u0018\u0012 \u0001(\r\u00127\n\u000btouchscreen\u0018\u0013 \u0001(\u000e2\".aapt.pb.Configuration.Touchscreen\u00126\n\u000bkeys_hidden\u0018\u0014 \u0001(\u000e2!.aapt.pb.Configuration.KeysHidden\u00121\n\u0008keyboard\u0018\u0015 \u0001(\u000e2\u001f.aapt.pb.Configuration.Keyboard\u00124\n\nnav_hidden\u0018\u0016 \u0001(\u000e2 .aapt.pb.Configuration.NavHidden\u00125\n\nnavigation\u0018\u0017 \u0001(\u000e2!.aapt.pb.Configuration.Navigation\u0012\u0013\n\u000bsdk_version\u0018\u0018 \u0001(\r\u0012D\n\u0012grammatical_gender\u0018\u001a \u0001(\u000e2(.aapt.pb.Configuration.GrammaticalGender\u0012\u000f\n\u0007product\u0018\u0019 \u0001(\t\"a\n\u000fLayoutDirection\u0012\u001a\n\u0016LAYOUT_DIRECTION_UNSET\u0010\u0000\u0012\u0018\n\u0014LAYOUT_DIRECTION_LTR\u0010\u0001\u0012\u0018\n\u0014LAYOUT_DIRECTION_RTL\u0010\u0002\"\u00aa\u0001\n\u0010ScreenLayoutSize\u0012\u001c\n\u0018SCREEN_LAYOUT_SIZE_UNSET\u0010\u0000\u0012\u001c\n\u0018SCREEN_LAYOUT_SIZE_SMALL\u0010\u0001\u0012\u001d\n\u0019SCREEN_LAYOUT_SIZE_NORMAL\u0010\u0002\u0012\u001c\n\u0018SCREEN_LAYOUT_SIZE_LARGE\u0010\u0003\u0012\u001d\n\u0019SCREEN_LAYOUT_SIZE_XLARGE\u0010\u0004\"m\n\u0010ScreenLayoutLong\u0012\u001c\n\u0018SCREEN_LAYOUT_LONG_UNSET\u0010\u0000\u0012\u001b\n\u0017SCREEN_LAYOUT_LONG_LONG\u0010\u0001\u0012\u001e\n\u001aSCREEN_LAYOUT_LONG_NOTLONG\u0010\u0002\"X\n\u000bScreenRound\u0012\u0016\n\u0012SCREEN_ROUND_UNSET\u0010\u0000\u0012\u0016\n\u0012SCREEN_ROUND_ROUND\u0010\u0001\u0012\u0019\n\u0015SCREEN_ROUND_NOTROUND\u0010\u0002\"h\n\u000eWideColorGamut\u0012\u001a\n\u0016WIDE_COLOR_GAMUT_UNSET\u0010\u0000\u0012\u001b\n\u0017WIDE_COLOR_GAMUT_WIDECG\u0010\u0001\u0012\u001d\n\u0019WIDE_COLOR_GAMUT_NOWIDECG\u0010\u0002\"3\n\u0003Hdr\u0012\r\n\tHDR_UNSET\u0010\u0000\u0012\u000e\n\nHDR_HIGHDR\u0010\u0001\u0012\r\n\tHDR_LOWDR\u0010\u0002\"h\n\u000bOrientation\u0012\u0015\n\u0011ORIENTATION_UNSET\u0010\u0000\u0012\u0014\n\u0010ORIENTATION_PORT\u0010\u0001\u0012\u0014\n\u0010ORIENTATION_LAND\u0010\u0002\u0012\u0016\n\u0012ORIENTATION_SQUARE\u0010\u0003\"\u00d7\u0001\n\nUiModeType\u0012\u0016\n\u0012UI_MODE_TYPE_UNSET\u0010\u0000\u0012\u0017\n\u0013UI_MODE_TYPE_NORMAL\u0010\u0001\u0012\u0015\n\u0011UI_MODE_TYPE_DESK\u0010\u0002\u0012\u0014\n\u0010UI_MODE_TYPE_CAR\u0010\u0003\u0012\u001b\n\u0017UI_MODE_TYPE_TELEVISION\u0010\u0004\u0012\u001a\n\u0016UI_MODE_TYPE_APPLIANCE\u0010\u0005\u0012\u0016\n\u0012UI_MODE_TYPE_WATCH\u0010\u0006\u0012\u001a\n\u0016UI_MODE_TYPE_VRHEADSET\u0010\u0007\"[\n\u000bUiModeNight\u0012\u0017\n\u0013UI_MODE_NIGHT_UNSET\u0010\u0000\u0012\u0017\n\u0013UI_MODE_NIGHT_NIGHT\u0010\u0001\u0012\u001a\n\u0016UI_MODE_NIGHT_NOTNIGHT\u0010\u0002\"m\n\u000bTouchscreen\u0012\u0015\n\u0011TOUCHSCREEN_UNSET\u0010\u0000\u0012\u0017\n\u0013TOUCHSCREEN_NOTOUCH\u0010\u0001\u0012\u0016\n\u0012TOUCHSCREEN_STYLUS\u0010\u0002\u0012\u0016\n\u0012TOUCHSCREEN_FINGER\u0010\u0003\"v\n\nKeysHidden\u0012\u0015\n\u0011KEYS_HIDDEN_UNSET\u0010\u0000\u0012\u001b\n\u0017KEYS_HIDDEN_KEYSEXPOSED\u0010\u0001\u0012\u001a\n\u0016KEYS_HIDDEN_KEYSHIDDEN\u0010\u0002\u0012\u0018\n\u0014KEYS_HIDDEN_KEYSSOFT\u0010\u0003\"`\n\u0008Keyboard\u0012\u0012\n\u000eKEYBOARD_UNSET\u0010\u0000\u0012\u0013\n\u000fKEYBOARD_NOKEYS\u0010\u0001\u0012\u0013\n\u000fKEYBOARD_QWERTY\u0010\u0002\u0012\u0016\n\u0012KEYBOARD_TWELVEKEY\u0010\u0003\"V\n\tNavHidden\u0012\u0014\n\u0010NAV_HIDDEN_UNSET\u0010\u0000\u0012\u0019\n\u0015NAV_HIDDEN_NAVEXPOSED\u0010\u0001\u0012\u0018\n\u0014NAV_HIDDEN_NAVHIDDEN\u0010\u0002\"}\n\nNavigation\u0012\u0014\n\u0010NAVIGATION_UNSET\u0010\u0000\u0012\u0014\n\u0010NAVIGATION_NONAV\u0010\u0001\u0012\u0013\n\u000fNAVIGATION_DPAD\u0010\u0002\u0012\u0018\n\u0014NAVIGATION_TRACKBALL\u0010\u0003\u0012\u0014\n\u0010NAVIGATION_WHEEL\u0010\u0004\"v\n\u0011GrammaticalGender\u0012\u0014\n\u0010GRAM_GENDER_USET\u0010\u0000\u0012\u0016\n\u0012GRAM_GENDER_NEUTER\u0010\u0001\u0012\u0018\n\u0014GRAM_GENDER_FEMININE\u0010\u0002\u0012\u0019\n\u0015GRAM_GENDER_MASCULINE\u0010\u0003B\u0012\n\u0010com.android.aaptb\u0006proto3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/android/tools/r8/internal/Pl;

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/Pl;->a([Ljava/lang/String;[Lcom/android/tools/r8/internal/Pl;)Lcom/android/tools/r8/internal/Pl;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/gh;->c:Lcom/android/tools/r8/internal/Pl;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Pl;->c:[Lcom/android/tools/r8/internal/Cl;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Ig;->a([Lcom/android/tools/r8/internal/Cl;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Cl;

    sput-object v0, Lcom/android/tools/r8/internal/gh;->a:Lcom/android/tools/r8/internal/Cl;

    new-instance v1, Lcom/android/tools/r8/internal/uz;

    const-string v26, "GrammaticalGender"

    const-string v27, "Product"

    const-string v2, "Mcc"

    const-string v3, "Mnc"

    const-string v4, "Locale"

    const-string v5, "LayoutDirection"

    const-string v6, "ScreenWidth"

    const-string v7, "ScreenHeight"

    const-string v8, "ScreenWidthDp"

    const-string v9, "ScreenHeightDp"

    const-string v10, "SmallestScreenWidthDp"

    const-string v11, "ScreenLayoutSize"

    const-string v12, "ScreenLayoutLong"

    const-string v13, "ScreenRound"

    const-string v14, "WideColorGamut"

    const-string v15, "Hdr"

    const-string v16, "Orientation"

    const-string v17, "UiModeType"

    const-string v18, "UiModeNight"

    const-string v19, "Density"

    const-string v20, "Touchscreen"

    const-string v21, "KeysHidden"

    const-string v22, "Keyboard"

    const-string v23, "NavHidden"

    const-string v24, "Navigation"

    const-string v25, "SdkVersion"

    filled-new-array/range {v2 .. v27}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/uz;-><init>(Lcom/android/tools/r8/internal/Cl;[Ljava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/internal/gh;->b:Lcom/android/tools/r8/internal/uz;

    return-void
.end method
