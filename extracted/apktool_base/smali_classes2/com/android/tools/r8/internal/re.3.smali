.class public final enum Lcom/android/tools/r8/internal/re;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/internal/re;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/re;

.field public static final enum c:Lcom/android/tools/r8/internal/re;

.field public static final enum d:Lcom/android/tools/r8/internal/re;

.field public static final synthetic e:[Lcom/android/tools/r8/internal/re;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/re;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/re;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/re;->b:Lcom/android/tools/r8/internal/re;

    new-instance v1, Lcom/android/tools/r8/internal/re;

    const/4 v2, 0x1

    const-string v3, "GT"

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/internal/re;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/internal/re;->c:Lcom/android/tools/r8/internal/re;

    new-instance v2, Lcom/android/tools/r8/internal/re;

    const/4 v3, 0x2

    const-string v4, "LT"

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/re;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/tools/r8/internal/re;->d:Lcom/android/tools/r8/internal/re;

    filled-new-array {v0, v1, v2}, [Lcom/android/tools/r8/internal/re;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/re;->e:[Lcom/android/tools/r8/internal/re;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcom/android/tools/r8/internal/re;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/re;->e:[Lcom/android/tools/r8/internal/re;

    invoke-virtual {v0}, [Lcom/android/tools/r8/internal/re;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/internal/re;

    return-object v0
.end method
