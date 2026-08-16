.class public final enum Lcom/google/android/filament/View$u$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View$u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/View$u$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/View$u$c;

.field public static final enum HALTON_23_X16:Lcom/google/android/filament/View$u$c;

.field public static final enum HALTON_23_X32:Lcom/google/android/filament/View$u$c;

.field public static final enum HALTON_23_X8:Lcom/google/android/filament/View$u$c;

.field public static final enum RGSS_X4:Lcom/google/android/filament/View$u$c;

.field public static final enum UNIFORM_HELIX_X4:Lcom/google/android/filament/View$u$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/View$u$c;

    const-string v1, "RGSS_X4"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/View$u$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$u$c;->RGSS_X4:Lcom/google/android/filament/View$u$c;

    new-instance v0, Lcom/google/android/filament/View$u$c;

    const-string v1, "UNIFORM_HELIX_X4"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/View$u$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$u$c;->UNIFORM_HELIX_X4:Lcom/google/android/filament/View$u$c;

    new-instance v0, Lcom/google/android/filament/View$u$c;

    const-string v1, "HALTON_23_X8"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/View$u$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$u$c;->HALTON_23_X8:Lcom/google/android/filament/View$u$c;

    new-instance v0, Lcom/google/android/filament/View$u$c;

    const-string v1, "HALTON_23_X16"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/View$u$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$u$c;->HALTON_23_X16:Lcom/google/android/filament/View$u$c;

    new-instance v0, Lcom/google/android/filament/View$u$c;

    const-string v1, "HALTON_23_X32"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/View$u$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/View$u$c;->HALTON_23_X32:Lcom/google/android/filament/View$u$c;

    invoke-static {}, Lcom/google/android/filament/View$u$c;->a()[Lcom/google/android/filament/View$u$c;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/View$u$c;->$VALUES:[Lcom/google/android/filament/View$u$c;

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

.method public static synthetic a()[Lcom/google/android/filament/View$u$c;
    .locals 5

    sget-object v0, Lcom/google/android/filament/View$u$c;->RGSS_X4:Lcom/google/android/filament/View$u$c;

    sget-object v1, Lcom/google/android/filament/View$u$c;->UNIFORM_HELIX_X4:Lcom/google/android/filament/View$u$c;

    sget-object v2, Lcom/google/android/filament/View$u$c;->HALTON_23_X8:Lcom/google/android/filament/View$u$c;

    sget-object v3, Lcom/google/android/filament/View$u$c;->HALTON_23_X16:Lcom/google/android/filament/View$u$c;

    sget-object v4, Lcom/google/android/filament/View$u$c;->HALTON_23_X32:Lcom/google/android/filament/View$u$c;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/android/filament/View$u$c;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/View$u$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/google/android/filament/View$u$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/View$u$c;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/View$u$c;
    .locals 1

    sget-object v0, Lcom/google/android/filament/View$u$c;->$VALUES:[Lcom/google/android/filament/View$u$c;

    invoke-virtual {v0}, [Lcom/google/android/filament/View$u$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/View$u$c;

    return-object v0
.end method
