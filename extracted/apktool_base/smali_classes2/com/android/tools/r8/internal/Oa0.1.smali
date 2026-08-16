.class public final Lcom/android/tools/r8/internal/Oa0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Hb0;

.field public final b:Lcom/android/tools/r8/internal/qa0;

.field public final c:Lcom/android/tools/r8/internal/Oy;

.field public final d:Lcom/android/tools/r8/internal/cz;

.field public final e:Lcom/android/tools/r8/internal/bz;

.field public final f:Lcom/android/tools/r8/internal/vu;

.field public final g:Lcom/android/tools/r8/internal/ma0;

.field public final h:Lcom/android/tools/r8/internal/La0;

.field public i:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/La0;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Oa0;->i:Ljava/util/Set;

    new-instance v0, Lcom/android/tools/r8/internal/qa0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qa0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/Hb0;

    invoke-direct {v1, v0, p2}, Lcom/android/tools/r8/internal/Hb0;-><init>(Lcom/android/tools/r8/internal/qa0;Lcom/android/tools/r8/internal/La0;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/Oa0;->a:Lcom/android/tools/r8/internal/Hb0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Oa0;->b:Lcom/android/tools/r8/internal/qa0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a0()Lcom/android/tools/r8/internal/nJ$n;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$n;->a:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Oy;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Oy;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/La0;)V

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/android/tools/r8/internal/Oa0;->c:Lcom/android/tools/r8/internal/Oy;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a0()Lcom/android/tools/r8/internal/nJ$n;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$n;->b:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/cz;

    invoke-direct {v0, p1, v1, p2}, Lcom/android/tools/r8/internal/cz;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hb0;Lcom/android/tools/r8/internal/La0;)V

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lcom/android/tools/r8/internal/Oa0;->d:Lcom/android/tools/r8/internal/cz;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a0()Lcom/android/tools/r8/internal/nJ$n;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$n;->c:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/tools/r8/internal/bz;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/bz;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/La0;)V

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    iput-object v0, p0, Lcom/android/tools/r8/internal/Oa0;->e:Lcom/android/tools/r8/internal/bz;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a0()Lcom/android/tools/r8/internal/nJ$n;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$n;->e:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/tools/r8/internal/vu;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/vu;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/La0;)V

    goto :goto_3

    :cond_3
    move-object v0, v2

    :goto_3
    iput-object v0, p0, Lcom/android/tools/r8/internal/Oa0;->f:Lcom/android/tools/r8/internal/vu;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->a0()Lcom/android/tools/r8/internal/nJ$n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ$n;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance v2, Lcom/android/tools/r8/internal/ma0;

    invoke-direct {v2, p2}, Lcom/android/tools/r8/internal/ma0;-><init>(Lcom/android/tools/r8/internal/La0;)V

    :cond_4
    iput-object v2, p0, Lcom/android/tools/r8/internal/Oa0;->g:Lcom/android/tools/r8/internal/ma0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Oa0;->h:Lcom/android/tools/r8/internal/La0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/dex/t0;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Oa0;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    sget-boolean v2, Lcom/android/tools/r8/internal/Oa0;->j:Z

    if-nez v2, :cond_2

    iget-object v3, v1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object v4, p1, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v4, v4, Lcom/android/tools/r8/dex/s0;->h:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v2, v2, Lcom/android/tools/r8/dex/s0;->e:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method
