.class public final Lcom/android/tools/r8/internal/fc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/j9;
.implements Lcom/android/tools/r8/internal/Na;


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/graph/u1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/fc0;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/fc0;->c:Lcom/android/tools/r8/graph/u1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Af;Lcom/android/tools/r8/internal/o9;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/tools/r8/internal/fc0;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object p1

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/graph/x0;->f:Lcom/android/tools/r8/graph/z0;

    .line 3
    iget-object v0, p1, Lcom/android/tools/r8/graph/z0;->c:Lcom/android/tools/r8/internal/QC;

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    iget-object v1, p1, Lcom/android/tools/r8/graph/z0;->c:Lcom/android/tools/r8/internal/QC;

    .line 7
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    iget-object p1, p1, Lcom/android/tools/r8/graph/z0;->c:Lcom/android/tools/r8/internal/QC;

    .line 9
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 10
    iget-object v2, p0, Lcom/android/tools/r8/internal/fc0;->b:Lcom/android/tools/r8/graph/y;

    invoke-interface {v2, v1}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    .line 11
    sget-boolean v2, Lcom/android/tools/r8/internal/fc0;->d:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_1
    if-nez v2, :cond_3

    .line 12
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_3
    :goto_2
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/android/tools/r8/internal/fc0;->b:Lcom/android/tools/r8/graph/y;

    .line 15
    invoke-static {p1}, Lcom/android/tools/r8/internal/yc0;->a(Lcom/android/tools/r8/graph/y;)V

    const/4 v1, 0x0

    .line 16
    invoke-static {p1, v0, p2, p2, v1}, Lcom/android/tools/r8/internal/yc0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/AbstractCollection;Lcom/android/tools/r8/internal/mc0;Lcom/android/tools/r8/internal/o9;Lcom/android/tools/r8/internal/ea;)V

    :cond_5
    return-void
.end method

.method public final a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Ta;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 1

    .line 17
    const-string p2, "Record class desugaring"

    invoke-virtual {p4, p2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p2

    .line 18
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/H2;

    .line 19
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->x1()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 20
    sget-boolean p4, Lcom/android/tools/r8/internal/fc0;->d:Z

    if-nez p4, :cond_2

    iget-object p4, p3, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/fc0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->j2:Lcom/android/tools/r8/graph/M2;

    if-ne p4, v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 21
    :cond_2
    :goto_1
    iget-object p3, p3, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    const/high16 p4, 0x10000

    .line 22
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/graph/g;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 23
    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void

    .line 24
    :goto_2
    :try_start_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p2

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "$record"

    return-object v0
.end method
