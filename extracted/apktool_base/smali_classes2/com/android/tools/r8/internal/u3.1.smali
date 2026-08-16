.class public final Lcom/android/tools/r8/internal/u3;
.super Lcom/android/tools/r8/internal/lZ;
.source "SourceFile"


# static fields
.field public static final synthetic o:Z = true


# instance fields
.field public final n:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/UY;Lcom/android/tools/r8/internal/UY;Ljava/util/IdentityHashMap;)V
    .locals 6

    sget-object v4, Lcom/android/tools/r8/internal/lZ;->l:Lcom/android/tools/r8/internal/Jt;

    move-object v0, p3

    check-cast v0, Lcom/android/tools/r8/internal/r6;

    iget-object v3, v0, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/lZ;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/o6;Ljava/util/Map;Lcom/android/tools/r8/internal/k6;Lcom/android/tools/r8/internal/k6;)V

    iput-object p4, p0, Lcom/android/tools/r8/internal/u3;->n:Ljava/util/IdentityHashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;
    .locals 1

    .line 6
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/lZ;->d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/u3;->n:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/u3;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/proto/j;->a(Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/internal/u3;->o:Z

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result p2

    if-nez p2, :cond_2

    .line 10
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/j;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)Lcom/android/tools/r8/internal/kK;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/tools/r8/internal/u3;->n:Ljava/util/IdentityHashMap;

    invoke-virtual {p1, p2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/u3;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 4
    iget-boolean p1, p1, Lcom/android/tools/r8/graph/proto/c;->d:Z

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    return-object p1

    :cond_0
    return-object p4
.end method

.method public final b(Lcom/android/tools/r8/internal/iw;)Lcom/android/tools/r8/internal/iw;
    .locals 4

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/lZ;->b(Lcom/android/tools/r8/internal/iw;)Lcom/android/tools/r8/internal/iw;

    move-result-object v0

    iget-object v1, v0, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, v0, Lcom/android/tools/r8/internal/IV;->b:Lcom/android/tools/r8/graph/v2;

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    iget-object v1, v0, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    iget-object v0, v0, Lcom/android/tools/r8/internal/iw;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/iw;

    invoke-direct {v3, v1, p1, v0, v2}, Lcom/android/tools/r8/internal/iw;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    return-object v3

    :cond_0
    return-object v0
.end method

.method public final f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/u3;->o:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/u3;->n:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/u3;->n:Ljava/util/IdentityHashMap;

    sget-object v1, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/proto/j;

    return-object p1
.end method

.method public final n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
