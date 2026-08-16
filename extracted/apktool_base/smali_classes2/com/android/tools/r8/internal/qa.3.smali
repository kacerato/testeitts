.class public final enum Lcom/android/tools/r8/internal/qa;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/qa;

.field public static final enum c:Lcom/android/tools/r8/internal/qa;

.field public static final enum d:Lcom/android/tools/r8/internal/qa;

.field public static final enum e:Lcom/android/tools/r8/internal/qa;

.field public static final enum f:Lcom/android/tools/r8/internal/qa;

.field public static final enum g:Lcom/android/tools/r8/internal/qa;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/qa;

    const/4 v1, 0x0

    const-string v2, "Shl"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/qa;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/qa;->b:Lcom/android/tools/r8/internal/qa;

    new-instance v0, Lcom/android/tools/r8/internal/qa;

    const/4 v1, 0x1

    const-string v2, "Shr"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/qa;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/qa;->c:Lcom/android/tools/r8/internal/qa;

    new-instance v0, Lcom/android/tools/r8/internal/qa;

    const/4 v1, 0x2

    const-string v2, "Ushr"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/qa;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/qa;->d:Lcom/android/tools/r8/internal/qa;

    new-instance v0, Lcom/android/tools/r8/internal/qa;

    const/4 v1, 0x3

    const-string v2, "And"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/qa;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/qa;->e:Lcom/android/tools/r8/internal/qa;

    new-instance v0, Lcom/android/tools/r8/internal/qa;

    const/4 v1, 0x4

    const-string v2, "Or"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/qa;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/qa;->f:Lcom/android/tools/r8/internal/qa;

    new-instance v0, Lcom/android/tools/r8/internal/qa;

    const/4 v1, 0x5

    const-string v2, "Xor"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/qa;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/qa;->g:Lcom/android/tools/r8/internal/qa;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
