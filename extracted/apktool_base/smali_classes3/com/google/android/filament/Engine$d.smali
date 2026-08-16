.class public final enum Lcom/google/android/filament/Engine$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Engine$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Engine$d;

.field public static final enum FEATURE_LEVEL_0:Lcom/google/android/filament/Engine$d;

.field public static final enum FEATURE_LEVEL_1:Lcom/google/android/filament/Engine$d;

.field public static final enum FEATURE_LEVEL_2:Lcom/google/android/filament/Engine$d;

.field public static final enum FEATURE_LEVEL_3:Lcom/google/android/filament/Engine$d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/Engine$d;

    const-string v1, "FEATURE_LEVEL_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Engine$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$d;->FEATURE_LEVEL_0:Lcom/google/android/filament/Engine$d;

    new-instance v0, Lcom/google/android/filament/Engine$d;

    const-string v1, "FEATURE_LEVEL_1"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Engine$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$d;->FEATURE_LEVEL_1:Lcom/google/android/filament/Engine$d;

    new-instance v0, Lcom/google/android/filament/Engine$d;

    const-string v1, "FEATURE_LEVEL_2"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Engine$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$d;->FEATURE_LEVEL_2:Lcom/google/android/filament/Engine$d;

    new-instance v0, Lcom/google/android/filament/Engine$d;

    const-string v1, "FEATURE_LEVEL_3"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Engine$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$d;->FEATURE_LEVEL_3:Lcom/google/android/filament/Engine$d;

    invoke-static {}, Lcom/google/android/filament/Engine$d;->a()[Lcom/google/android/filament/Engine$d;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Engine$d;->$VALUES:[Lcom/google/android/filament/Engine$d;

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

.method public static synthetic a()[Lcom/google/android/filament/Engine$d;
    .locals 4

    sget-object v0, Lcom/google/android/filament/Engine$d;->FEATURE_LEVEL_0:Lcom/google/android/filament/Engine$d;

    sget-object v1, Lcom/google/android/filament/Engine$d;->FEATURE_LEVEL_1:Lcom/google/android/filament/Engine$d;

    sget-object v2, Lcom/google/android/filament/Engine$d;->FEATURE_LEVEL_2:Lcom/google/android/filament/Engine$d;

    sget-object v3, Lcom/google/android/filament/Engine$d;->FEATURE_LEVEL_3:Lcom/google/android/filament/Engine$d;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/filament/Engine$d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Engine$d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/google/android/filament/Engine$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Engine$d;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Engine$d;
    .locals 1

    sget-object v0, Lcom/google/android/filament/Engine$d;->$VALUES:[Lcom/google/android/filament/Engine$d;

    invoke-virtual {v0}, [Lcom/google/android/filament/Engine$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Engine$d;

    return-object v0
.end method
