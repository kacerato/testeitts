.class public final enum Lcom/google/android/filament/Engine$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Engine$e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Engine$e;

.field public static final enum FALSE:Lcom/google/android/filament/Engine$e;

.field public static final enum INDETERMINATE:Lcom/google/android/filament/Engine$e;

.field public static final enum TRUE:Lcom/google/android/filament/Engine$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/Engine$e;

    const-string v1, "FALSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Engine$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$e;->FALSE:Lcom/google/android/filament/Engine$e;

    new-instance v0, Lcom/google/android/filament/Engine$e;

    const-string v1, "TRUE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Engine$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$e;->TRUE:Lcom/google/android/filament/Engine$e;

    new-instance v0, Lcom/google/android/filament/Engine$e;

    const-string v1, "INDETERMINATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Engine$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$e;->INDETERMINATE:Lcom/google/android/filament/Engine$e;

    invoke-static {}, Lcom/google/android/filament/Engine$e;->a()[Lcom/google/android/filament/Engine$e;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Engine$e;->$VALUES:[Lcom/google/android/filament/Engine$e;

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

.method public static synthetic a()[Lcom/google/android/filament/Engine$e;
    .locals 3

    sget-object v0, Lcom/google/android/filament/Engine$e;->FALSE:Lcom/google/android/filament/Engine$e;

    sget-object v1, Lcom/google/android/filament/Engine$e;->TRUE:Lcom/google/android/filament/Engine$e;

    sget-object v2, Lcom/google/android/filament/Engine$e;->INDETERMINATE:Lcom/google/android/filament/Engine$e;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/filament/Engine$e;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Engine$e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/google/android/filament/Engine$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Engine$e;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Engine$e;
    .locals 1

    sget-object v0, Lcom/google/android/filament/Engine$e;->$VALUES:[Lcom/google/android/filament/Engine$e;

    invoke-virtual {v0}, [Lcom/google/android/filament/Engine$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Engine$e;

    return-object v0
.end method
