.class public final enum Lcom/android/tools/r8/internal/R50;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/internal/R50;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/R50;

.field public static final enum c:Lcom/android/tools/r8/internal/R50;

.field public static final enum d:Lcom/android/tools/r8/internal/R50;

.field public static final synthetic e:[Lcom/android/tools/r8/internal/R50;

.field public static final synthetic f:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/R50;

    const/4 v1, 0x0

    const-string v2, "POSITIVE"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/R50;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/R50;->b:Lcom/android/tools/r8/internal/R50;

    new-instance v1, Lcom/android/tools/r8/internal/R50;

    const/4 v2, 0x1

    const-string v3, "NEGATIVE"

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/internal/R50;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/internal/R50;->c:Lcom/android/tools/r8/internal/R50;

    new-instance v2, Lcom/android/tools/r8/internal/R50;

    const/4 v3, 0x2

    const-string v4, "DISABLED"

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/R50;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/tools/r8/internal/R50;->d:Lcom/android/tools/r8/internal/R50;

    filled-new-array {v0, v1, v2}, [Lcom/android/tools/r8/internal/R50;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/R50;->e:[Lcom/android/tools/r8/internal/R50;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
