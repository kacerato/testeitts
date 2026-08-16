.class public final Lcom/android/aapt/ConfigurationOuterClass$Configuration;
.super Lcom/google/protobuf/w0;
.source "SourceFile"

# interfaces
.implements Lcom/android/aapt/ConfigurationOuterClass$ConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/ConfigurationOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;,
        Lcom/android/aapt/ConfigurationOuterClass$Configuration$LayoutDirection;,
        Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutSize;,
        Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutLong;,
        Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenRound;,
        Lcom/android/aapt/ConfigurationOuterClass$Configuration$WideColorGamut;,
        Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;,
        Lcom/android/aapt/ConfigurationOuterClass$Configuration$Orientation;,
        Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeType;,
        Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeNight;,
        Lcom/android/aapt/ConfigurationOuterClass$Configuration$Touchscreen;,
        Lcom/android/aapt/ConfigurationOuterClass$Configuration$KeysHidden;,
        Lcom/android/aapt/ConfigurationOuterClass$Configuration$Keyboard;,
        Lcom/android/aapt/ConfigurationOuterClass$Configuration$NavHidden;,
        Lcom/android/aapt/ConfigurationOuterClass$Configuration$Navigation;,
        Lcom/android/aapt/ConfigurationOuterClass$Configuration$GrammaticalGender;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

.field public static final DENSITY_FIELD_NUMBER:I = 0x12

.field public static final GRAMMATICAL_GENDER_FIELD_NUMBER:I = 0x1a

.field public static final HDR_FIELD_NUMBER:I = 0xe

.field public static final KEYBOARD_FIELD_NUMBER:I = 0x15

.field public static final KEYS_HIDDEN_FIELD_NUMBER:I = 0x14

.field public static final LAYOUT_DIRECTION_FIELD_NUMBER:I = 0x4

.field public static final LOCALE_FIELD_NUMBER:I = 0x3

.field public static final MCC_FIELD_NUMBER:I = 0x1

.field public static final MNC_FIELD_NUMBER:I = 0x2

.field public static final NAVIGATION_FIELD_NUMBER:I = 0x17

.field public static final NAV_HIDDEN_FIELD_NUMBER:I = 0x16

.field public static final ORIENTATION_FIELD_NUMBER:I = 0xf

.field private static final PARSER:Lcom/google/protobuf/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/w1<",
            "Lcom/android/aapt/ConfigurationOuterClass$Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRODUCT_FIELD_NUMBER:I = 0x19

.field public static final SCREEN_HEIGHT_DP_FIELD_NUMBER:I = 0x8

.field public static final SCREEN_HEIGHT_FIELD_NUMBER:I = 0x6

.field public static final SCREEN_LAYOUT_LONG_FIELD_NUMBER:I = 0xb

.field public static final SCREEN_LAYOUT_SIZE_FIELD_NUMBER:I = 0xa

.field public static final SCREEN_ROUND_FIELD_NUMBER:I = 0xc

.field public static final SCREEN_WIDTH_DP_FIELD_NUMBER:I = 0x7

.field public static final SCREEN_WIDTH_FIELD_NUMBER:I = 0x5

.field public static final SDK_VERSION_FIELD_NUMBER:I = 0x18

.field public static final SMALLEST_SCREEN_WIDTH_DP_FIELD_NUMBER:I = 0x9

.field public static final TOUCHSCREEN_FIELD_NUMBER:I = 0x13

.field public static final UI_MODE_NIGHT_FIELD_NUMBER:I = 0x11

.field public static final UI_MODE_TYPE_FIELD_NUMBER:I = 0x10

.field public static final WIDE_COLOR_GAMUT_FIELD_NUMBER:I = 0xd

.field private static final serialVersionUID:J


# instance fields
.field private density_:I

.field private grammaticalGender_:I

.field private hdr_:I

.field private keyboard_:I

.field private keysHidden_:I

.field private layoutDirection_:I

.field private volatile locale_:Ljava/lang/Object;

.field private mcc_:I

.field private memoizedIsInitialized:B

.field private mnc_:I

.field private navHidden_:I

.field private navigation_:I

.field private orientation_:I

.field private volatile product_:Ljava/lang/Object;

.field private screenHeightDp_:I

