.class public final enum Lcom/android/tools/r8/internal/ZU;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/internal/ZU;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/android/tools/r8/internal/ZU;

.field public static final enum d:Lcom/android/tools/r8/internal/ZU;

.field public static final enum e:Lcom/android/tools/r8/internal/ZU;

.field public static final f:Lcom/android/tools/r8/internal/ZU;

.field public static final synthetic g:[Lcom/android/tools/r8/internal/ZU;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/tools/r8/internal/ZU;

    const/4 v1, -0x1

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/tools/r8/internal/ZU;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/ZU;->c:Lcom/android/tools/r8/internal/ZU;

    new-instance v1, Lcom/android/tools/r8/internal/ZU;

    const-string v2, "OBFUSCATED_TYPE_NAME_AS_KEY"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/android/tools/r8/internal/ZU;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/tools/r8/internal/ZU;->d:Lcom/android/tools/r8/internal/ZU;

    new-instance v2, Lcom/android/tools/r8/internal/ZU;

    const-string v3, "OBFUSCATED_TYPE_NAME_AS_KEY_WITH_PARTITIONS"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lcom/android/tools/r8/internal/ZU;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/tools/r8/internal/ZU;->e:Lcom/android/tools/r8/internal/ZU;

    filled-new-array {v0, v1, v2}, [Lcom/android/tools/r8/internal/ZU;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/ZU;->g:[Lcom/android/tools/r8/internal/ZU;

    sput-object v2, Lcom/android/tools/r8/internal/ZU;->f:Lcom/android/tools/r8/internal/ZU;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/tools/r8/internal/ZU;->b:I

    return-void
.end method

.method public static a()Lcom/android/tools/r8/internal/ZU;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/ZU;->f:Lcom/android/tools/r8/internal/ZU;

    return-object v0
.end method
