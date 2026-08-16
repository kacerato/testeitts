.class public final enum Lcom/google/android/filament/Engine$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Engine$f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Engine$f;

.field public static final enum DEFAULT:Lcom/google/android/filament/Engine$f;

.field public static final enum HIGH:Lcom/google/android/filament/Engine$f;

.field public static final enum LOW:Lcom/google/android/filament/Engine$f;

.field public static final enum MEDIUM:Lcom/google/android/filament/Engine$f;

.field public static final enum REALTIME:Lcom/google/android/filament/Engine$f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/Engine$f;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Engine$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$f;->DEFAULT:Lcom/google/android/filament/Engine$f;

    new-instance v0, Lcom/google/android/filament/Engine$f;

    const-string v1, "LOW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Engine$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$f;->LOW:Lcom/google/android/filament/Engine$f;

    new-instance v0, Lcom/google/android/filament/Engine$f;

    const-string v1, "MEDIUM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Engine$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$f;->MEDIUM:Lcom/google/android/filament/Engine$f;

    new-instance v0, Lcom/google/android/filament/Engine$f;

    const-string v1, "HIGH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Engine$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$f;->HIGH:Lcom/google/android/filament/Engine$f;

    new-instance v0, Lcom/google/android/filament/Engine$f;

    const-string v1, "REALTIME"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Engine$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$f;->REALTIME:Lcom/google/android/filament/Engine$f;

    invoke-static {}, Lcom/google/android/filament/Engine$f;->a()[Lcom/google/android/filament/Engine$f;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Engine$f;->$VALUES:[Lcom/google/android/filament/Engine$f;

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

.method public static synthetic a()[Lcom/google/android/filament/Engine$f;
    .locals 5

    sget-object v0, Lcom/google/android/filament/Engine$f;->DEFAULT:Lcom/google/android/filament/Engine$f;

    sget-object v1, Lcom/google/android/filament/Engine$f;->LOW:Lcom/google/android/filament/Engine$f;

    sget-object v2, Lcom/google/android/filament/Engine$f;->MEDIUM:Lcom/google/android/filament/Engine$f;

    sget-object v3, Lcom/google/android/filament/Engine$f;->HIGH:Lcom/google/android/filament/Engine$f;

    sget-object v4, Lcom/google/android/filament/Engine$f;->REALTIME:Lcom/google/android/filament/Engine$f;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/android/filament/Engine$f;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Engine$f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/google/android/filament/Engine$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Engine$f;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Engine$f;
    .locals 1

    sget-object v0, Lcom/google/android/filament/Engine$f;->$VALUES:[Lcom/google/android/filament/Engine$f;

    invoke-virtual {v0}, [Lcom/google/android/filament/Engine$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Engine$f;

    return-object v0
.end method