.field private screenHeight_:I

.field private screenLayoutLong_:I

.field private screenLayoutSize_:I

.field private screenRound_:I

.field private screenWidthDp_:I

.field private screenWidth_:I

.field private sdkVersion_:I

.field private smallestScreenWidthDp_:I

.field private touchscreen_:I

.field private uiModeNight_:I

.field private uiModeType_:I

.field private wideColorGamut_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    invoke-direct {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;-><init>()V

    sput-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->DEFAULT_INSTANCE:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    new-instance v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$1;

    invoke-direct {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$1;-><init>()V

    sput-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->PARSER:Lcom/google/protobuf/w1;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Lcom/google/protobuf/w0;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->mcc_:I

    .line 32
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->mnc_:I

    .line 33
    const-string v1, ""

    iput-object v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->locale_:Ljava/lang/Object;

    .line 34
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->layoutDirection_:I

    .line 35
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenWidth_:I

    .line 36
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenHeight_:I

    .line 37
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenWidthDp_:I

    .line 38
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenHeightDp_:I

    .line 39
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->smallestScreenWidthDp_:I

    .line 40
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenLayoutSize_:I

    .line 41
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenLayoutLong_:I

    .line 42
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenRound_:I

    .line 43
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->wideColorGamut_:I

    .line 44
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->hdr_:I

    .line 45
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->orientation_:I

    .line 46
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->uiModeType_:I

    .line 47
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->uiModeNight_:I

    .line 48
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->density_:I

    .line 49
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->touchscreen_:I

    .line 50
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->keysHidden_:I

    .line 51
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->keyboard_:I

    .line 52
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->navHidden_:I

    .line 53
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->navigation_:I

    .line 54
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->sdkVersion_:I

    .line 55
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->grammaticalGender_:I

    .line 56
    iput-object v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->product_:Ljava/lang/Object;

    const/4 v2, -0x1

    .line 57
    iput-byte v2, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->memoizedIsInitialized:B

    .line 58
    iput-object v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->locale_:Ljava/lang/Object;

    .line 59
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->layoutDirection_:I

    .line 60
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenLayoutSize_:I

    .line 61
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenLayoutLong_:I

    .line 62
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenRound_:I

    .line 63
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->wideColorGamut_:I

    .line 64
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->hdr_:I

    .line 65
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->orientation_:I

    .line 66
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->uiModeType_:I

    .line 67
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->uiModeNight_:I

    .line 68
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->touchscreen_:I

    .line 69
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->keysHidden_:I

    .line 70
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->keyboard_:I

    .line 71
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->navHidden_:I

    .line 72
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->navigation_:I

    .line 73
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->grammaticalGender_:I

    .line 74
    iput-object v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->product_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/w0$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/w0$b<",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0;-><init>(Lcom/google/protobuf/w0$b;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->mcc_:I

    .line 4
    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->mnc_:I

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->locale_:Ljava/lang/Object;

    .line 6
    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->layoutDirection_:I

    .line 7
    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenWidth_:I

    .line 8
    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenHeight_:I

    .line 9
    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenWidthDp_:I

    .line 10
    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenHeightDp_:I

    .line 11
    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->smallestScreenWidthDp_:I

    .line 12
    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenLayoutSize_:I

    .line 13
    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenLayoutLong_:I

    .line 14
    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenRound_:I

    .line 15
    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->wideColorGamut_:I

    .line 16
    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->hdr_:I

    .line 17
    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->orientation_:I

    .line 18
    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->uiModeType_:I

    .line 19
    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->uiModeNight_:I

    .line 20
    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->density_:I

    .line 21
    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->touchscreen_:I

    .line 22
    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->keysHidden_:I

    .line 23
    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->keyboard_:I

    .line 24
    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->navHidden_:I

    .line 25
    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->navigation_:I

    .line 26
    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->sdkVersion_:I

    .line 27
    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->grammaticalGender_:I

    .line 28
    iput-object v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->product_:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 29
    iput-byte p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$b;Lcom/android/aapt/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;-><init>(Lcom/google/protobuf/w0$b;)V

    return-void
.end method

.method public static bridge synthetic A6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I
    .locals 0

    iget p0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->navigation_:I

    return p0
.end method

.method public static bridge synthetic B6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I
    .locals 0

    iget p0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->orientation_:I

    return p0
.end method

.method public static bridge synthetic C6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->product_:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic D6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I
    .locals 0

    iget p0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenLayoutLong_:I

    return p0
.end method

.method public static bridge synthetic E6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I
    .locals 0

    iget p0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenLayoutSize_:I

    return p0
.end method

.method public static bridge synthetic F6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I
    .locals 0

    iget p0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenRound_:I

    return p0
.end method

.method public static bridge synthetic G6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I
    .locals 0

    iget p0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->touchscreen_:I

    return p0
.end method

.method public static bridge synthetic H6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I
    .locals 0

    iget p0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->uiModeNight_:I

    return p0
.end method

.method public static bridge synthetic I6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I
    .locals 0

    iget p0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->uiModeType_:I

    return p0
.end method

.method public static bridge synthetic J6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I
    .locals 0

    iget p0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->wideColorGamut_:I

    return p0
.end method

.method public static bridge synthetic K6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->density_:I

    return-void
.end method

.method public static bridge synthetic L6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->grammaticalGender_:I

    return-void
.end method

.method public static bridge synthetic M6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->hdr_:I

    return-void
.end method

.method public static bridge synthetic N6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->keyboard_:I

    return-void
.end method

.method public static bridge synthetic O6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->keysHidden_:I

    return-void
.end method

.method public static bridge synthetic P6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->layoutDirection_:I

    return-void
.end method

.method public static bridge synthetic Q6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->locale_:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic R6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->mcc_:I

    return-void
.end method

.method public static bridge synthetic S6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->mnc_:I

    return-void
.end method

.method public static bridge synthetic T6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->navHidden_:I

    return-void
.end method

.method public static bridge synthetic U6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->navigation_:I

    return-void
.end method

.method public static bridge synthetic V6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->orientation_:I

    return-void
.end method

.method public static bridge synthetic W6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->product_:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic X6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenHeightDp_:I

    return-void
.end method

.method public static bridge synthetic Y6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenHeight_:I

    return-void
.end method

.method public static bridge synthetic Z6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenLayoutLong_:I

    return-void
.end method

.method public static bridge synthetic a7(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenLayoutSize_:I

    return-void
.end method

.method public static synthetic access$000(Lcom/google/protobuf/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/x;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/google/protobuf/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/x;)V

    return-void
.end method

.method public static bridge synthetic b7(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenRound_:I

    return-void
.end method

.method public static bridge synthetic c7(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenWidthDp_:I

    return-void
.end method

.method public static bridge synthetic d7(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenWidth_:I

    return-void
.end method

.method public static bridge synthetic e7(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->sdkVersion_:I

    return-void
.end method

.method public static bridge synthetic f7(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->smallestScreenWidthDp_:I

    return-void
.end method

.method public static bridge synthetic g7(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->touchscreen_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/aapt/ConfigurationOuterClass$Configuration;
    .locals 1

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->DEFAULT_INSTANCE:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/ConfigurationOuterClass;->a()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic h7(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->uiModeNight_:I

    return-void
.end method

.method public static bridge synthetic i7(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->uiModeType_:I

    return-void
.end method

.method public static bridge synthetic j7(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->wideColorGamut_:I

    return-void
.end method

.method public static newBuilder()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->DEFAULT_INSTANCE:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    invoke-virtual {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->toBuilder()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->DEFAULT_INSTANCE:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    invoke-virtual {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->toBuilder()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->mergeFrom(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/aapt/ConfigurationOuterClass$Configuration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->PARSER:Lcom/google/protobuf/w1;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/android/aapt/ConfigurationOuterClass$Configuration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->PARSER:Lcom/google/protobuf/w1;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/C;)Lcom/android/aapt/ConfigurationOuterClass$Configuration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->PARSER:Lcom/google/protobuf/w1;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/ConfigurationOuterClass$Configuration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->PARSER:Lcom/google/protobuf/w1;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/x;)Lcom/android/aapt/ConfigurationOuterClass$Configuration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/android/aapt/ConfigurationOuterClass$Configuration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/aapt/ConfigurationOuterClass$Configuration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->PARSER:Lcom/google/protobuf/w1;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/android/aapt/ConfigurationOuterClass$Configuration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->PARSER:Lcom/google/protobuf/w1;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/aapt/ConfigurationOuterClass$Configuration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Lcom/android/aapt/ConfigurationOuterClass$Configuration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/aapt/ConfigurationOuterClass$Configuration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/d0;)Lcom/android/aapt/ConfigurationOuterClass$Configuration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom([BLcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/android/aapt/ConfigurationOuterClass$Configuration;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->PARSER:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public static bridge synthetic t6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I
    .locals 0

    iget p0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->grammaticalGender_:I

    return p0
.end method

.method public static bridge synthetic u6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I
    .locals 0

    iget p0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->hdr_:I

    return p0
.end method

.method public static bridge synthetic v6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I
    .locals 0

    iget p0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->keyboard_:I

    return p0
.end method

.method public static bridge synthetic w6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I
    .locals 0

    iget p0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->keysHidden_:I

    return p0
.end method

.method public static bridge synthetic x6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I
    .locals 0

    iget p0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->layoutDirection_:I

    return p0
.end method

.method public static bridge synthetic y6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->locale_:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic z6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I
    .locals 0

    iget p0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->navHidden_:I

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getMcc()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getMcc()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getMnc()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getMnc()I

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    :cond_4
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->layoutDirection_:I

    iget v2, p1, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->layoutDirection_:I

    if-eq v1, v2, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getScreenWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getScreenWidth()I

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    :cond_6
    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getScreenHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getScreenHeight()I

    move-result v2

    if-eq v1, v2, :cond_7

    return v3

    :cond_7
    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getScreenWidthDp()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getScreenWidthDp()I

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    :cond_8
    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getScreenHeightDp()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getScreenHeightDp()I

    move-result v2

    if-eq v1, v2, :cond_9

    return v3

    :cond_9
    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getSmallestScreenWidthDp()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getSmallestScreenWidthDp()I

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    :cond_a
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenLayoutSize_:I

    iget v2, p1, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenLayoutSize_:I

    if-eq v1, v2, :cond_b

    return v3

    :cond_b
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenLayoutLong_:I

    iget v2, p1, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenLayoutLong_:I

    if-eq v1, v2, :cond_c

    return v3

    :cond_c
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenRound_:I

    iget v2, p1, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenRound_:I

    if-eq v1, v2, :cond_d

    return v3

    :cond_d
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->wideColorGamut_:I

    iget v2, p1, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->wideColorGamut_:I

    if-eq v1, v2, :cond_e

    return v3

    :cond_e
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->hdr_:I

    iget v2, p1, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->hdr_:I

    if-eq v1, v2, :cond_f

    return v3

    :cond_f
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->orientation_:I

    iget v2, p1, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->orientation_:I

    if-eq v1, v2, :cond_10

    return v3

    :cond_10
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->uiModeType_:I

    iget v2, p1, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->uiModeType_:I

    if-eq v1, v2, :cond_11

    return v3

    :cond_11
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->uiModeNight_:I

    iget v2, p1, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->uiModeNight_:I

    if-eq v1, v2, :cond_12

    return v3

    :cond_12
    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getDensity()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getDensity()I

    move-result v2

    if-eq v1, v2, :cond_13

    return v3

    :cond_13
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->touchscreen_:I

    iget v2, p1, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->touchscreen_:I

    if-eq v1, v2, :cond_14

    return v3

    :cond_14
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->keysHidden_:I

    iget v2, p1, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->keysHidden_:I

    if-eq v1, v2, :cond_15

    return v3

    :cond_15
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->keyboard_:I

    iget v2, p1, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->keyboard_:I

    if-eq v1, v2, :cond_16

    return v3

    :cond_16
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->navHidden_:I

    iget v2, p1, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->navHidden_:I

    if-eq v1, v2, :cond_17

    return v3

    :cond_17
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->navigation_:I

    iget v2, p1, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->navigation_:I

    if-eq v1, v2, :cond_18

    return v3

    :cond_18
    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getSdkVersion()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getSdkVersion()I

    move-result v2

    if-eq v1, v2, :cond_19

    return v3

    :cond_19
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->grammaticalGender_:I

    iget v2, p1, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->grammaticalGender_:I

    if-eq v1, v2, :cond_1a

    return v3

    :cond_1a
    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getProduct()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getProduct()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v3

    :cond_1b
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/r2;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    return v3

    :cond_1c
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/android/aapt/ConfigurationOuterClass$Configuration;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->DEFAULT_INSTANCE:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getDefaultInstanceForType()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getDefaultInstanceForType()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getDensity()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->density_:I

    return v0
.end method

.method public getGrammaticalGender()Lcom/android/aapt/ConfigurationOuterClass$Configuration$GrammaticalGender;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->grammaticalGender_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$GrammaticalGender;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$GrammaticalGender;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$GrammaticalGender;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$GrammaticalGender;

    :cond_0
    return-object v0
.end method

.method public getGrammaticalGenderValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->grammaticalGender_:I

    return v0
.end method

.method public getHdr()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->hdr_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    :cond_0
    return-object v0
.end method

.method public getHdrValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->hdr_:I

    return v0
.end method

.method public getKeyboard()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Keyboard;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->keyboard_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Keyboard;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Keyboard;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Keyboard;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Keyboard;

    :cond_0
    return-object v0
.end method

.method public getKeyboardValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->keyboard_:I

    return v0
.end method

.method public getKeysHidden()Lcom/android/aapt/ConfigurationOuterClass$Configuration$KeysHidden;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->keysHidden_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$KeysHidden;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$KeysHidden;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$KeysHidden;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$KeysHidden;

    :cond_0
    return-object v0
.end method

.method public getKeysHiddenValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->keysHidden_:I

    return v0
.end method

.method public getLayoutDirection()Lcom/android/aapt/ConfigurationOuterClass$Configuration$LayoutDirection;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->layoutDirection_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$LayoutDirection;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$LayoutDirection;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$LayoutDirection;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$LayoutDirection;

    :cond_0
    return-object v0
.end method

.method public getLayoutDirectionValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->layoutDirection_:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->locale_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->locale_:Ljava/lang/Object;

    return-object v0
.end method

.method public getLocaleBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->locale_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->locale_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public getMcc()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->mcc_:I

    return v0
.end method

.method public getMnc()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->mnc_:I

    return v0
.end method

.method public getNavHidden()Lcom/android/aapt/ConfigurationOuterClass$Configuration$NavHidden;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->navHidden_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$NavHidden;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$NavHidden;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$NavHidden;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$NavHidden;

    :cond_0
    return-object v0
.end method

.method public getNavHiddenValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->navHidden_:I

    return v0
.end method

.method public getNavigation()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Navigation;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->navigation_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Navigation;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Navigation;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Navigation;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Navigation;

    :cond_0
    return-object v0
.end method

.method public getNavigationValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->navigation_:I

    return v0
.end method

.method public getOrientation()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Orientation;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->orientation_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Orientation;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Orientation;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Orientation;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Orientation;

    :cond_0
    return-object v0
.end method

.method public getOrientationValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->orientation_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/android/aapt/ConfigurationOuterClass$Configuration;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->PARSER:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->product_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->product_:Ljava/lang/Object;

    return-object v0
.end method

.method public getProductBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->product_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->product_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenHeight_:I

    return v0
.end method

.method public getScreenHeightDp()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenHeightDp_:I

    return v0
.end method

.method public getScreenLayoutLong()Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutLong;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenLayoutLong_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutLong;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutLong;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutLong;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutLong;

    :cond_0
    return-object v0
.end method

.method public getScreenLayoutLongValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenLayoutLong_:I

    return v0
.end method

.method public getScreenLayoutSize()Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutSize;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenLayoutSize_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutSize;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutSize;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutSize;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutSize;

    :cond_0
    return-object v0
.end method

.method public getScreenLayoutSizeValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenLayoutSize_:I

    return v0
.end method

.method public getScreenRound()Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenRound;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenRound_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenRound;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenRound;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenRound;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenRound;

    :cond_0
    return-object v0
.end method

.method public getScreenRoundValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenRound_:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenWidth_:I

    return v0
.end method

.method public getScreenWidthDp()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenWidthDp_:I

    return v0
.end method

.method public getSdkVersion()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->sdkVersion_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->mcc_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->Y0(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->mnc_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->locale_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/w0;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->locale_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->layoutDirection_:I

    sget-object v2, Lcom/android/aapt/ConfigurationOuterClass$Configuration$LayoutDirection;->LAYOUT_DIRECTION_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$LayoutDirection;

    invoke-virtual {v2}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$LayoutDirection;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_4

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->layoutDirection_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenWidth_:I

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenHeight_:I

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenWidthDp_:I

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenHeightDp_:I

    if-eqz v1, :cond_8

    const/16 v2, 0x8

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->smallestScreenWidthDp_:I

    if-eqz v1, :cond_9

    const/16 v2, 0x9

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenLayoutSize_:I

    sget-object v2, Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutSize;->SCREEN_LAYOUT_SIZE_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutSize;

    invoke-virtual {v2}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutSize;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_a

    const/16 v1, 0xa

    iget v2, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenLayoutSize_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenLayoutLong_:I

    sget-object v2, Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutLong;->SCREEN_LAYOUT_LONG_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutLong;

    invoke-virtual {v2}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutLong;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_b

    const/16 v1, 0xb

    iget v2, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenLayoutLong_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenRound_:I

    sget-object v2, Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenRound;->SCREEN_ROUND_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenRound;

    invoke-virtual {v2}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenRound;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_c

    const/16 v1, 0xc

    iget v2, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenRound_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->wideColorGamut_:I

    sget-object v2, Lcom/android/aapt/ConfigurationOuterClass$Configuration$WideColorGamut;->WIDE_COLOR_GAMUT_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$WideColorGamut;

    invoke-virtual {v2}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$WideColorGamut;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_d

    const/16 v1, 0xd

    iget v2, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->wideColorGamut_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->hdr_:I

    sget-object v2, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->HDR_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    invoke-virtual {v2}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_e

    const/16 v1, 0xe

    iget v2, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->hdr_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->orientation_:I

    sget-object v2, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Orientation;->ORIENTATION_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Orientation;

    invoke-virtual {v2}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Orientation;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_f

    const/16 v1, 0xf

    iget v2, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->orientation_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->uiModeType_:I

    sget-object v2, Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeType;->UI_MODE_TYPE_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeType;

    invoke-virtual {v2}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_10

    const/16 v1, 0x10

    iget v2, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->uiModeType_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->uiModeNight_:I

    sget-object v2, Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeNight;->UI_MODE_NIGHT_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeNight;

    invoke-virtual {v2}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeNight;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_11

    const/16 v1, 0x11

    iget v2, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->uiModeNight_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->density_:I

    if-eqz v1, :cond_12

    const/16 v2, 0x12

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->touchscreen_:I

    sget-object v2, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Touchscreen;->TOUCHSCREEN_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Touchscreen;

    invoke-virtual {v2}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Touchscreen;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_13

    const/16 v1, 0x13

    iget v2, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->touchscreen_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->keysHidden_:I

    sget-object v2, Lcom/android/aapt/ConfigurationOuterClass$Configuration$KeysHidden;->KEYS_HIDDEN_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$KeysHidden;

    invoke-virtual {v2}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$KeysHidden;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_14

    const/16 v1, 0x14

    iget v2, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->keysHidden_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->keyboard_:I

    sget-object v2, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Keyboard;->KEYBOARD_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Keyboard;

    invoke-virtual {v2}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Keyboard;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_15

    const/16 v1, 0x15

    iget v2, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->keyboard_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->navHidden_:I

    sget-object v2, Lcom/android/aapt/ConfigurationOuterClass$Configuration$NavHidden;->NAV_HIDDEN_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$NavHidden;

    invoke-virtual {v2}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$NavHidden;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_16

    const/16 v1, 0x16

    iget v2, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->navHidden_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->navigation_:I

    sget-object v2, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Navigation;->NAVIGATION_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Navigation;

    invoke-virtual {v2}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Navigation;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_17

    const/16 v1, 0x17

    iget v2, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->navigation_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_17
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->sdkVersion_:I

    if-eqz v1, :cond_18

    const/16 v2, 0x18

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-object v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->product_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/w0;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->product_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_19
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->grammaticalGender_:I

    sget-object v2, Lcom/android/aapt/ConfigurationOuterClass$Configuration$GrammaticalGender;->GRAM_GENDER_USET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$GrammaticalGender;

    invoke-virtual {v2}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$GrammaticalGender;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_1a

    const/16 v1, 0x1a

    iget v2, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->grammaticalGender_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1a
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/r2;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getSmallestScreenWidthDp()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->smallestScreenWidthDp_:I

    return v0
.end method

.method public getTouchscreen()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Touchscreen;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->touchscreen_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Touchscreen;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Touchscreen;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Touchscreen;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Touchscreen;

    :cond_0
    return-object v0
.end method

.method public getTouchscreenValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->touchscreen_:I

    return v0
.end method

.method public getUiModeNight()Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeNight;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->uiModeNight_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeNight;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeNight;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeNight;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeNight;

    :cond_0
    return-object v0
.end method

.method public getUiModeNightValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->uiModeNight_:I

    return v0
.end method

.method public getUiModeType()Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeType;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->uiModeType_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeType;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeType;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeType;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeType;

    :cond_0
    return-object v0
.end method

.method public getUiModeTypeValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->uiModeType_:I

    return v0
.end method

.method public getWideColorGamut()Lcom/android/aapt/ConfigurationOuterClass$Configuration$WideColorGamut;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->wideColorGamut_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$WideColorGamut;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$WideColorGamut;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$WideColorGamut;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$WideColorGamut;

    :cond_0
    return-object v0
.end method

.method public getWideColorGamutValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->wideColorGamut_:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getMcc()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getMnc()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->layoutDirection_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getScreenWidth()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getScreenHeight()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getScreenWidthDp()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getScreenHeightDp()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getSmallestScreenWidthDp()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenLayoutSize_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenLayoutLong_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xc

    mul-int/lit8 v1, v1, 0x35

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenRound_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xd

    mul-int/lit8 v1, v1, 0x35

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->wideColorGamut_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xe

    mul-int/lit8 v1, v1, 0x35

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->hdr_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x35

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->orientation_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x35

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->uiModeType_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x11

    mul-int/lit8 v1, v1, 0x35

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->uiModeNight_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x12

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getDensity()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x13

    mul-int/lit8 v1, v1, 0x35

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->touchscreen_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x14

    mul-int/lit8 v1, v1, 0x35

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->keysHidden_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x15

    mul-int/lit8 v1, v1, 0x35

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->keyboard_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x16

    mul-int/lit8 v1, v1, 0x35

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->navHidden_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x17

    mul-int/lit8 v1, v1, 0x35

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->navigation_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x18

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getSdkVersion()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1a

    mul-int/lit8 v1, v1, 0x35

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->grammaticalGender_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x19

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getProduct()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/r2;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lcom/android/aapt/ConfigurationOuterClass;->b()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    const-class v2, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->newBuilder()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;-><init>(Lcom/google/protobuf/w0$c;Lcom/android/aapt/a;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->newBuilderForType()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->newBuilderForType()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/w0$i;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    invoke-direct {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->DEFAULT_INSTANCE:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    invoke-direct {v0, v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;-><init>(Lcom/android/aapt/a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    invoke-direct {v0, v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;-><init>(Lcom/android/aapt/a;)V

    invoke-virtual {v0, p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->mergeFrom(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->toBuilder()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->toBuilder()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->mcc_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->m(II)V

    :cond_0
    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->mnc_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->m(II)V

    :cond_1
    iget-object v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->locale_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/w0;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->locale_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_2
    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->layoutDirection_:I

    sget-object v1, Lcom/android/aapt/ConfigurationOuterClass$Configuration$LayoutDirection;->LAYOUT_DIRECTION_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$LayoutDirection;

    invoke-virtual {v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$LayoutDirection;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_3

    const/4 v0, 0x4

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->layoutDirection_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->Q(II)V

    :cond_3
    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenWidth_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->m(II)V

    :cond_4
    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenHeight_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->m(II)V

    :cond_5
    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenWidthDp_:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->m(II)V

    :cond_6
    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenHeightDp_:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->m(II)V

    :cond_7
    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->smallestScreenWidthDp_:I

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->m(II)V

    :cond_8
    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenLayoutSize_:I

    sget-object v1, Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutSize;->SCREEN_LAYOUT_SIZE_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutSize;

    invoke-virtual {v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutSize;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_9

    const/16 v0, 0xa

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenLayoutSize_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->Q(II)V

    :cond_9
    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenLayoutLong_:I

    sget-object v1, Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutLong;->SCREEN_LAYOUT_LONG_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutLong;

    invoke-virtual {v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutLong;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_a

    const/16 v0, 0xb

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenLayoutLong_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->Q(II)V

    :cond_a
    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenRound_:I

    sget-object v1, Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenRound;->SCREEN_ROUND_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenRound;

    invoke-virtual {v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenRound;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_b

    const/16 v0, 0xc

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->screenRound_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->Q(II)V

    :cond_b
    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->wideColorGamut_:I

    sget-object v1, Lcom/android/aapt/ConfigurationOuterClass$Configuration$WideColorGamut;->WIDE_COLOR_GAMUT_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$WideColorGamut;

    invoke-virtual {v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$WideColorGamut;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_c

    const/16 v0, 0xd

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->wideColorGamut_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->Q(II)V

    :cond_c
    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->hdr_:I

    sget-object v1, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->HDR_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    invoke-virtual {v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_d

    const/16 v0, 0xe

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->hdr_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->Q(II)V

    :cond_d
    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->orientation_:I

    sget-object v1, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Orientation;->ORIENTATION_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Orientation;

    invoke-virtual {v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Orientation;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_e

    const/16 v0, 0xf

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->orientation_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->Q(II)V

    :cond_e
    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->uiModeType_:I

    sget-object v1, Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeType;->UI_MODE_TYPE_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeType;

    invoke-virtual {v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_f

    const/16 v0, 0x10

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->uiModeType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->Q(II)V

    :cond_f
    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->uiModeNight_:I

    sget-object v1, Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeNight;->UI_MODE_NIGHT_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeNight;

    invoke-virtual {v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeNight;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_10

    const/16 v0, 0x11

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->uiModeNight_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->Q(II)V

    :cond_10
    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->density_:I

    if-eqz v0, :cond_11

    const/16 v1, 0x12

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->m(II)V

    :cond_11
    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->touchscreen_:I

    sget-object v1, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Touchscreen;->TOUCHSCREEN_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Touchscreen;

    invoke-virtual {v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Touchscreen;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_12

    const/16 v0, 0x13

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->touchscreen_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->Q(II)V

    :cond_12
    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->keysHidden_:I

    sget-object v1, Lcom/android/aapt/ConfigurationOuterClass$Configuration$KeysHidden;->KEYS_HIDDEN_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$KeysHidden;

    invoke-virtual {v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$KeysHidden;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_13

    const/16 v0, 0x14

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->keysHidden_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->Q(II)V

    :cond_13
    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->keyboard_:I

    sget-object v1, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Keyboard;->KEYBOARD_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Keyboard;

    invoke-virtual {v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Keyboard;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_14

    const/16 v0, 0x15

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->keyboard_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->Q(II)V

    :cond_14
    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->navHidden_:I

    sget-object v1, Lcom/android/aapt/ConfigurationOuterClass$Configuration$NavHidden;->NAV_HIDDEN_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$NavHidden;

    invoke-virtual {v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$NavHidden;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_15

    const/16 v0, 0x16

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->navHidden_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->Q(II)V

    :cond_15
    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->navigation_:I

    sget-object v1, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Navigation;->NAVIGATION_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Navigation;

    invoke-virtual {v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Navigation;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_16

    const/16 v0, 0x17

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->navigation_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->Q(II)V

    :cond_16
    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->sdkVersion_:I

    if-eqz v0, :cond_17

    const/16 v1, 0x18

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->m(II)V

    :cond_17
    iget-object v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->product_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/w0;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const/16 v0, 0x19

    iget-object v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->product_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_18
    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->grammaticalGender_:I

    sget-object v1, Lcom/android/aapt/ConfigurationOuterClass$Configuration$GrammaticalGender;->GRAM_GENDER_USET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$GrammaticalGender;

    invoke-virtual {v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$GrammaticalGender;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_19

    const/16 v0, 0x1a

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->grammaticalGender_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->Q(II)V

    :cond_19
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
