.class public final enum Lcom/google/android/filament/Fence$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Fence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Fence$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Fence$a;

.field public static final enum CONDITION_SATISFIED:Lcom/google/android/filament/Fence$a;

.field public static final enum ERROR:Lcom/google/android/filament/Fence$a;

.field public static final enum TIMEOUT_EXPIRED:Lcom/google/android/filament/Fence$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/Fence$a;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Fence$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Fence$a;->ERROR:Lcom/google/android/filament/Fence$a;

    new-instance v0, Lcom/google/android/filament/Fence$a;

    const-string v1, "CONDITION_SATISFIED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Fence$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Fence$a;->CONDITION_SATISFIED:Lcom/google/android/filament/Fence$a;

    new-instance v0, Lcom/google/android/filament/Fence$a;

    const-string v1, "TIMEOUT_EXPIRED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Fence$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Fence$a;->TIMEOUT_EXPIRED:Lcom/google/android/filament/Fence$a;

    invoke-static {}, Lcom/google/android/filament/Fence$a;->a()[Lcom/google/android/filament/Fence$a;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Fence$a;->$VALUES:[Lcom/google/android/filament/Fence$a;

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

.method public static synthetic a()[Lcom/google/android/filament/Fence$a;
    .locals 3

    sget-object v0, Lcom/google/android/filament/Fence$a;->ERROR:Lcom/google/android/filament/Fence$a;

    sget-object v1, Lcom/google/android/filament/Fence$a;->CONDITION_SATISFIED:Lcom/google/android/filament/Fence$a;

    sget-object v2, Lcom/google/android/filament/Fence$a;->TIMEOUT_EXPIRED:Lcom/google/android/filament/Fence$a;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/filament/Fence$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Fence$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/google/android/filament/Fence$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Fence$a;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Fence$a;
    .locals 1

    sget-object v0, Lcom/google/android/filament/Fence$a;->$VALUES:[Lcom/google/android/filament/Fence$a;

    invoke-virtual {v0}, [Lcom/google/android/filament/Fence$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Fence$a;

    return-object v0
.end method
