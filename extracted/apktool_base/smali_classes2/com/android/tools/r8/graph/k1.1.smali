.class public final enum Lcom/android/tools/r8/graph/k1;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/graph/k1;

.field public static final enum c:Lcom/android/tools/r8/graph/k1;

.field public static final enum d:Lcom/android/tools/r8/graph/k1;

.field public static final enum e:Lcom/android/tools/r8/graph/k1;

.field public static final enum f:Lcom/android/tools/r8/graph/k1;

.field public static final enum g:Lcom/android/tools/r8/graph/k1;

.field public static final enum h:Lcom/android/tools/r8/graph/k1;

.field public static final synthetic i:[Lcom/android/tools/r8/graph/k1;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/tools/r8/graph/k1;

    const/4 v1, 0x0

    const-string v2, "NOT_PROCESSED"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/k1;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/graph/k1;->b:Lcom/android/tools/r8/graph/k1;

    new-instance v1, Lcom/android/tools/r8/graph/k1;

    const/4 v2, 0x1

    const-string v3, "PROCESSED_NOT_INLINING_CANDIDATE"

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/graph/k1;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/graph/k1;->c:Lcom/android/tools/r8/graph/k1;

    new-instance v2, Lcom/android/tools/r8/graph/k1;

    const/4 v3, 0x2

    const-string v4, "PROCESSED_INLINING_CANDIDATE_ANY"

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/graph/k1;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/tools/r8/graph/k1;->d:Lcom/android/tools/r8/graph/k1;

    new-instance v3, Lcom/android/tools/r8/graph/k1;

    const/4 v4, 0x3

    const-string v5, "PROCESSED_INLINING_CANDIDATE_SUBCLASS"

    invoke-direct {v3, v4, v5}, Lcom/android/tools/r8/graph/k1;-><init>(ILjava/lang/String;)V

    sput-object v3, Lcom/android/tools/r8/graph/k1;->e:Lcom/android/tools/r8/graph/k1;

    new-instance v4, Lcom/android/tools/r8/graph/k1;

    const/4 v5, 0x4

    const-string v6, "PROCESSED_INLINING_CANDIDATE_SAME_PACKAGE"

    invoke-direct {v4, v5, v6}, Lcom/android/tools/r8/graph/k1;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/android/tools/r8/graph/k1;->f:Lcom/android/tools/r8/graph/k1;

    new-instance v5, Lcom/android/tools/r8/graph/k1;

    const/4 v6, 0x5

    const-string v7, "PROCESSED_INLINING_CANDIDATE_SAME_NEST"

    invoke-direct {v5, v6, v7}, Lcom/android/tools/r8/graph/k1;-><init>(ILjava/lang/String;)V

    sput-object v5, Lcom/android/tools/r8/graph/k1;->g:Lcom/android/tools/r8/graph/k1;

    new-instance v6, Lcom/android/tools/r8/graph/k1;

    const/4 v7, 0x6

    const-string v8, "PROCESSED_INLINING_CANDIDATE_SAME_CLASS"

    invoke-direct {v6, v7, v8}, Lcom/android/tools/r8/graph/k1;-><init>(ILjava/lang/String;)V

    sput-object v6, Lcom/android/tools/r8/graph/k1;->h:Lcom/android/tools/r8/graph/k1;

    filled-new-array/range {v0 .. v6}, [Lcom/android/tools/r8/graph/k1;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/graph/k1;->i:[Lcom/android/tools/r8/graph/k1;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
