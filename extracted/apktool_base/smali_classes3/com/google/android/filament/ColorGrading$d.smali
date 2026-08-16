.class public final enum Lcom/google/android/filament/ColorGrading$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/ColorGrading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/ColorGrading$d;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/ColorGrading$d;

.field public static final enum ACES:Lcom/google/android/filament/ColorGrading$d;

.field public static final enum ACES_LEGACY:Lcom/google/android/filament/ColorGrading$d;

.field public static final enum DISPLAY_RANGE:Lcom/google/android/filament/ColorGrading$d;

.field public static final enum FILMIC:Lcom/google/android/filament/ColorGrading$d;

.field public static final enum LINEAR:Lcom/google/android/filament/ColorGrading$d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/ColorGrading$d;

    const-string v1, "LINEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/ColorGrading$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/ColorGrading$d;->LINEAR:Lcom/google/android/filament/ColorGrading$d;

    new-instance v0, Lcom/google/android/filament/ColorGrading$d;

    const-string v1, "ACES_LEGACY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/ColorGrading$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/ColorGrading$d;->ACES_LEGACY:Lcom/google/android/filament/ColorGrading$d;

    new-instance v0, Lcom/google/android/filament/ColorGrading$d;

    const-string v1, "ACES"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/ColorGrading$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/ColorGrading$d;->ACES:Lcom/google/android/filament/ColorGrading$d;

    new-instance v0, Lcom/google/android/filament/ColorGrading$d;

    const-string v1, "FILMIC"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/ColorGrading$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/ColorGrading$d;->FILMIC:Lcom/google/android/filament/ColorGrading$d;

    new-instance v0, Lcom/google/android/filament/ColorGrading$d;

    const-string v1, "DISPLAY_RANGE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/ColorGrading$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/ColorGrading$d;->DISPLAY_RANGE:Lcom/google/android/filament/ColorGrading$d;

    invoke-static {}, Lcom/google/android/filament/ColorGrading$d;->a()[Lcom/google/android/filament/ColorGrading$d;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/ColorGrading$d;->$VALUES:[Lcom/google/android/filament/ColorGrading$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lcom/google/android/filament/ColorGrading$d;
    .locals 5

    sget-object v0, Lcom/google/android/filament/ColorGrading$d;->LINEAR:Lcom/google/android/filament/ColorGrading$d;

    sget-object v1, Lcom/google/android/filament/ColorGrading$d;->ACES_LEGACY:Lcom/google/android/filament/ColorGrading$d;

    sget-object v2, Lcom/google/android/filament/ColorGrading$d;->ACES:Lcom/google/android/filament/ColorGrading$d;

    sget-object v3, Lcom/google/android/filament/ColorGrading$d;->FILMIC:Lcom/google/android/filament/ColorGrading$d;

    sget-object v4, Lcom/google/android/filament/ColorGrading$d;->DISPLAY_RANGE:Lcom/google/android/filament/ColorGrading$d;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/android/filament/ColorGrading$d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/ColorGrading$d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/google/android/filament/ColorGrading$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/ColorGrading$d;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/ColorGrading$d;
    .locals 1

    sget-object v0, Lcom/google/android/filament/ColorGrading$d;->$VALUES:[Lcom/google/android/filament/ColorGrading$d;

    invoke-virtual {v0}, [Lcom/google/android/filament/ColorGrading$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/ColorGrading$d;

    return-object v0
.end method
