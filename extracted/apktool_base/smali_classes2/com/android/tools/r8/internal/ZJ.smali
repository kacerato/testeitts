.class public final enum Lcom/android/tools/r8/internal/ZJ;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/ZJ;

.field public static final enum c:Lcom/android/tools/r8/internal/ZJ;

.field public static final enum d:Lcom/android/tools/r8/internal/ZJ;

.field public static final enum e:Lcom/android/tools/r8/internal/ZJ;

.field public static final enum f:Lcom/android/tools/r8/internal/ZJ;

.field public static final enum g:Lcom/android/tools/r8/internal/ZJ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/ZJ;

    const/4 v1, 0x0

    const-string v2, "DIRECT"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/ZJ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/ZJ;->b:Lcom/android/tools/r8/internal/ZJ;

    new-instance v0, Lcom/android/tools/r8/internal/ZJ;

    const/4 v1, 0x1

    const-string v2, "VIRTUAL"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/ZJ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/ZJ;->c:Lcom/android/tools/r8/internal/ZJ;

    new-instance v0, Lcom/android/tools/r8/internal/ZJ;

    const/4 v1, 0x2

    const-string v2, "STATIC"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/ZJ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/ZJ;->d:Lcom/android/tools/r8/internal/ZJ;

    new-instance v0, Lcom/android/tools/r8/internal/ZJ;

    const/4 v1, 0x3

    const-string v2, "SUPER"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/ZJ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/ZJ;->e:Lcom/android/tools/r8/internal/ZJ;

    new-instance v0, Lcom/android/tools/r8/internal/ZJ;

    const/4 v1, 0x4

    const-string v2, "ILLEGAL"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/ZJ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/ZJ;->f:Lcom/android/tools/r8/internal/ZJ;

    new-instance v0, Lcom/android/tools/r8/internal/ZJ;

    const/4 v1, 0x5

    const-string v2, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/ZJ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/ZJ;->g:Lcom/android/tools/r8/internal/ZJ;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
