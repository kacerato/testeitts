.class public final Lcom/android/tools/r8/internal/n3;
.super Lcom/android/tools/r8/internal/bt0;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final f:Lcom/android/tools/r8/graph/y;

.field public final g:Lcom/android/tools/r8/internal/u3;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/u3;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/bt0;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/n3;->f:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/n3;->g:Lcom/android/tools/r8/internal/u3;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/L4;)V
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->a()Lcom/android/tools/r8/graph/g;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/L4;

    .line 35
    iget v0, p0, Lcom/android/tools/r8/graph/g;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/tools/r8/graph/g;->c:I

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/g1$a;)V
    .locals 1

    .line 17
    invoke-static {}, Lcom/android/tools/r8/graph/H3$e;->p()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/tools/r8/graph/g1$a;->d:Lcom/android/tools/r8/graph/H3$e;

    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/g1$a;)V
    .locals 1

    .line 4
    invoke-static {}, Lcom/android/tools/r8/graph/H3$e;->p()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/tools/r8/graph/g1$a;->d:Lcom/android/tools/r8/graph/H3$e;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 0

    .line 49
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 50
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/tools/r8/internal/n3;->g:Lcom/android/tools/r8/internal/u3;

    .line 47
    iget-object v0, v0, Lcom/android/tools/r8/internal/lZ;->f:Lcom/android/tools/r8/internal/o6;

    .line 48
    invoke-interface {v0, p1, p1}, Lcom/android/tools/r8/internal/m6;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1$a;)V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/n3;->g:Lcom/android/tools/r8/internal/u3;

    .line 20
    iget-object v0, v0, Lcom/android/tools/r8/internal/u3;->n:Ljava/util/IdentityHashMap;

    .line 21
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/n3;->g:Lcom/android/tools/r8/internal/u3;

    .line 23
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/u3;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    .line 24
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/proto/j;->a(Lcom/android/tools/r8/graph/j1;)Ljava/util/function/Consumer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/j1$a;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 25
    invoke-static {}, Lcom/android/tools/r8/graph/H3$g;->d()Lcom/android/tools/r8/graph/H3$g;

    move-result-object v1

    .line 26
    iput-object v1, v0, Lcom/android/tools/r8/graph/j1$a;->d:Lcom/android/tools/r8/graph/H3$g;

    .line 27
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result p2

    if-nez p2, :cond_0

    .line 28
    iget-object p1, p1, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    const/4 p2, 0x0

    .line 29
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 31
    new-instance p1, Lcom/android/tools/r8/internal/am1;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/am1;-><init>()V

    .line 32
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/j1$a;->b(Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p1

    .line 33
    sget-object p2, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    iput-object p2, p1, Lcom/android/tools/r8/graph/j1$a;->f:Lcom/android/tools/r8/internal/t40;

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 51
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final a(Ljava/util/Set;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/n3;->g:Lcom/android/tools/r8/internal/u3;

    if-nez v0, :cond_2

    .line 4
    sget-boolean p2, Lcom/android/tools/r8/internal/n3;->h:Z

    if-nez p2, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 5
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/internal/n3;->h:Z

    if-nez v0, :cond_4

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_4
    :goto_1
    const-string v0, "Fixup application"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/cm1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/cm1;-><init>(Lcom/android/tools/r8/internal/n3;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/bt0;->a:Lcom/android/tools/r8/graph/y;

    .line 8
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v1

    .line 9
    invoke-static {p1, v0, v1, p2}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 10
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 11
    new-instance p1, Lcom/android/tools/r8/internal/dm1;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/dm1;-><init>(Lcom/android/tools/r8/internal/n3;Ljava/util/concurrent/ExecutorService;)V

    const-string v0, "Fixup optimization info"

    invoke-virtual {p3, v0, p1}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 12
    const-string p1, "Rewrite AppView"

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 13
    iget-object p1, p0, Lcom/android/tools/r8/internal/bt0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v0, p0, Lcom/android/tools/r8/internal/n3;->g:Lcom/android/tools/r8/internal/u3;

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/x0;->a()Lcom/android/tools/r8/graph/g3;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/graph/g3;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 16
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)V
    .locals 6

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/internal/n3;->g:Lcom/android/tools/r8/internal/u3;

    .line 37
    iget-object v0, v0, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    .line 38
    iget-object v1, p0, Lcom/android/tools/r8/internal/bt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v1

    .line 39
    new-instance v2, Lcom/android/tools/r8/graph/M5;

    invoke-direct {v2}, Lcom/android/tools/r8/graph/M5;-><init>()V

    .line 40
    iput-object v1, v2, Lcom/android/tools/r8/graph/M5;->a:Lcom/android/tools/r8/graph/x0;

    .line 41
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M5;->a()Lcom/android/tools/r8/graph/O5;

    move-result-object v1

    .line 42
    invoke-static {}, Lcom/android/tools/r8/internal/k40;->a()Lcom/android/tools/r8/internal/o40;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/bt0;->a:Lcom/android/tools/r8/graph/y;

    .line 43
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/m3;

    invoke-direct {v5, p0, v0, v1}, Lcom/android/tools/r8/internal/m3;-><init>(Lcom/android/tools/r8/internal/n3;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/O5;)V

    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v4, p1, v5}, Lcom/android/tools/r8/internal/k40;->a(Ljava/util/Collection;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/j40;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;
    .locals 3

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/internal/n3;->g:Lcom/android/tools/r8/internal/u3;

    .line 8
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/lZ;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/n3;->g:Lcom/android/tools/r8/internal/u3;

    .line 10
    iget-object v0, v0, Lcom/android/tools/r8/internal/u3;->n:Ljava/util/IdentityHashMap;

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/bt0;->b:Lcom/android/tools/r8/graph/u1;

    new-instance v2, Lcom/android/tools/r8/internal/bm1;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/tools/r8/internal/bm1;-><init>(Lcom/android/tools/r8/internal/n3;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/j1;)V

    .line 13
    invoke-virtual {p1, v1, v0, v2}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p1, Lcom/android/tools/r8/graph/j1;->t:Z

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/n3;->c(Lcom/android/tools/r8/graph/H2;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/n3;->d(Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Yl1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Yl1;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/bt0;->a(Ljava/util/List;Ljava/util/function/Consumer;)[Lcom/android/tools/r8/graph/g1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/E0;->a([Lcom/android/tools/r8/graph/g1;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->A1()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Zl1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Zl1;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/bt0;->a(Ljava/util/List;Ljava/util/function/Consumer;)[Lcom/android/tools/r8/graph/g1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/E0;->b([Lcom/android/tools/r8/graph/g1;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/Xl1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Xl1;-><init>(Lcom/android/tools/r8/internal/n3;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    iput-object v1, p1, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/O4;->a(Ljava/util/function/Function;)V

    return-void
.end method
