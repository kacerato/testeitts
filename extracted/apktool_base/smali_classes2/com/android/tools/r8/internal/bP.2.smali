.class public final enum Lcom/android/tools/r8/internal/bP;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/bP;

.field public static final enum c:Lcom/android/tools/r8/internal/bP;

.field public static final enum d:Lcom/android/tools/r8/internal/bP;

.field public static final enum e:Lcom/android/tools/r8/internal/bP;

.field public static final enum f:Lcom/android/tools/r8/internal/bP;

.field public static final enum g:Lcom/android/tools/r8/internal/bP;

.field public static final synthetic h:[Lcom/android/tools/r8/internal/bP;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/tools/r8/internal/bP;

    const/4 v1, 0x0

    const-string v2, "SHRINKING"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/bP;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/bP;->b:Lcom/android/tools/r8/internal/bP;

    new-instance v1, Lcom/android/tools/r8/internal/bP;

    const/4 v2, 0x1

    const-string v3, "OPTIMIZING"

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/internal/bP;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/internal/bP;->c:Lcom/android/tools/r8/internal/bP;

    new-instance v2, Lcom/android/tools/r8/internal/bP;

    const/4 v3, 0x2

    const-string v4, "OBFUSCATING"

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/bP;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/tools/r8/internal/bP;->d:Lcom/android/tools/r8/internal/bP;

    new-instance v3, Lcom/android/tools/r8/internal/bP;

    const/4 v4, 0x3

    const-string v5, "ACCESS_MODIFICATION"

    invoke-direct {v3, v4, v5}, Lcom/android/tools/r8/internal/bP;-><init>(ILjava/lang/String;)V

    sput-object v3, Lcom/android/tools/r8/internal/bP;->e:Lcom/android/tools/r8/internal/bP;

    new-instance v4, Lcom/android/tools/r8/internal/bP;

    const/4 v5, 0x4

    const-string v6, "ANNOTATION_REMOVAL"

    invoke-direct {v4, v5, v6}, Lcom/android/tools/r8/internal/bP;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/android/tools/r8/internal/bP;->f:Lcom/android/tools/r8/internal/bP;

    new-instance v5, Lcom/android/tools/r8/internal/bP;

    const/4 v6, 0x5

    const-string v7, "SIGNATURE_REMOVAL"

    invoke-direct {v5, v6, v7}, Lcom/android/tools/r8/internal/bP;-><init>(ILjava/lang/String;)V

    sput-object v5, Lcom/android/tools/r8/internal/bP;->g:Lcom/android/tools/r8/internal/bP;

    filled-new-array/range {v0 .. v5}, [Lcom/android/tools/r8/internal/bP;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/bP;->h:[Lcom/android/tools/r8/internal/bP;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
