.class public final Lcom/google/common/util/concurrent/ServiceManager$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/ServiceManager$f$d;,
        Lcom/google/common/util/concurrent/ServiceManager$f$c;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/util/concurrent/f0;

.field public final b:Lcom/google/common/collect/C2;
    .annotation build LJ2/a;
        value = "monitor"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/C2<",
            "Lcom/google/common/util/concurrent/p0$b;",
            "Lcom/google/common/util/concurrent/p0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/google/common/collect/V1;
    .annotation build LJ2/a;
        value = "monitor"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/V1<",
            "Lcom/google/common/util/concurrent/p0$b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation build LJ2/a;
        value = "monitor"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/common/util/concurrent/p0;",
            "Lw2/O;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z
    .annotation build LJ2/a;
        value = "monitor"
    .end annotation
.end field

.field public f:Z
    .annotation build LJ2/a;
        value = "monitor"
    .end annotation
.end field

.field public final g:I

.field public final h:Lcom/google/common/util/concurrent/f0$a;

.field public final i:Lcom/google/common/util/concurrent/f0$a;

.field public final j:Lcom/google/common/util/concurrent/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/c0<",
            "Lcom/google/common/util/concurrent/ServiceManager$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/c1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c1<",
            "Lcom/google/common/util/concurrent/p0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/common/util/concurrent/f0;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/f0;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    const-class v0, Lcom/google/common/util/concurrent/p0$b;

    invoke-static {v0}, Lcom/google/common/collect/T1;->c(Ljava/lang/Class;)Lcom/google/common/collect/T1$k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/T1$k;->g()Lcom/google/common/collect/T1$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/T1$l;->j()Lcom/google/common/collect/C2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->b:Lcom/google/common/collect/C2;

    invoke-interface {v0}, Lcom/google/common/collect/S1;->j()Lcom/google/common/collect/V1;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->c:Lcom/google/common/collect/V1;

    invoke-static {}, Lcom/google/common/collect/Q1;->b0()Ljava/util/IdentityHashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->d:Ljava/util/Map;

    new-instance v1, Lcom/google/common/util/concurrent/ServiceManager$f$c;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/ServiceManager$f$c;-><init>(Lcom/google/common/util/concurrent/ServiceManager$f;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->h:Lcom/google/common/util/concurrent/f0$a;

    new-instance v1, Lcom/google/common/util/concurrent/ServiceManager$f$d;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/ServiceManager$f$d;-><init>(Lcom/google/common/util/concurrent/ServiceManager$f;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->i:Lcom/google/common/util/concurrent/f0$a;

    new-instance v1, Lcom/google/common/util/concurrent/c0;

    invoke-direct {v1}, Lcom/google/common/util/concurrent/c0;-><init>()V

    iput-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->j:Lcom/google/common/util/concurrent/c0;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    iput v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->g:I

    sget-object v1, Lcom/google/common/util/concurrent/p0$b;->NEW:Lcom/google/common/util/concurrent/p0$b;

    invoke-interface {v0, v1, p1}, Lcom/google/common/collect/S1;->Z(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/util/concurrent/ServiceManager$c;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->j:Lcom/google/common/util/concurrent/c0;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/c0;->b(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->h:Lcom/google/common/util/concurrent/f0$a;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/f0;->q(Lcom/google/common/util/concurrent/f0$a;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$f;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f0;->D()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/f0;->D()V

    throw v0
.end method

.method public c(JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f0;->g()V

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->h:Lcom/google/common/util/concurrent/f0$a;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/common/util/concurrent/f0;->N(Lcom/google/common/util/concurrent/f0$a;JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$f;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/f0;->D()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    iget-object p2, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->b:Lcom/google/common/collect/C2;

    sget-object p3, Lcom/google/common/util/concurrent/p0$b;->NEW:Lcom/google/common/util/concurrent/p0$b;

    sget-object v0, Lcom/google/common/util/concurrent/p0$b;->STARTING:Lcom/google/common/util/concurrent/p0$b;

    invoke-static {p3, v0}, Lcom/google/common/collect/r1;->B(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/r1;

    move-result-object p3

    invoke-static {p3}, Lw2/J;->n(Ljava/util/Collection;)Lw2/I;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/google/common/collect/U1;->n(Lcom/google/common/collect/C2;Lw2/I;)Lcom/google/common/collect/C2;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x5d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Timeout waiting for the services to become healthy. The following services have not started: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p2, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {p2}, Lcom/google/common/util/concurrent/f0;->D()V

    throw p1
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->i:Lcom/google/common/util/concurrent/f0$a;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/f0;->q(Lcom/google/common/util/concurrent/f0$a;)V

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f0;->D()V

    return-void
.end method

.method public e(JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f0;->g()V

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->i:Lcom/google/common/util/concurrent/f0$a;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/common/util/concurrent/f0;->N(Lcom/google/common/util/concurrent/f0$a;JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/f0;->D()V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    iget-object p2, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->b:Lcom/google/common/collect/C2;

    sget-object p3, Lcom/google/common/util/concurrent/p0$b;->TERMINATED:Lcom/google/common/util/concurrent/p0$b;

    sget-object v0, Lcom/google/common/util/concurrent/p0$b;->FAILED:Lcom/google/common/util/concurrent/p0$b;

    invoke-static {p3, v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p3

    invoke-static {p3}, Lw2/J;->n(Ljava/util/Collection;)Lw2/I;

    move-result-object p3

    invoke-static {p3}, Lw2/J;->q(Lw2/I;)Lw2/I;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/google/common/collect/U1;->n(Lcom/google/common/collect/C2;Lw2/I;)Lcom/google/common/collect/C2;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x53

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Timeout waiting for the services to stop. The following services have not stopped: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {p2}, Lcom/google/common/util/concurrent/f0;->D()V

    throw p1
.end method

.method public f()V
    .locals 4
    .annotation build LJ2/a;
        value = "monitor"
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->c:Lcom/google/common/collect/V1;

    sget-object v1, Lcom/google/common/util/concurrent/p0$b;->RUNNING:Lcom/google/common/util/concurrent/p0$b;

    invoke-interface {v0, v1}, Lcom/google/common/collect/V1;->Ad(Ljava/lang/Object;)I

    move-result v0

    iget v2, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->g:I

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->b:Lcom/google/common/collect/C2;

    invoke-static {v1}, Lw2/J;->m(Ljava/lang/Object;)Lw2/I;

    move-result-object v1

    invoke-static {v1}, Lw2/J;->q(Lw2/I;)Lw2/I;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/common/collect/U1;->n(Lcom/google/common/collect/C2;Lw2/I;)Lcom/google/common/collect/C2;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Expected to be healthy after starting. The following services are not running: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f0;->B()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "It is incorrect to execute listeners with the monitor held."

    invoke-static {v0, v1}, Lw2/H;->h0(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->j:Lcom/google/common/util/concurrent/c0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/c0;->c()V

    return-void
.end method

.method public h(Lcom/google/common/util/concurrent/p0;)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->j:Lcom/google/common/util/concurrent/c0;

    new-instance v1, Lcom/google/common/util/concurrent/ServiceManager$f$b;

    invoke-direct {v1, p0, p1}, Lcom/google/common/util/concurrent/ServiceManager$f$b;-><init>(Lcom/google/common/util/concurrent/ServiceManager$f;Lcom/google/common/util/concurrent/p0;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/c0;->d(Lcom/google/common/util/concurrent/c0$a;)V

    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->j:Lcom/google/common/util/concurrent/c0;

    invoke-static {}, Lcom/google/common/util/concurrent/ServiceManager;->d()Lcom/google/common/util/concurrent/c0$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/c0;->d(Lcom/google/common/util/concurrent/c0$a;)V

    return-void
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->j:Lcom/google/common/util/concurrent/c0;

    invoke-static {}, Lcom/google/common/util/concurrent/ServiceManager;->c()Lcom/google/common/util/concurrent/c0$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/c0;->d(Lcom/google/common/util/concurrent/c0$a;)V

    return-void
.end method

.method public k()V
    .locals 5

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f0;->g()V

    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f0;->D()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/common/collect/M1;->q()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$f;->l()Lcom/google/common/collect/s1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/m1;->O()Lcom/google/common/collect/c1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/c1;->i()Lcom/google/common/collect/e3;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/p0;

    invoke-interface {v2}, Lcom/google/common/util/concurrent/p0;->state()Lcom/google/common/util/concurrent/p0$b;

    move-result-object v3

    sget-object v4, Lcom/google/common/util/concurrent/p0$b;->NEW:Lcom/google/common/util/concurrent/p0$b;

    if-eq v3, v4, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x59

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Services started transitioning asynchronously before the ServiceManager was constructed: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/f0;->D()V

    throw v0
.end method

.method public l()Lcom/google/common/collect/s1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/s1<",
            "Lcom/google/common/util/concurrent/p0$b;",
            "Lcom/google/common/util/concurrent/p0;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/s1;->P()Lcom/google/common/collect/s1$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/f0;->g()V

    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->b:Lcom/google/common/collect/C2;

    invoke-interface {v1}, Lcom/google/common/collect/C2;->v()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/common/util/concurrent/ServiceManager$d;

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/common/collect/s1$a;->q(Ljava/util/Map$Entry;)Lcom/google/common/collect/s1$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/f0;->D()V

    invoke-virtual {v0}, Lcom/google/common/collect/s1$a;->l()Lcom/google/common/collect/s1;

    move-result-object v0

    return-object v0

    :goto_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/f0;->D()V

    throw v0
.end method

.method public m()Lcom/google/common/collect/i1;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/i1<",
            "Lcom/google/common/util/concurrent/p0;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f0;->g()V

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/M1;->u(I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/util/concurrent/p0;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw2/O;

    invoke-virtual {v2}, Lw2/O;->i()Z

    move-result v4

    if-nez v4, :cond_0

    instance-of v4, v3, Lcom/google/common/util/concurrent/ServiceManager$d;

    if-nez v4, :cond_0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4}, Lw2/O;->g(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/common/collect/Q1;->O(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/f0;->D()V

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v1

    new-instance v2, Lcom/google/common/util/concurrent/ServiceManager$f$a;

    invoke-direct {v2, p0}, Lcom/google/common/util/concurrent/ServiceManager$f$a;-><init>(Lcom/google/common/util/concurrent/ServiceManager$f;)V

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Ordering;->E(Lw2/t;)Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v0}, Lcom/google/common/collect/i1;->m(Ljava/lang/Iterable;)Lcom/google/common/collect/i1;

    move-result-object v0

    return-object v0

    :goto_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/f0;->D()V

    throw v0
.end method

.method public n(Lcom/google/common/util/concurrent/p0;Lcom/google/common/util/concurrent/p0$b;Lcom/google/common/util/concurrent/p0$b;)V
    .locals 4

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-eq p2, p3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lw2/H;->d(Z)V

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/f0;->g()V

    :try_start_0
    iput-boolean v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->f:Z

    iget-boolean v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/f0;->D()V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$f;->g()V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->b:Lcom/google/common/collect/C2;

    invoke-interface {v0, p2, p1}, Lcom/google/common/collect/S1;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Service %s not at the expected location in the state map %s"

    invoke-static {v0, v1, p1, p2}, Lw2/H;->B0(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->b:Lcom/google/common/collect/C2;

    invoke-interface {p2, p3, p1}, Lcom/google/common/collect/S1;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "Service %s in the state map unexpectedly at %s"

    invoke-static {p2, v0, p1, p3}, Lw2/H;->B0(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->d:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lw2/O;

    if-nez p2, :cond_2

    invoke-static {}, Lw2/O;->c()Lw2/O;

    move-result-object p2

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    sget-object v0, Lcom/google/common/util/concurrent/p0$b;->RUNNING:Lcom/google/common/util/concurrent/p0$b;

    invoke-virtual {p3, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_3

    invoke-virtual {p2}, Lw2/O;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lw2/O;->l()Lw2/O;

    instance-of v1, p1, Lcom/google/common/util/concurrent/ServiceManager$d;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/google/common/util/concurrent/ServiceManager;->b()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Started {0} in {1}."

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, v2, v3, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    sget-object p2, Lcom/google/common/util/concurrent/p0$b;->FAILED:Lcom/google/common/util/concurrent/p0$b;

    if-ne p3, p2, :cond_4

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/ServiceManager$f;->h(Lcom/google/common/util/concurrent/p0;)V

    :cond_4
    iget-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->c:Lcom/google/common/collect/V1;

    invoke-interface {p1, v0}, Lcom/google/common/collect/V1;->Ad(Ljava/lang/Object;)I

    move-result p1

    iget p3, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->g:I

    if-ne p1, p3, :cond_5

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$f;->i()V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->c:Lcom/google/common/collect/V1;

    sget-object p3, Lcom/google/common/util/concurrent/p0$b;->TERMINATED:Lcom/google/common/util/concurrent/p0$b;

    invoke-interface {p1, p3}, Lcom/google/common/collect/V1;->Ad(Ljava/lang/Object;)I

    move-result p1

    iget-object p3, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->c:Lcom/google/common/collect/V1;

    invoke-interface {p3, p2}, Lcom/google/common/collect/V1;->Ad(Ljava/lang/Object;)I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->g:I

    if-ne p1, p2, :cond_6

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$f;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/f0;->D()V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$f;->g()V

    return-void

    :goto_3
    iget-object p2, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {p2}, Lcom/google/common/util/concurrent/f0;->D()V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$f;->g()V

    throw p1
.end method

.method public o(Lcom/google/common/util/concurrent/p0;)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f0;->g()V

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw2/O;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->d:Ljava/util/Map;

    invoke-static {}, Lw2/O;->c()Lw2/O;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/f0;->D()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f0;->D()V

    throw p1
.end method
