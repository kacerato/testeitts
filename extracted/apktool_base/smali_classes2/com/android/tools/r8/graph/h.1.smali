.class public Lcom/android/tools/r8/graph/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/d1;


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/x0;

.field public final b:Lcom/android/tools/r8/internal/Zd;

.field public final c:Lcom/android/tools/r8/graph/u1;

.field public final d:Lcom/android/tools/r8/shaking/o2;

.field public final e:Lcom/android/tools/r8/synthesis/J;

.field public final f:Lcom/android/tools/r8/internal/U6;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/synthesis/J;Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/internal/U6;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/graph/h;->a:Lcom/android/tools/r8/graph/x0;

    .line 7
    iput-object p2, p0, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    .line 8
    iget-object p1, p1, Lcom/android/tools/r8/graph/x0;->e:Lcom/android/tools/r8/graph/u1;

    iput-object p1, p0, Lcom/android/tools/r8/graph/h;->c:Lcom/android/tools/r8/graph/u1;

    .line 9
    iput-object p4, p0, Lcom/android/tools/r8/graph/h;->d:Lcom/android/tools/r8/shaking/o2;

    .line 10
    iput-object p3, p0, Lcom/android/tools/r8/graph/h;->e:Lcom/android/tools/r8/synthesis/J;

    .line 11
    iput-object p5, p0, Lcom/android/tools/r8/graph/h;->f:Lcom/android/tools/r8/internal/U6;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/synthesis/b;Lcom/android/tools/r8/shaking/o2;)V
    .locals 6

    .line 1
    iget-object v1, p2, Lcom/android/tools/r8/synthesis/b;->a:Lcom/android/tools/r8/graph/x0;

    .line 2
    new-instance v3, Lcom/android/tools/r8/synthesis/J;

    invoke-direct {v3, p2}, Lcom/android/tools/r8/synthesis/J;-><init>(Lcom/android/tools/r8/synthesis/b;)V

    .line 3
    new-instance v5, Lcom/android/tools/r8/internal/U6;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/U6;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/graph/h;-><init>(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/synthesis/J;Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/internal/U6;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/synthesis/E;)Lcom/android/tools/r8/graph/h;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/tools/r8/internal/Zd;->a()Lcom/android/tools/r8/internal/Zd;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/tools/r8/shaking/o2;->b()Lcom/android/tools/r8/shaking/o2;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/android/tools/r8/graph/h;

    .line 4
    invoke-static {p0, p1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/synthesis/E;)Lcom/android/tools/r8/synthesis/b;

    move-result-object p0

    invoke-direct {v2, v0, p0, v1}, Lcom/android/tools/r8/graph/h;-><init>(Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/synthesis/b;Lcom/android/tools/r8/shaking/o2;)V

    return-object v2
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D3;
    .locals 1

    .line 38
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 39
    sget-boolean p1, Lcom/android/tools/r8/graph/D3;->a:Z

    sget-object p1, Lcom/android/tools/r8/graph/w3;->b:Lcom/android/tools/r8/graph/w3;

    return-object p1

    .line 40
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 41
    iget-object p3, p1, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 42
    iget-object p3, p3, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 43
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/graph/s3;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 44
    invoke-static {p1, p1, p2}, Lcom/android/tools/r8/graph/D3;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/D3$a;

    move-result-object p1

    return-object p1

    .line 45
    :cond_1
    sget-boolean p1, Lcom/android/tools/r8/graph/D3;->a:Z

    sget-object p1, Lcom/android/tools/r8/graph/G3;->b:Lcom/android/tools/r8/graph/G3;

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/O5;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/h;
    .locals 8

    .line 5
    sget-boolean p2, Lcom/android/tools/r8/graph/h;->g:Z

    if-nez p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/graph/h;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_2
    if-nez p2, :cond_4

    .line 7
    iget-object p2, p1, Lcom/android/tools/r8/graph/O5;->a:Lcom/android/tools/r8/graph/x0;

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    if-ne p2, v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/O5;->b()Z

    move-result p2

    if-eqz p2, :cond_5

    return-object p0

    .line 10
    :cond_5
    const-string p2, "Pruning AppInfo"

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 11
    new-instance p2, Lcom/android/tools/r8/graph/h;

    iget-object v0, p0, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    .line 12
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/graph/O5;)Lcom/android/tools/r8/internal/Zd;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    .line 14
    iget-object v3, v1, Lcom/android/tools/r8/synthesis/J;->d:Lcom/android/tools/r8/synthesis/F;

    .line 15
    iget-object v4, v1, Lcom/android/tools/r8/synthesis/J;->e:Lcom/android/tools/r8/synthesis/A;

    iget-object v5, v1, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    iget v6, v1, Lcom/android/tools/r8/synthesis/J;->a:I

    iget-object v7, v1, Lcom/android/tools/r8/synthesis/J;->f:Lcom/android/tools/r8/synthesis/E;

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/synthesis/F;Lcom/android/tools/r8/synthesis/A;Lcom/android/tools/r8/synthesis/d;ILcom/android/tools/r8/synthesis/E;)Lcom/android/tools/r8/synthesis/b;

    move-result-object v1

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->f()Lcom/android/tools/r8/shaking/o2;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/shaking/o2;->a(Lcom/android/tools/r8/graph/O5;)Lcom/android/tools/r8/shaking/o2;

    move-result-object p1

    invoke-direct {p2, v0, v1, p1}, Lcom/android/tools/r8/graph/h;-><init>(Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/synthesis/b;Lcom/android/tools/r8/shaking/o2;)V

    .line 17
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p2
.end method

