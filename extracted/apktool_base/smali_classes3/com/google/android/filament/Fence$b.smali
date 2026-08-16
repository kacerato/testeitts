.class public final enum Lcom/google/android/filament/Fence$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Fence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Fence$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Fence$b;

.field public static final enum DONT_FLUSH:Lcom/google/android/filament/Fence$b;

.field public static final enum FLUSH:Lcom/google/android/filament/Fence$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/Fence$b;

    const-string v1, "FLUSH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Fence$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Fence$b;->FLUSH:Lcom/google/android/filament/Fence$b;

    new-instance v0, Lcom/google/android/filament/Fence$b;

    const-string v1, "DONT_FLUSH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Fence$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Fence$b;->DONT_FLUSH:Lcom/google/android/filament/Fence$b;

    invoke-static {}, Lcom/google/android/filament/Fence$b;->a()[Lcom/google/android/filament/Fence$b;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Fence$b;->$VALUES:[Lcom/google/android/filament/Fence$b;

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

.method public static synthetic a()[Lcom/google/android/filament/Fence$b;
    .locals 2

    sget-object v0, Lcom/google/android/filament/Fence$b;->FLUSH:Lcom/google/android/filament/Fence$b;

    sget-object v1, Lcom/google/android/filament/Fence$b;->DONT_FLUSH:Lcom/google/android/filament/Fence$b;

    filled-new-array {v0, v1}, [Lcom/google/android/filament/Fence$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Fence$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/google/android/filament/Fence$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Fence$b;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Fence$b;
    .locals 1

    sget-object v0, Lcom/google/android/filament/Fence$b;->$VALUES:[Lcom/google/android/filament/Fence$b;

    invoke-virtual {v0}, [Lcom/google/android/filament/Fence$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Fence$b;

    return-object v0
.end method
