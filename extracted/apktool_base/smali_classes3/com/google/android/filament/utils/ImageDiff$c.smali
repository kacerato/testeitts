.class public final enum Lcom/google/android/filament/utils/ImageDiff$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/utils/ImageDiff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/utils/ImageDiff$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/utils/ImageDiff$c;

.field public static final enum BGRA:Lcom/google/android/filament/utils/ImageDiff$c;

.field public static final enum RGBA:Lcom/google/android/filament/utils/ImageDiff$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/utils/ImageDiff$c;

    const-string v1, "RGBA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/ImageDiff$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/ImageDiff$c;->RGBA:Lcom/google/android/filament/utils/ImageDiff$c;

    new-instance v0, Lcom/google/android/filament/utils/ImageDiff$c;

    const-string v1, "BGRA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/ImageDiff$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/ImageDiff$c;->BGRA:Lcom/google/android/filament/utils/ImageDiff$c;

    invoke-static {}, Lcom/google/android/filament/utils/ImageDiff$c;->a()[Lcom/google/android/filament/utils/ImageDiff$c;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/utils/ImageDiff$c;->$VALUES:[Lcom/google/android/filament/utils/ImageDiff$c;

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

.method public static synthetic a()[Lcom/google/android/filament/utils/ImageDiff$c;
    .locals 2

    sget-object v0, Lcom/google/android/filament/utils/ImageDiff$c;->RGBA:Lcom/google/android/filament/utils/ImageDiff$c;

    sget-object v1, Lcom/google/android/filament/utils/ImageDiff$c;->BGRA:Lcom/google/android/filament/utils/ImageDiff$c;

    filled-new-array {v0, v1}, [Lcom/google/android/filament/utils/ImageDiff$c;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/utils/ImageDiff$c;
    .locals 1

    const-class v0, Lcom/google/android/filament/utils/ImageDiff$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/utils/ImageDiff$c;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/utils/ImageDiff$c;
    .locals 1

    sget-object v0, Lcom/google/android/filament/utils/ImageDiff$c;->$VALUES:[Lcom/google/android/filament/utils/ImageDiff$c;

    invoke-virtual {v0}, [Lcom/google/android/filament/utils/ImageDiff$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/utils/ImageDiff$c;

    return-object v0
.end method
