.class public final enum Lcom/google/android/filament/LightManager$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/LightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/LightManager$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/LightManager$d;

.field public static final enum DIRECTIONAL:Lcom/google/android/filament/LightManager$d;

.field public static final enum FOCUSED_SPOT:Lcom/google/android/filament/LightManager$d;

.field public static final enum POINT:Lcom/google/android/filament/LightManager$d;

.field public static final enum SPOT:Lcom/google/android/filament/LightManager$d;

.field public static final enum SUN:Lcom/google/android/filament/LightManager$d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/LightManager$d;

    const-string v1, "SUN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/LightManager$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/LightManager$d;->SUN:Lcom/google/android/filament/LightManager$d;

    new-instance v0, Lcom/google/android/filament/LightManager$d;

    const-string v1, "DIRECTIONAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/LightManager$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/LightManager$d;->DIRECTIONAL:Lcom/google/android/filament/LightManager$d;

    new-instance v0, Lcom/google/android/filament/LightManager$d;

    const-string v1, "POINT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/LightManager$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/LightManager$d;->POINT:Lcom/google/android/filament/LightManager$d;

    new-instance v0, Lcom/google/android/filament/LightManager$d;

    const-string v1, "FOCUSED_SPOT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/LightManager$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/LightManager$d;->FOCUSED_SPOT:Lcom/google/android/filament/LightManager$d;

    new-instance v0, Lcom/google/android/filament/LightManager$d;

    const-string v1, "SPOT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/LightManager$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/LightManager$d;->SPOT:Lcom/google/android/filament/LightManager$d;

    invoke-static {}, Lcom/google/android/filament/LightManager$d;->a()[Lcom/google/android/filament/LightManager$d;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/LightManager$d;->$VALUES:[Lcom/google/android/filament/LightManager$d;

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

.method public static synthetic a()[Lcom/google/android/filament/LightManager$d;
    .locals 5

    sget-object v0, Lcom/google/android/filament/LightManager$d;->SUN:Lcom/google/android/filament/LightManager$d;

    sget-object v1, Lcom/google/android/filament/LightManager$d;->DIRECTIONAL:Lcom/google/android/filament/LightManager$d;

    sget-object v2, Lcom/google/android/filament/LightManager$d;->POINT:Lcom/google/android/filament/LightManager$d;

    sget-object v3, Lcom/google/android/filament/LightManager$d;->FOCUSED_SPOT:Lcom/google/android/filament/LightManager$d;

    sget-object v4, Lcom/google/android/filament/LightManager$d;->SPOT:Lcom/google/android/filament/LightManager$d;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/android/filament/LightManager$d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/LightManager$d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/google/android/filament/LightManager$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/LightManager$d;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/LightManager$d;
    .locals 1

    sget-object v0, Lcom/google/android/filament/LightManager$d;->$VALUES:[Lcom/google/android/filament/LightManager$d;

    invoke-virtual {v0}, [Lcom/google/android/filament/LightManager$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/LightManager$d;

    return-object v0
.end method
