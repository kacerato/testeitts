.class public LXd/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/t;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lee/t;

.field public final c:Ljava/lang/Object;

.field public transient d:Lke/c;

.field public transient e:LSd/f;


# direct methods
.method public constructor <init>(Lee/t;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LXd/C;->d:Lke/c;

    .line 3
    iput-object v0, p0, LXd/C;->e:LSd/f;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, LXd/C;->b:Lee/t;

    .line 6
    iput-object p0, p0, LXd/C;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lee/t;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, LXd/C;->d:Lke/c;

    .line 9
    iput-object v0, p0, LXd/C;->e:LSd/f;

    .line 10
    iput-object p1, p0, LXd/C;->b:Lee/t;

    .line 11
    iput-object p2, p0, LXd/C;->c:Ljava/lang/Object;

    return-void
.end method

.method private b(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LXd/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public A(D)Z
    .locals 2

    iget-object v0, p0, LXd/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/C;->b:Lee/t;

    invoke-interface {v1, p1, p2}, Lee/t;->A(D)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public B(Lhe/I;)Z
    .locals 2

    iget-object v0, p0, LXd/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/C;->b:Lee/t;

    invoke-interface {v1, p1}, Lee/t;->B(Lhe/I;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Dc(DFF)F
    .locals 2

    iget-object v0, p0, LXd/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/C;->b:Lee/t;

    invoke-interface {v1, p1, p2, p3, p4}, Lee/t;->Dc(DFF)F

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public K2(DF)F
    .locals 2

    iget-object v0, p0, LXd/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/C;->b:Lee/t;

    invoke-interface {v1, p1, p2, p3}, Lee/t;->K2(DF)F

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Ra(DF)Z
    .locals 2

    iget-object v0, p0, LXd/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/C;->b:Lee/t;

    invoke-interface {v1, p1, p2, p3}, Lee/t;->Ra(DF)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Sb(Lee/t;)V
    .locals 2

    iget-object v0, p0, LXd/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/C;->b:Lee/t;

    invoke-interface {v1, p1}, Lee/t;->Sb(Lee/t;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public U(F)Z
    .locals 2

    iget-object v0, p0, LXd/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/C;->b:Lee/t;

    invoke-interface {v1, p1}, Lee/t;->U(F)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public W([D)[D
    .locals 2

    iget-object v0, p0, LXd/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/C;->b:Lee/t;

    invoke-interface {v1, p1}, Lee/t;->W([D)[D

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public X6(Lhe/v;)Z
    .locals 2

    iget-object v0, p0, LXd/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/C;->b:Lee/t;

    invoke-interface {v1, p1}, Lee/t;->X6(Lhe/v;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(D)F
    .locals 2

    iget-object v0, p0, LXd/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/C;->b:Lee/t;

    invoke-interface {v1, p1, p2}, Lee/t;->a(D)F

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b9(DF)F
    .locals 2

    iget-object v0, p0, LXd/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/C;->b:Lee/t;

    invoke-interface {v1, p1, p2, p3}, Lee/t;->b9(DF)F

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c0([F)[F
    .locals 2

    iget-object v0, p0, LXd/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/C;->b:Lee/t;

    invoke-interface {v1, p1}, Lee/t;->c0([F)[F

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, LXd/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/C;->b:Lee/t;

    invoke-interface {v1}, Lee/t;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, LXd/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/C;->b:Lee/t;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, LXd/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/C;->b:Lee/t;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public i()F
    .locals 1

    iget-object v0, p0, LXd/C;->b:Lee/t;

    invoke-interface {v0}, Lee/t;->i()F

    move-result v0

    return v0
.end method

.method public increment(D)Z
    .locals 2

    iget-object v0, p0, LXd/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/C;->b:Lee/t;

    invoke-interface {v1, p1, p2}, Lee/t;->increment(D)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, LXd/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/C;->b:Lee/t;

    invoke-interface {v1}, Lee/t;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public iterator()LZd/w;
    .locals 1

    iget-object v0, p0, LXd/C;->b:Lee/t;

    invoke-interface {v0}, Lee/t;->iterator()LZd/w;

    move-result-object v0

    return-object v0
.end method

.method public j()[D
    .locals 2

    iget-object v0, p0, LXd/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/C;->b:Lee/t;

    invoke-interface {v1}, Lee/t;->j()[D

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public k()LSd/f;
    .locals 4

    iget-object v0, p0, LXd/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/C;->e:LSd/f;

    if-nez v1, :cond_0

    new-instance v1, LXd/L;

    iget-object v2, p0, LXd/C;->b:Lee/t;

    invoke-interface {v2}, Lee/t;->k()LSd/f;

    move-result-object v2

    iget-object v3, p0, LXd/C;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, LXd/L;-><init>(LSd/f;Ljava/lang/Object;)V

    iput-object v1, p0, LXd/C;->e:LSd/f;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LXd/C;->e:LSd/f;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public k0(Lhe/z;)Z
    .locals 2

    iget-object v0, p0, LXd/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/C;->b:Lee/t;

    invoke-interface {v1, p1}, Lee/t;->k0(Lhe/z;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public keySet()Lke/c;
    .locals 4

    iget-object v0, p0, LXd/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/C;->d:Lke/c;

    if-nez v1, :cond_0

    new-instance v1, LXd/H;

    iget-object v2, p0, LXd/C;->b:Lee/t;

    invoke-interface {v2}, Lee/t;->keySet()Lke/c;

    move-result-object v2

    iget-object v3, p0, LXd/C;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, LXd/H;-><init>(Lke/c;Ljava/lang/Object;)V

    iput-object v1, p0, LXd/C;->d:Lke/c;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LXd/C;->d:Lke/c;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public l()D
    .locals 2

    iget-object v0, p0, LXd/C;->b:Lee/t;

    invoke-interface {v0}, Lee/t;->l()D

    move-result-wide v0

    return-wide v0
.end method

.method public n(LUd/d;)V
    .locals 2

    iget-object v0, p0, LXd/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/C;->b:Lee/t;

    invoke-interface {v1, p1}, Lee/t;->n(LUd/d;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public p0(D)F
    .locals 2

    iget-object v0, p0, LXd/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/C;->b:Lee/t;

    invoke-interface {v1, p1, p2}, Lee/t;->p0(D)F

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Double;",
            "+",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LXd/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/C;->b:Lee/t;

    invoke-interface {v1, p1}, Lee/t;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public q9(Lhe/v;)Z
    .locals 2

    iget-object v0, p0, LXd/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/C;->b:Lee/t;

    invoke-interface {v1, p1}, Lee/t;->q9(Lhe/v;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, LXd/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/C;->b:Lee/t;

    invoke-interface {v1}, Lee/t;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LXd/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/C;->b:Lee/t;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public values()[F
    .locals 2

    iget-object v0, p0, LXd/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/C;->b:Lee/t;

    invoke-interface {v1}, Lee/t;->values()[F

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
