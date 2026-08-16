.class public final enum Lcom/android/tools/r8/internal/tP;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lcom/android/tools/r8/internal/tP;

.field public static final synthetic d:[Lcom/android/tools/r8/internal/tP;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/tP;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/internal/tP;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/tP;->c:Lcom/android/tools/r8/internal/tP;

    new-instance v1, Lcom/android/tools/r8/internal/tP;

    const-string v2, "ALPHA"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/android/tools/r8/internal/tP;-><init>(Ljava/lang/String;II)V

    filled-new-array {v0, v1}, [Lcom/android/tools/r8/internal/tP;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/tP;->d:[Lcom/android/tools/r8/internal/tP;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/tools/r8/internal/tP;->b:I

    return-void
.end method
