.class public final enum Lcom/android/tools/r8/internal/nE;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/nE;

.field public static final enum c:Lcom/android/tools/r8/internal/nE;

.field public static final enum d:Lcom/android/tools/r8/internal/nE;

.field public static final enum e:Lcom/android/tools/r8/internal/nE;

.field public static final enum f:Lcom/android/tools/r8/internal/nE;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/nE;

    const/4 v1, 0x0

    const-string v2, "NAME"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/nE;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/nE;->b:Lcom/android/tools/r8/internal/nE;

    new-instance v0, Lcom/android/tools/r8/internal/nE;

    const/4 v1, 0x1

    const-string v2, "NAME_EXCL"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/nE;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/nE;->c:Lcom/android/tools/r8/internal/nE;

    new-instance v0, Lcom/android/tools/r8/internal/nE;

    const/4 v1, 0x2

    const-string v2, "CONSTANT"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/nE;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/nE;->d:Lcom/android/tools/r8/internal/nE;

    new-instance v0, Lcom/android/tools/r8/internal/nE;

    const/4 v1, 0x3

    const-string v2, "CONSTANT_EXCL"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/nE;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/nE;->e:Lcom/android/tools/r8/internal/nE;

    new-instance v0, Lcom/android/tools/r8/internal/nE;

    const/4 v1, 0x4

    const-string v2, "PATTERN"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/nE;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/nE;->f:Lcom/android/tools/r8/internal/nE;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
