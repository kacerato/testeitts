.class public final enum Lcom/google/android/filament/Material$n;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Material;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Material$n;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Material$n;

.field public static final enum DEVICE:Lcom/google/android/filament/Material$n;

.field public static final enum OBJECT:Lcom/google/android/filament/Material$n;

.field public static final enum VIEW:Lcom/google/android/filament/Material$n;

.field public static final enum WORLD:Lcom/google/android/filament/Material$n;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/Material$n;

    const-string v1, "OBJECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Material$n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$n;->OBJECT:Lcom/google/android/filament/Material$n;

    new-instance v0, Lcom/google/android/filament/Material$n;

    const-string v1, "WORLD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Material$n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$n;->WORLD:Lcom/google/android/filament/Material$n;

    new-instance v0, Lcom/google/android/filament/Material$n;

    const-string v1, "VIEW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Material$n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$n;->VIEW:Lcom/google/android/filament/Material$n;

    new-instance v0, Lcom/google/android/filament/Material$n;

    const-string v1, "DEVICE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Material$n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$n;->DEVICE:Lcom/google/android/filament/Material$n;

    invoke-static {}, Lcom/google/android/filament/Material$n;->a()[Lcom/google/android/filament/Material$n;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Material$n;->$VALUES:[Lcom/google/android/filament/Material$n;

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

.method public static synthetic a()[Lcom/google/android/filament/Material$n;
    .locals 4

    sget-object v0, Lcom/google/android/filament/Material$n;->OBJECT:Lcom/google/android/filament/Material$n;

    sget-object v1, Lcom/google/android/filament/Material$n;->WORLD:Lcom/google/android/filament/Material$n;

    sget-object v2, Lcom/google/android/filament/Material$n;->VIEW:Lcom/google/android/filament/Material$n;

    sget-object v3, Lcom/google/android/filament/Material$n;->DEVICE:Lcom/google/android/filament/Material$n;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/filament/Material$n;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Material$n;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/google/android/filament/Material$n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Material$n;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Material$n;
    .locals 1

    sget-object v0, Lcom/google/android/filament/Material$n;->$VALUES:[Lcom/google/android/filament/Material$n;

    invoke-virtual {v0}, [Lcom/google/android/filament/Material$n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Material$n;

    return-object v0
.end method
