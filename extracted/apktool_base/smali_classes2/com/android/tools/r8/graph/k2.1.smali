.class public final Lcom/android/tools/r8/graph/k2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/I2;

.field public final b:Lcom/android/tools/r8/graph/I2;

.field public final c:Lcom/android/tools/r8/graph/I2;

.field public final d:Ljava/util/Set;

.field public final e:Ljava/util/Set;

.field public final f:Ljava/util/Set;

.field public final synthetic g:Lcom/android/tools/r8/graph/u1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/tools/r8/graph/k2;->g:Lcom/android/tools/r8/graph/u1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    iput-object v2, v0, Lcom/android/tools/r8/graph/k2;->a:Lcom/android/tools/r8/graph/I2;

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    iput-object v2, v0, Lcom/android/tools/r8/graph/k2;->b:Lcom/android/tools/r8/graph/I2;

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    iput-object v2, v0, Lcom/android/tools/r8/graph/k2;->c:Lcom/android/tools/r8/graph/I2;

    iget-object v6, v1, Lcom/android/tools/r8/graph/u1;->v1:Lcom/android/tools/r8/graph/L2;

    const-string v23, "getOpaque"

    const-string v24, "getVolatile"

    const-string v3, "compareAndExchange"

    const-string v4, "compareAndExchangeAcquire"

    const-string v5, "compareAndExchangeRelease"

    const-string v7, "getAcquire"

    const-string v8, "getAndAdd"

    const-string v9, "getAndAddAcquire"

    const-string v10, "getAndAddRelease"

    const-string v11, "getAndBitwiseAnd"

    const-string v12, "getAndBitwiseAndAcquire"

    const-string v13, "getAndBitwiseAndRelease"

    const-string v14, "getAndBitwiseOr"

    const-string v15, "getAndBitwiseOrAcquire"

    const-string v16, "getAndBitwiseOrRelease"

    const-string v17, "getAndBitwiseXor"

    const-string v18, "getAndBitwiseXorAcquire"

    const-string v19, "getAndBitwiseXorRelease"

    const-string v20, "getAndSet"

    const-string v21, "getAndSetAcquire"

    const-string v22, "getAndSetRelease"

    filled-new-array/range {v3 .. v24}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/k2;->a([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Lcom/android/tools/r8/graph/k2;->d:Ljava/util/Set;

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->w1:Lcom/android/tools/r8/graph/L2;

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->B1:Lcom/android/tools/r8/graph/L2;

    iget-object v4, v1, Lcom/android/tools/r8/graph/u1;->A1:Lcom/android/tools/r8/graph/L2;

    const-string v5, "setOpaque"

    filled-new-array {v2, v5, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/k2;->a([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Lcom/android/tools/r8/graph/k2;->e:Ljava/util/Set;

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->x1:Lcom/android/tools/r8/graph/L2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->y1:Lcom/android/tools/r8/graph/L2;

    const-string v3, "weakCompareAndSetPlain"

    const-string v4, "weakCompareAndSetRelease"

    const-string v5, "weakCompareAndSetAcquire"

    filled-new-array {v2, v1, v5, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/k2;->a([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/graph/k2;->f:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final varargs a([Ljava/lang/Object;)Ljava/util/Set;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 3
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/tools/r8/graph/k2;->g:Lcom/android/tools/r8/graph/u1;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    goto :goto_1

    :cond_0
    check-cast v3, Lcom/android/tools/r8/graph/L2;

    .line 4
    :goto_1
    invoke-virtual {v0, v3, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)Z
    .locals 5

    .line 6
    iget-object v0, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p0, Lcom/android/tools/r8/graph/k2;->g:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->O2:Lcom/android/tools/r8/graph/M2;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_2

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object v0, v1, Lcom/android/tools/r8/graph/u1;->L0:Lcom/android/tools/r8/graph/L2;

    if-eq p1, v0, :cond_1

    iget-object v0, v1, Lcom/android/tools/r8/graph/u1;->M0:Lcom/android/tools/r8/graph/L2;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v4

    :cond_1
    :goto_0
    return v3

    .line 8
    :cond_2
    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->N2:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_5

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/graph/k2;->d:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/graph/k2;->e:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    .line 10
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/graph/k2;->f:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    return v4

    :cond_4
    :goto_1
    return v3

    :cond_5
    return v4
.end method