.method public a(Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/graph/h;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/synthesis/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/h;->a(Lcom/android/tools/r8/synthesis/b;)Lcom/android/tools/r8/graph/h;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/shaking/o2;)Lcom/android/tools/r8/graph/h;
    .locals 7

    .line 20
    sget-boolean v0, Lcom/android/tools/r8/graph/h;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 21
    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/h;

    iget-object v2, p0, Lcom/android/tools/r8/graph/h;->a:Lcom/android/tools/r8/graph/x0;

    iget-object v3, p0, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    iget-object v4, p0, Lcom/android/tools/r8/graph/h;->e:Lcom/android/tools/r8/synthesis/J;

    new-instance v6, Lcom/android/tools/r8/internal/U6;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/U6;-><init>()V

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/graph/h;-><init>(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/synthesis/J;Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/internal/U6;)V

    return-object v0
.end method

.method public a(Lcom/android/tools/r8/synthesis/b;)Lcom/android/tools/r8/graph/h;
    .locals 3

    .line 19
    new-instance v0, Lcom/android/tools/r8/graph/h;

    iget-object v1, p0, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    iget-object v2, p0, Lcom/android/tools/r8/graph/h;->d:Lcom/android/tools/r8/shaking/o2;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/tools/r8/graph/h;-><init>(Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/synthesis/b;Lcom/android/tools/r8/shaking/o2;)V

    return-object v0
.end method

.method public a()Lcom/android/tools/r8/graph/x0;
    .locals 1

    .line 22
    sget-boolean v0, Lcom/android/tools/r8/graph/h;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/h;->a:Lcom/android/tools/r8/graph/x0;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;)V
    .locals 3

    .line 24
    sget-boolean v0, Lcom/android/tools/r8/graph/h;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 25
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->Y1:Lcom/android/tools/r8/DesugarGraphConsumer;

    if-nez v0, :cond_4

    goto :goto_3

    .line 27
    :cond_4
    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 28
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/synthesis/J;->d(Lcom/android/tools/r8/graph/M2;)Ljava/util/List;

    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 30
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 31
    invoke-static {}, Lcom/android/tools/r8/origin/c;->a()Lcom/android/tools/r8/origin/Origin;

    move-result-object v1

    if-eq p2, v1, :cond_9

    .line 32
    invoke-static {}, Lcom/android/tools/r8/origin/c;->a()Lcom/android/tools/r8/origin/Origin;

    move-result-object v1

    if-ne p1, v1, :cond_5

    goto :goto_3

    :cond_5
    if-eq p1, p2, :cond_9

    .line 33
    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/DesugarGraphConsumer;->accept(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/origin/Origin;)V

    return-void

    .line 34
    :cond_6
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/origin/Origin;

    .line 35
    invoke-static {}, Lcom/android/tools/r8/origin/c;->a()Lcom/android/tools/r8/origin/Origin;

    move-result-object v2

    if-eq p2, v2, :cond_7

    .line 36
    invoke-static {}, Lcom/android/tools/r8/origin/c;->a()Lcom/android/tools/r8/origin/Origin;

    move-result-object v2

    if-ne v1, v2, :cond_8

    goto :goto_2

    :cond_8
    if-eq v1, p2, :cond_7

    .line 37
    invoke-interface {v0, v1, p2}, Lcom/android/tools/r8/DesugarGraphConsumer;->accept(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/origin/Origin;)V

    goto :goto_2

    :cond_9
    :goto_3
    return-void
.end method

.method public b()Lcom/android/tools/r8/graph/u1;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/h;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/h;->c:Lcom/android/tools/r8/graph/u1;

    return-object v0
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;
    .locals 3

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/graph/h;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/h;->e:Lcom/android/tools/r8/synthesis/J;

    iget-object v1, p0, Lcom/android/tools/r8/graph/h;->a:Lcom/android/tools/r8/graph/x0;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/graph/wd;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/graph/wd;-><init>(Lcom/android/tools/r8/graph/x0;)V

    invoke-virtual {v0, v2, p1}, Lcom/android/tools/r8/synthesis/J;->a(Ljava/util/function/Function;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Lcom/android/tools/r8/graph/b0;->D()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    return-object p1
.end method

.method public final c()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/h;->g:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/h;->f:Lcom/android/tools/r8/internal/U6;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/U6;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public d()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/graph/H2;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/tools/r8/graph/h;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/h;->a:Lcom/android/tools/r8/graph/x0;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/x0;->d()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/util/Collection;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/h;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/h;->a:Lcom/android/tools/r8/graph/x0;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/x0;->e()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;
    .locals 3

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/graph/h;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/h;->e:Lcom/android/tools/r8/synthesis/J;

    iget-object v1, p0, Lcom/android/tools/r8/graph/h;->a:Lcom/android/tools/r8/graph/x0;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/graph/wd;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/graph/wd;-><init>(Lcom/android/tools/r8/graph/x0;)V

    .line 6
    invoke-virtual {v0, v2, p1}, Lcom/android/tools/r8/synthesis/J;->a(Ljava/util/function/Function;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;

    move-result-object p1

    return-object p1
.end method

.method public final f()Lcom/android/tools/r8/shaking/o2;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/h;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/h;->d:Lcom/android/tools/r8/shaking/o2;

    return-object v0
.end method

.method public g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    return-object p1
.end method

.method public final g()Lcom/android/tools/r8/synthesis/J;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/h;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/h;->e:Lcom/android/tools/r8/synthesis/J;

    return-object v0
.end method

.method public h()Z
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/h;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/h;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()Lcom/android/tools/r8/internal/nJ;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/h;->a:Lcom/android/tools/r8/graph/x0;

    iget-object v0, v0, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    return-object v0
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/h;->f:Lcom/android/tools/r8/internal/U6;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/U6;->f()V

    return-void
.end method

.method public l()Lcom/android/tools/r8/graph/j;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/h;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Lcom/android/tools/r8/shaking/i;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/h;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
