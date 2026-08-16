.class public final enum Lcom/google/android/filament/utils/ImageDiff$Result$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/utils/ImageDiff$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/utils/ImageDiff$Result$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/utils/ImageDiff$Result$a;

.field public static final enum PASSED:Lcom/google/android/filament/utils/ImageDiff$Result$a;

.field public static final enum PIXEL_DIFFERENCE:Lcom/google/android/filament/utils/ImageDiff$Result$a;

.field public static final enum SIZE_MISMATCH:Lcom/google/android/filament/utils/ImageDiff$Result$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/utils/ImageDiff$Result$a;

    const-string v1, "PASSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/ImageDiff$Result$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/ImageDiff$Result$a;->PASSED:Lcom/google/android/filament/utils/ImageDiff$Result$a;

    new-instance v0, Lcom/google/android/filament/utils/ImageDiff$Result$a;

    const-string v1, "SIZE_MISMATCH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/ImageDiff$Result$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/ImageDiff$Result$a;->SIZE_MISMATCH:Lcom/google/android/filament/utils/ImageDiff$Result$a;

    new-instance v0, Lcom/google/android/filament/utils/ImageDiff$Result$a;

    const-string v1, "PIXEL_DIFFERENCE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/ImageDiff$Result$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/ImageDiff$Result$a;->PIXEL_DIFFERENCE:Lcom/google/android/filament/utils/ImageDiff$Result$a;

    invoke-static {}, Lcom/google/android/filament/utils/ImageDiff$Result$a;->a()[Lcom/google/android/filament/utils/ImageDiff$Result$a;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/utils/ImageDiff$Result$a;->$VALUES:[Lcom/google/android/filament/utils/ImageDiff$Result$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lcom/google/android/filament/utils/ImageDiff$Result$a;
    .locals 3

    sget-object v0, Lcom/google/android/filament/utils/ImageDiff$Result$a;->PASSED:Lcom/google/android/filament/utils/ImageDiff$Result$a;

    sget-object v1, Lcom/google/android/filament/utils/ImageDiff$Result$a;->SIZE_MISMATCH:Lcom/google/android/filament/utils/ImageDiff$Result$a;

    sget-object v2, Lcom/google/android/filament/utils/ImageDiff$Result$a;->PIXEL_DIFFERENCE:Lcom/google/android/filament/utils/ImageDiff$Result$a;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/filament/utils/ImageDiff$Result$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/utils/ImageDiff$Result$a;
    .locals 1

    const-class v0, Lcom/google/android/filament/utils/ImageDiff$Result$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/utils/ImageDiff$Result$a;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/utils/ImageDiff$Result$a;
    .locals 1

    sget-object v0, Lcom/google/android/filament/utils/ImageDiff$Result$a;->$VALUES:[Lcom/google/android/filament/utils/ImageDiff$Result$a;

    invoke-virtual {v0}, [Lcom/google/android/filament/utils/ImageDiff$Result$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/utils/ImageDiff$Result$a;

    return-object v0
.end method
