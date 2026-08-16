.class public abstract Lcom/android/tools/r8/internal/mZ;
.super Lcom/android/tools/r8/internal/lZ;
.source "SourceFile"


# static fields
.field public static final synthetic o:Z = true


# instance fields
.field public n:Lcom/android/tools/r8/ir/optimize/A;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/r6;Lcom/android/tools/r8/internal/N10;)V
    .locals 6

    sget-object v2, Lcom/android/tools/r8/internal/lZ;->j:Lcom/android/tools/r8/internal/Jt;

    sget-object v4, Lcom/android/tools/r8/internal/lZ;->l:Lcom/android/tools/r8/internal/Jt;

    .line 2
    iget-object v3, p2, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/lZ;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/o6;Ljava/util/Map;Lcom/android/tools/r8/internal/k6;Lcom/android/tools/r8/internal/k6;)V

    .line 4
    iput-object p3, p0, Lcom/android/tools/r8/internal/mZ;->n:Lcom/android/tools/r8/ir/optimize/A;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/s6;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/o6;Lcom/android/tools/r8/internal/q6;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/tools/r8/internal/lZ;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/o6;Ljava/util/Map;Lcom/android/tools/r8/internal/k6;Lcom/android/tools/r8/internal/k6;)V

    return-void
.end method


# virtual methods
.method public final f()Lcom/android/tools/r8/ir/optimize/A;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/mZ;->o:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/mZ;->n:Lcom/android/tools/r8/ir/optimize/A;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/mZ;->n:Lcom/android/tools/r8/ir/optimize/A;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
