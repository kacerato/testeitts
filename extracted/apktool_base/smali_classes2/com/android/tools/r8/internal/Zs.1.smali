.class public final Lcom/android/tools/r8/internal/Zs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/at;


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/internal/W5;

.field public final c:Lcom/android/tools/r8/internal/W5;

.field public final d:Ljava/util/Set;

.field public final e:Lcom/android/tools/r8/internal/Yx0;

.field public f:Lcom/android/tools/r8/internal/W5;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;Ljava/util/Set;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/Yx0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Zs;->e:Lcom/android/tools/r8/internal/Yx0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Zs;->b:Lcom/android/tools/r8/internal/W5;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Zs;->c:Lcom/android/tools/r8/internal/W5;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Zs;->d:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Zs;->f:Lcom/android/tools/r8/internal/W5;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/Yx0;)Z
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/Zs;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p3, Lcom/android/tools/r8/internal/Yx0;->b:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    :goto_1
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Yx0;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    if-ne p1, p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    sget-boolean p2, Lcom/android/tools/r8/internal/Zs;->g:Z

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "subgraphEntryBlock did not dominate subgraphExitBlock"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    goto :goto_1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final b(Lcom/android/tools/r8/internal/W5;)Z
    .locals 5

    sget-boolean v0, Lcom/android/tools/r8/internal/Zs;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Zs;->f:Lcom/android/tools/r8/internal/W5;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "DominatorChecker cannot be used after returning false."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Zs;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->D()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, p1

    :cond_3
    sget-boolean v3, Lcom/android/tools/r8/internal/Zs;->g:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/tools/r8/internal/Zs;->c:Lcom/android/tools/r8/internal/W5;

    if-eq v1, v3, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->y()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->D()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return v2

    :cond_6
    move-object v1, p1

    :cond_7
    iget-object v2, p0, Lcom/android/tools/r8/internal/Zs;->e:Lcom/android/tools/r8/internal/Yx0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/Yx0;->b:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/tools/r8/internal/Zs;->e:Lcom/android/tools/r8/internal/Yx0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/Yx0;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, p0, Lcom/android/tools/r8/internal/Zs;->f:Lcom/android/tools/r8/internal/W5;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Zs;->c:Lcom/android/tools/r8/internal/W5;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Zs;->e:Lcom/android/tools/r8/internal/Yx0;

    invoke-static {v2, v3, v1, v4}, Lcom/android/tools/r8/internal/Zs;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/Yx0;)Z

    move-result v2

    iput-object v1, p0, Lcom/android/tools/r8/internal/Zs;->f:Lcom/android/tools/r8/internal/W5;

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lcom/android/tools/r8/internal/Zs;->b:Lcom/android/tools/r8/internal/W5;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Zs;->f:Lcom/android/tools/r8/internal/W5;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Zs;->e:Lcom/android/tools/r8/internal/Yx0;

    invoke-static {v2, v3, p1, v4}, Lcom/android/tools/r8/internal/Zs;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/Yx0;)Z

    move-result v2

    iput-object p1, p0, Lcom/android/tools/r8/internal/Zs;->f:Lcom/android/tools/r8/internal/W5;

    :goto_2
    if-eqz v2, :cond_a

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eq v1, p1, :cond_9

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9
    return v2

    :cond_a
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Zs;->f:Lcom/android/tools/r8/internal/W5;

    return v2
.end method
