.class public final Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/android/aapt/ConfigurationOuterClass$ConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/ConfigurationOuterClass$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;",
        ">;",
        "Lcom/android/aapt/ConfigurationOuterClass$ConfigurationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private density_:I

.field private grammaticalGender_:I

.field private hdr_:I

.field private keyboard_:I

.field private keysHidden_:I

.field private layoutDirection_:I

.field private locale_:Ljava/lang/Object;

.field private mcc_:I

.field private mnc_:I

.field private navHidden_:I

.field private navigation_:I

.field private orientation_:I

.field private product_:Ljava/lang/Object;

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
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->locale_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->layoutDirection_:I

    .line 6
    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenLayoutSize_:I

    .line 7
    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenLayoutLong_:I

    .line 8
    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenRound_:I

    .line 9
    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->wideColorGamut_:I

    .line 10
    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->hdr_:I

    .line 11
    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->orientation_:I

    .line 12
    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->uiModeType_:I

    .line 13
    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->uiModeNight_:I

    .line 14
    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->touchscreen_:I

    .line 15
    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->keysHidden_:I

    .line 16
    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->keyboard_:I

    .line 17
    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->navHidden_:I

    .line 18
    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->navigation_:I

    .line 19
    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->grammaticalGender_:I

    .line 20
    iput-object v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->product_:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/aapt/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/w0$c;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    .line 22
    const-string p1, ""

    iput-object p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->locale_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->layoutDirection_:I

    .line 24
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenLayoutSize_:I

    .line 25
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenLayoutLong_:I

    .line 26
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenRound_:I

    .line 27
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->wideColorGamut_:I

    .line 28
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->hdr_:I

    .line 29
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->orientation_:I

    .line 30
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->uiModeType_:I

    .line 31
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->uiModeNight_:I

    .line 32
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->touchscreen_:I

    .line 33
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->keysHidden_:I

    .line 34
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->keyboard_:I

    .line 35
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->navHidden_:I

    .line 36
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->navigation_:I

    .line 37
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->grammaticalGender_:I

    .line 38
    iput-object p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->product_:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/android/aapt/a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method private buildPartial0(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)V
    .locals 2

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->mcc_:I

    invoke-static {p1, v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->R6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->mnc_:I

    invoke-static {p1, v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->S6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->locale_:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->Q6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;Ljava/lang/Object;)V

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->layoutDirection_:I

    invoke-static {p1, v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->P6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V

    :cond_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenWidth_:I

    invoke-static {p1, v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->d7(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V

    :cond_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenHeight_:I

    invoke-static {p1, v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->Y6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V

    :cond_5
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenWidthDp_:I

    invoke-static {p1, v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->c7(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V

    :cond_6
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenHeightDp_:I

    invoke-static {p1, v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->X6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V

    :cond_7
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->smallestScreenWidthDp_:I

    invoke-static {p1, v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->f7(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V

    :cond_8
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenLayoutSize_:I

    invoke-static {p1, v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->a7(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V

    :cond_9
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenLayoutLong_:I

    invoke-static {p1, v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->Z6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V

    :cond_a
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenRound_:I

    invoke-static {p1, v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->b7(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V

    :cond_b
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->wideColorGamut_:I

    invoke-static {p1, v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->j7(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V

    :cond_c
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->hdr_:I

    invoke-static {p1, v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->M6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V

    :cond_d
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->orientation_:I

    invoke-static {p1, v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->V6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V

    :cond_e
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->uiModeType_:I

    invoke-static {p1, v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->i7(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V

    :cond_f
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->uiModeNight_:I

    invoke-static {p1, v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->h7(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V

    :cond_10
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->density_:I

    invoke-static {p1, v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->K6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V

    :cond_11
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->touchscreen_:I

    invoke-static {p1, v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->g7(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V

    :cond_12
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->keysHidden_:I

    invoke-static {p1, v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->O6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V

    :cond_13
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_14

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->keyboard_:I

    invoke-static {p1, v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->N6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V

    :cond_14
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_15

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->navHidden_:I

    invoke-static {p1, v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->T6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V

    :cond_15
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_16

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->navigation_:I

    invoke-static {p1, v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->U6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V

    :cond_16
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_17

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->sdkVersion_:I

    invoke-static {p1, v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->e7(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V

    :cond_17
    const/high16 v1, 0x1000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_18

    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->grammaticalGender_:I

    invoke-static {p1, v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->L6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;I)V

    :cond_18
    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->product_:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->W6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;Ljava/lang/Object;)V

    :cond_19
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/ConfigurationOuterClass;->a()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/aapt/ConfigurationOuterClass$Configuration;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->buildPartial()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->newUninitializedMessageException(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->build()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->build()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/android/aapt/ConfigurationOuterClass$Configuration;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;-><init>(Lcom/google/protobuf/w0$b;Lcom/android/aapt/b;)V

    .line 4
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->buildPartial0(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->buildPartial()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->buildPartial()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    .line 7
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->mcc_:I

    .line 8
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->mnc_:I

    .line 9
    const-string v1, ""

    iput-object v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->locale_:Ljava/lang/Object;

    .line 10
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->layoutDirection_:I

    .line 11
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenWidth_:I

    .line 12
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenHeight_:I

    .line 13
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenWidthDp_:I

    .line 14
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenHeightDp_:I

    .line 15
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->smallestScreenWidthDp_:I

    .line 16
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenLayoutSize_:I

    .line 17
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenLayoutLong_:I

    .line 18
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenRound_:I

    .line 19
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->wideColorGamut_:I

    .line 20
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->hdr_:I

    .line 21
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->orientation_:I

    .line 22
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->uiModeType_:I

    .line 23
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->uiModeNight_:I

    .line 24
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->density_:I

    .line 25
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->touchscreen_:I

    .line 26
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->keysHidden_:I

    .line 27
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->keyboard_:I

    .line 28
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->navHidden_:I

    .line 29
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->navigation_:I

    .line 30
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->sdkVersion_:I

    .line 31
    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->grammaticalGender_:I

    .line 32
    iput-object v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->product_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->clear()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->clear()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->clear()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->clear()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDensity()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->density_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearGrammaticalGender()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->grammaticalGender_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearHdr()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->hdr_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearKeyboard()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->keyboard_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearKeysHidden()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->keysHidden_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearLayoutDirection()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->layoutDirection_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearLocale()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    invoke-static {}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getDefaultInstance()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getLocale()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->locale_:Ljava/lang/Object;

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearMcc()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->mcc_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearMnc()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->mnc_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearNavHidden()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->navHidden_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearNavigation()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->navigation_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearOrientation()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->orientation_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearProduct()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 2

    invoke-static {}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getDefaultInstance()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getProduct()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->product_:Ljava/lang/Object;

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearScreenHeight()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenHeight_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearScreenHeightDp()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenHeightDp_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearScreenLayoutLong()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenLayoutLong_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearScreenLayoutSize()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenLayoutSize_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearScreenRound()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenRound_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearScreenWidth()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenWidth_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearScreenWidthDp()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenWidthDp_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearSdkVersion()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->sdkVersion_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearSmallestScreenWidthDp()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->smallestScreenWidthDp_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearTouchscreen()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->touchscreen_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearUiModeNight()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->uiModeNight_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearUiModeType()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->uiModeType_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearWideColorGamut()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->wideColorGamut_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/android/aapt/ConfigurationOuterClass$Configuration;
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getDefaultInstance()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->getDefaultInstanceForType()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->getDefaultInstanceForType()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getDensity()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->density_:I

    return v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/ConfigurationOuterClass;->a()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getGrammaticalGender()Lcom/android/aapt/ConfigurationOuterClass$Configuration$GrammaticalGender;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->grammaticalGender_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$GrammaticalGender;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$GrammaticalGender;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$GrammaticalGender;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$GrammaticalGender;

    :cond_0
    return-object v0
.end method

.method public getGrammaticalGenderValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->grammaticalGender_:I

    return v0
.end method

.method public getHdr()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->hdr_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    :cond_0
    return-object v0
.end method

.method public getHdrValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->hdr_:I

    return v0
.end method

.method public getKeyboard()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Keyboard;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->keyboard_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Keyboard;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Keyboard;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Keyboard;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Keyboard;

    :cond_0
    return-object v0
.end method

.method public getKeyboardValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->keyboard_:I

    return v0
.end method

.method public getKeysHidden()Lcom/android/aapt/ConfigurationOuterClass$Configuration$KeysHidden;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->keysHidden_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$KeysHidden;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$KeysHidden;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$KeysHidden;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$KeysHidden;

    :cond_0
    return-object v0
.end method

.method public getKeysHiddenValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->keysHidden_:I

    return v0
.end method

.method public getLayoutDirection()Lcom/android/aapt/ConfigurationOuterClass$Configuration$LayoutDirection;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->layoutDirection_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$LayoutDirection;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$LayoutDirection;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$LayoutDirection;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$LayoutDirection;

    :cond_0
    return-object v0
.end method

.method public getLayoutDirectionValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->layoutDirection_:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->locale_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->locale_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLocaleBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->locale_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->locale_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public getMcc()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->mcc_:I

    return v0
.end method

.method public getMnc()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->mnc_:I

    return v0
.end method

.method public getNavHidden()Lcom/android/aapt/ConfigurationOuterClass$Configuration$NavHidden;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->navHidden_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$NavHidden;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$NavHidden;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$NavHidden;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$NavHidden;

    :cond_0
    return-object v0
.end method

.method public getNavHiddenValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->navHidden_:I

    return v0
.end method

.method public getNavigation()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Navigation;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->navigation_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Navigation;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Navigation;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Navigation;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Navigation;

    :cond_0
    return-object v0
.end method

.method public getNavigationValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->navigation_:I

    return v0
.end method

.method public getOrientation()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Orientation;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->orientation_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Orientation;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Orientation;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Orientation;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Orientation;

    :cond_0
    return-object v0
.end method

.method public getOrientationValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->orientation_:I

    return v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->product_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->product_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getProductBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->product_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->product_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenHeight_:I

    return v0
.end method

.method public getScreenHeightDp()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenHeightDp_:I

    return v0
.end method

.method public getScreenLayoutLong()Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutLong;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenLayoutLong_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutLong;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutLong;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutLong;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutLong;

    :cond_0
    return-object v0
.end method

.method public getScreenLayoutLongValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenLayoutLong_:I

    return v0
.end method

.method public getScreenLayoutSize()Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutSize;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenLayoutSize_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutSize;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutSize;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutSize;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutSize;

    :cond_0
    return-object v0
.end method

.method public getScreenLayoutSizeValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenLayoutSize_:I

    return v0
.end method

.method public getScreenRound()Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenRound;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenRound_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenRound;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenRound;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenRound;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenRound;

    :cond_0
    return-object v0
.end method

.method public getScreenRoundValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenRound_:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenWidth_:I

    return v0
.end method

.method public getScreenWidthDp()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenWidthDp_:I

    return v0
.end method

.method public getSdkVersion()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->sdkVersion_:I

    return v0
.end method

.method public getSmallestScreenWidthDp()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->smallestScreenWidthDp_:I

    return v0
.end method

.method public getTouchscreen()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Touchscreen;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->touchscreen_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Touchscreen;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Touchscreen;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Touchscreen;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Touchscreen;

    :cond_0
    return-object v0
.end method

.method public getTouchscreenValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->touchscreen_:I

    return v0
.end method

.method public getUiModeNight()Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeNight;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->uiModeNight_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeNight;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeNight;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeNight;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeNight;

    :cond_0
    return-object v0
.end method

.method public getUiModeNightValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->uiModeNight_:I

    return v0
.end method

.method public getUiModeType()Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeType;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->uiModeType_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeType;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeType;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeType;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeType;

    :cond_0
    return-object v0
.end method

.method public getUiModeTypeValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->uiModeType_:I

    return v0
.end method

.method public getWideColorGamut()Lcom/android/aapt/ConfigurationOuterClass$Configuration$WideColorGamut;
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->wideColorGamut_:I

    invoke-static {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$WideColorGamut;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$WideColorGamut;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$WideColorGamut;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$WideColorGamut;

    :cond_0
    return-object v0
.end method

.method public getWideColorGamutValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->wideColorGamut_:I

    return v0
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
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 2

    .line 10
    invoke-static {}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getDefaultInstance()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getMcc()I

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getMcc()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->setMcc(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getMnc()I

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getMnc()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->setMnc(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    invoke-static {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->y6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->locale_:Ljava/lang/Object;

    .line 17
    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    .line 18
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 19
    :cond_3
    invoke-static {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->x6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getLayoutDirectionValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->setLayoutDirectionValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    .line 21
    :cond_4
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getScreenWidth()I

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getScreenWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->setScreenWidth(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    .line 23
    :cond_5
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getScreenHeight()I

    move-result v0

    if-eqz v0, :cond_6

    .line 24
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getScreenHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->setScreenHeight(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    .line 25
    :cond_6
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getScreenWidthDp()I

    move-result v0

    if-eqz v0, :cond_7

    .line 26
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getScreenWidthDp()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->setScreenWidthDp(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    .line 27
    :cond_7
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getScreenHeightDp()I

    move-result v0

    if-eqz v0, :cond_8

    .line 28
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getScreenHeightDp()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->setScreenHeightDp(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    .line 29
    :cond_8
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getSmallestScreenWidthDp()I

    move-result v0

    if-eqz v0, :cond_9

    .line 30
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getSmallestScreenWidthDp()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->setSmallestScreenWidthDp(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    .line 31
    :cond_9
    invoke-static {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->E6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I

    move-result v0

    if-eqz v0, :cond_a

    .line 32
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getScreenLayoutSizeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->setScreenLayoutSizeValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    .line 33
    :cond_a
    invoke-static {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->D6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I

    move-result v0

    if-eqz v0, :cond_b

    .line 34
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getScreenLayoutLongValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->setScreenLayoutLongValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    .line 35
    :cond_b
    invoke-static {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->F6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I

    move-result v0

    if-eqz v0, :cond_c

    .line 36
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getScreenRoundValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->setScreenRoundValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    .line 37
    :cond_c
    invoke-static {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->J6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I

    move-result v0

    if-eqz v0, :cond_d

    .line 38
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getWideColorGamutValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->setWideColorGamutValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    .line 39
    :cond_d
    invoke-static {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->u6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I

    move-result v0

    if-eqz v0, :cond_e

    .line 40
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getHdrValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->setHdrValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    .line 41
    :cond_e
    invoke-static {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->B6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I

    move-result v0

    if-eqz v0, :cond_f

    .line 42
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getOrientationValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->setOrientationValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    .line 43
    :cond_f
    invoke-static {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->I6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 44
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getUiModeTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->setUiModeTypeValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    .line 45
    :cond_10
    invoke-static {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->H6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I

    move-result v0

    if-eqz v0, :cond_11

    .line 46
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getUiModeNightValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->setUiModeNightValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    .line 47
    :cond_11
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getDensity()I

    move-result v0

    if-eqz v0, :cond_12

    .line 48
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getDensity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->setDensity(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    .line 49
    :cond_12
    invoke-static {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->G6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I

    move-result v0

    if-eqz v0, :cond_13

    .line 50
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getTouchscreenValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->setTouchscreenValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    .line 51
    :cond_13
    invoke-static {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->w6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 52
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getKeysHiddenValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->setKeysHiddenValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    .line 53
    :cond_14
    invoke-static {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->v6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I

    move-result v0

    if-eqz v0, :cond_15

    .line 54
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getKeyboardValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->setKeyboardValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    .line 55
    :cond_15
    invoke-static {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->z6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I

    move-result v0

    if-eqz v0, :cond_16

    .line 56
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getNavHiddenValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->setNavHiddenValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    .line 57
    :cond_16
    invoke-static {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->A6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I

    move-result v0

    if-eqz v0, :cond_17

    .line 58
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getNavigationValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->setNavigationValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    .line 59
    :cond_17
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getSdkVersion()I

    move-result v0

    if-eqz v0, :cond_18

    .line 60
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getSdkVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->setSdkVersion(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    .line 61
    :cond_18
    invoke-static {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->t6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)I

    move-result v0

    if-eqz v0, :cond_19

    .line 62
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getGrammaticalGenderValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->setGrammaticalGenderValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    .line 63
    :cond_19
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getProduct()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 64
    invoke-static {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->C6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->product_:Ljava/lang/Object;

    .line 65
    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    .line 66
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 67
    :cond_1a
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    .line 68
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 70
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 71
    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/w0$b;->parseUnknownField(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;I)Z

    move-result v1

    if-nez v1, :cond_0

    :sswitch_0
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_1

    .line 72
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->grammaticalGender_:I

    .line 73
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    goto :goto_0

    .line 74
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->product_:Ljava/lang/Object;

    .line 75
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    goto :goto_0

    .line 76
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->sdkVersion_:I

    .line 77
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/high16 v2, 0x800000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    goto :goto_0

    .line 78
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->navigation_:I

    .line 79
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/high16 v2, 0x400000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    goto :goto_0

    .line 80
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->navHidden_:I

    .line 81
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    goto :goto_0

    .line 82
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->keyboard_:I

    .line 83
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    goto :goto_0

    .line 84
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->keysHidden_:I

    .line 85
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    goto :goto_0

    .line 86
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->touchscreen_:I

    .line 87
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    goto/16 :goto_0

    .line 88
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->density_:I

    .line 89
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    goto/16 :goto_0

    .line 90
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->uiModeNight_:I

    .line 91
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    goto/16 :goto_0

    .line 92
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->uiModeType_:I

    .line 93
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    goto/16 :goto_0

    .line 94
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->orientation_:I

    .line 95
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    goto/16 :goto_0

    .line 96
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->hdr_:I

    .line 97
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    goto/16 :goto_0

    .line 98
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->wideColorGamut_:I

    .line 99
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    goto/16 :goto_0

    .line 100
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenRound_:I

    .line 101
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    goto/16 :goto_0

    .line 102
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenLayoutLong_:I

    .line 103
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    goto/16 :goto_0

    .line 104
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenLayoutSize_:I

    .line 105
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    goto/16 :goto_0

    .line 106
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->smallestScreenWidthDp_:I

    .line 107
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    goto/16 :goto_0

    .line 108
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenHeightDp_:I

    .line 109
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    goto/16 :goto_0

    .line 110
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenWidthDp_:I

    .line 111
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    goto/16 :goto_0

    .line 112
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenHeight_:I

    .line 113
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    goto/16 :goto_0

    .line 114
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenWidth_:I

    .line 115
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    goto/16 :goto_0

    .line 116
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->layoutDirection_:I

    .line 117
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    goto/16 :goto_0

    .line 118
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->locale_:Ljava/lang/Object;

    .line 119
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    goto/16 :goto_0

    .line 120
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->mnc_:I

    .line 121
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    goto/16 :goto_0

    .line 122
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->mcc_:I

    .line 123
    iget v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 124
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 126
    throw p1

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1a
        0x10 -> :sswitch_19
        0x1a -> :sswitch_18
        0x20 -> :sswitch_17
        0x28 -> :sswitch_16
        0x30 -> :sswitch_15
        0x38 -> :sswitch_14
        0x40 -> :sswitch_13
        0x48 -> :sswitch_12
        0x50 -> :sswitch_11
        0x58 -> :sswitch_10
        0x60 -> :sswitch_f
        0x68 -> :sswitch_e
        0x70 -> :sswitch_d
        0x78 -> :sswitch_c
        0x80 -> :sswitch_b
        0x88 -> :sswitch_a
        0x90 -> :sswitch_9
        0x98 -> :sswitch_8
        0xa0 -> :sswitch_7
        0xa8 -> :sswitch_6
        0xb0 -> :sswitch_5
        0xb8 -> :sswitch_4
        0xc0 -> :sswitch_3
        0xca -> :sswitch_2
        0xd0 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    invoke-virtual {p0, p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->mergeFrom(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDensity(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->density_:I

    iget p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setGrammaticalGender(Lcom/android/aapt/ConfigurationOuterClass$Configuration$GrammaticalGender;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$GrammaticalGender;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->grammaticalGender_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setGrammaticalGenderValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->grammaticalGender_:I

    iget p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/high16 v0, 0x1000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setHdr(Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->hdr_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setHdrValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->hdr_:I

    iget p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setKeyboard(Lcom/android/aapt/ConfigurationOuterClass$Configuration$Keyboard;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Keyboard;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->keyboard_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setKeyboardValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->keyboard_:I

    iget p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setKeysHidden(Lcom/android/aapt/ConfigurationOuterClass$Configuration$KeysHidden;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$KeysHidden;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->keysHidden_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setKeysHiddenValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->keysHidden_:I

    iget p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setLayoutDirection(Lcom/android/aapt/ConfigurationOuterClass$Configuration$LayoutDirection;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$LayoutDirection;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->layoutDirection_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setLayoutDirectionValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->layoutDirection_:I

    iget p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->locale_:Ljava/lang/Object;

    iget p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setLocaleBytes(Lcom/google/protobuf/x;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->access$000(Lcom/google/protobuf/x;)V

    iput-object p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->locale_:Ljava/lang/Object;

    iget p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setMcc(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->mcc_:I

    iget p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setMnc(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->mnc_:I

    iget p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setNavHidden(Lcom/android/aapt/ConfigurationOuterClass$Configuration$NavHidden;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$NavHidden;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->navHidden_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setNavHiddenValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->navHidden_:I

    iget p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/high16 v0, 0x200000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setNavigation(Lcom/android/aapt/ConfigurationOuterClass$Configuration$Navigation;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Navigation;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->navigation_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setNavigationValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->navigation_:I

    iget p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/high16 v0, 0x400000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setOrientation(Lcom/android/aapt/ConfigurationOuterClass$Configuration$Orientation;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Orientation;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->orientation_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setOrientationValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->orientation_:I

    iget p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setProduct(Ljava/lang/String;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->product_:Ljava/lang/Object;

    iget p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/high16 v0, 0x2000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setProductBytes(Lcom/google/protobuf/x;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->access$100(Lcom/google/protobuf/x;)V

    iput-object p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->product_:Ljava/lang/Object;

    iget p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/high16 v0, 0x2000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setScreenHeight(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenHeight_:I

    iget p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setScreenHeightDp(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenHeightDp_:I

    iget p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setScreenLayoutLong(Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutLong;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutLong;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenLayoutLong_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setScreenLayoutLongValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenLayoutLong_:I

    iget p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setScreenLayoutSize(Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutSize;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenLayoutSize;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenLayoutSize_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setScreenLayoutSizeValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenLayoutSize_:I

    iget p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setScreenRound(Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenRound;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$ScreenRound;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenRound_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setScreenRoundValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenRound_:I

    iget p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setScreenWidth(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenWidth_:I

    iget p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setScreenWidthDp(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->screenWidthDp_:I

    iget p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setSdkVersion(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->sdkVersion_:I

    iget p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setSmallestScreenWidthDp(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->smallestScreenWidthDp_:I

    iget p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setTouchscreen(Lcom/android/aapt/ConfigurationOuterClass$Configuration$Touchscreen;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Touchscreen;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->touchscreen_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setTouchscreenValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->touchscreen_:I

    iget p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setUiModeNight(Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeNight;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeNight;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->uiModeNight_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setUiModeNightValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->uiModeNight_:I

    iget p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setUiModeType(Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeType;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$UiModeType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->uiModeType_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setUiModeTypeValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->uiModeType_:I

    iget p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    const v0, 0x8000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setWideColorGamut(Lcom/android/aapt/ConfigurationOuterClass$Configuration$WideColorGamut;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$WideColorGamut;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->wideColorGamut_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setWideColorGamutValue(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 0

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->wideColorGamut_:I

    iget p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method
