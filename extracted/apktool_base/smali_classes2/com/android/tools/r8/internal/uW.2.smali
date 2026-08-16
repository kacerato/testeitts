.class public final enum Lcom/android/tools/r8/internal/uW;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lcom/android/tools/r8/internal/uW;

.field public static final enum d:Lcom/android/tools/r8/internal/uW;

.field public static final enum e:Lcom/android/tools/r8/internal/uW;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/uW;

    const/4 v1, -0x1

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/tools/r8/internal/uW;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/uW;->c:Lcom/android/tools/r8/internal/uW;

    new-instance v0, Lcom/android/tools/r8/internal/uW;

    const-string v1, "PREAMBLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/uW;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/uW;->d:Lcom/android/tools/r8/internal/uW;

    new-instance v0, Lcom/android/tools/r8/internal/uW;

    const-string v1, "OBFUSCATED_PACKAGES"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/android/tools/r8/internal/uW;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/uW;->e:Lcom/android/tools/r8/internal/uW;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/tools/r8/internal/uW;->b:I

    return-void
.end method
