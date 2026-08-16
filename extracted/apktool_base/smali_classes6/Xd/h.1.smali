.class public LXd/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/e;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lee/e;

.field public final c:Ljava/lang/Object;

.field public transient d:Lke/a;

.field public transient e:LSd/g;


# direct methods
.method public constructor <init>(Lee/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LXd/h;->d:Lke/a;

    .line 3
    iput-object v0, p0, LXd/h;->e:LSd/g;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, LXd/h;->b:Lee/e;

    .line 6
    iput-object p0, p0, LXd/h;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lee/e;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, LXd/h;->d:Lke/a;

    .line 9
    iput-object v0, p0, LXd/h;->e:LSd/g;

    .line 10
    iput-object p1, p0, LXd/h;->b:Lee/e;

    .line 11
    iput-object p2, p0, LXd/h;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LXd/h;->c:Ljava/lang/Object;

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
.method public D(B)Z
    .locals 2

    iget-object v0, p0, LXd/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/h;->b:Lee/e;

    invoke-interface {v1, p1}, Lee/e;->D(B)Z

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

.method public E0(B)Z
    .locals 2

    iget-object v0, p0, LXd/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/h;->b:Lee/e;

    invoke-interface {v1, p1}, Lee/e;->E0(B)Z

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

.method public Q(I)Z
    .locals 2

    iget-object v0, p0, LXd/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/h;->b:Lee/e;

    invoke-interface {v1, p1}, Lee/e;->Q(I)Z

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

.method public Vb(Lhe/e;)Z
    .locals 2

    iget-object v0, p0, LXd/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/h;->b:Lee/e;

    invoke-interface {v1, p1}, Lee/e;->Vb(Lhe/e;)Z

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

.method public X([B)[B
    .locals 2

    iget-object v0, p0, LXd/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/h;->b:Lee/e;

    invoke-interface {v1, p1}, Lee/e;->X([B)[B

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

.method public Y3(BI)I
    .locals 2

    iget-object v0, p0, LXd/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/h;->b:Lee/e;

    invoke-interface {v1, p1, p2}, Lee/e;->Y3(BI)I

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

.method public ac(Lee/e;)V
    .locals 2

    iget-object v0, p0, LXd/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/h;->b:Lee/e;

    invoke-interface {v1, p1}, Lee/e;->ac(Lee/e;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bc(Lhe/e;)Z
    .locals 2

    iget-object v0, p0, LXd/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/h;->b:Lee/e;

    invoke-interface {v1, p1}, Lee/e;->bc(Lhe/e;)Z

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

.method public ca(BI)I
    .locals 2

    iget-object v0, p0, LXd/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/h;->b:Lee/e;

    invoke-interface {v1, p1, p2}, Lee/e;->ca(BI)I

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

.method public clear()V
    .locals 2

    iget-object v0, p0, LXd/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/h;->b:Lee/e;

    invoke-interface {v1}, Lee/e;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e0([I)[I
    .locals 2

    iget-object v0, p0, LXd/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/h;->b:Lee/e;

    invoke-interface {v1, p1}, Lee/e;->e0([I)[I

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

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, LXd/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/h;->b:Lee/e;

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

.method public f(LUd/e;)V
    .locals 2

    iget-object v0, p0, LXd/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/h;->b:Lee/e;

    invoke-interface {v1, p1}, Lee/e;->f(LUd/e;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ge(BI)Z
    .locals 2

    iget-object v0, p0, LXd/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/h;->b:Lee/e;

    invoke-interface {v1, p1, p2}, Lee/e;->ge(BI)Z

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

    iget-object v0, p0, LXd/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/h;->b:Lee/e;

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

.method public i()I
    .locals 1

    iget-object v0, p0, LXd/h;->b:Lee/e;

    invoke-interface {v0}, Lee/e;->i()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, LXd/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/h;->b:Lee/e;

    invoke-interface {v1}, Lee/e;->isEmpty()Z

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

.method public iterator()LZd/f;
    .locals 1

    iget-object v0, p0, LXd/h;->b:Lee/e;

    invoke-interface {v0}, Lee/e;->iterator()LZd/f;

    move-result-object v0

    return-object v0
.end method

.method public j()[B
    .locals 2

    iget-object v0, p0, LXd/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/h;->b:Lee/e;

    invoke-interface {v1}, Lee/e;->j()[B

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

.method public k()LSd/g;
    .locals 4

    iget-object v0, p0, LXd/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/h;->e:LSd/g;

    if-nez v1, :cond_0

    new-instance v1, LXd/X;

    iget-object v2, p0, LXd/h;->b:Lee/e;

    invoke-interface {v2}, Lee/e;->k()LSd/g;

    move-result-object v2

    iget-object v3, p0, LXd/h;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, LXd/X;-><init>(LSd/g;Ljava/lang/Object;)V

    iput-object v1, p0, LXd/h;->e:LSd/g;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LXd/h;->e:LSd/g;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keySet()Lke/a;
    .locals 4

    iget-object v0, p0, LXd/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/h;->d:Lke/a;

    if-nez v1, :cond_0

    new-instance v1, LXd/l;

    iget-object v2, p0, LXd/h;->b:Lee/e;

    invoke-interface {v2}, Lee/e;->keySet()Lke/a;

    move-result-object v2

    iget-object v3, p0, LXd/h;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, LXd/l;-><init>(Lke/a;Ljava/lang/Object;)V

    iput-object v1, p0, LXd/h;->d:Lke/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LXd/h;->d:Lke/a;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public l()B
    .locals 1

    iget-object v0, p0, LXd/h;->b:Lee/e;

    invoke-interface {v0}, Lee/e;->l()B

    move-result v0

    return v0
.end method

.method public m(B)I
    .locals 2

    iget-object v0, p0, LXd/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/h;->b:Lee/e;

    invoke-interface {v1, p1}, Lee/e;->m(B)I

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

.method public m0(Lhe/S;)Z
    .locals 2

    iget-object v0, p0, LXd/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/h;->b:Lee/e;

    invoke-interface {v1, p1}, Lee/e;->m0(Lhe/S;)Z

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
            "Ljava/lang/Byte;",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LXd/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/h;->b:Lee/e;

    invoke-interface {v1, p1}, Lee/e;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public s0(B)I
    .locals 2

    iget-object v0, p0, LXd/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/h;->b:Lee/e;

    invoke-interface {v1, p1}, Lee/e;->s0(B)I

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

.method public s8(BII)I
    .locals 2

    iget-object v0, p0, LXd/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/h;->b:Lee/e;

    invoke-interface {v1, p1, p2, p3}, Lee/e;->s8(BII)I

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

    iget-object v0, p0, LXd/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/h;->b:Lee/e;

    invoke-interface {v1}, Lee/e;->size()I

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

    iget-object v0, p0, LXd/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/h;->b:Lee/e;

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

.method public values()[I
    .locals 2

    iget-object v0, p0, LXd/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/h;->b:Lee/e;

    invoke-interface {v1}, Lee/e;->values()[I

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

.method public w(Lhe/h;)Z
    .locals 2

    iget-object v0, p0, LXd/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/h;->b:Lee/e;

    invoke-interface {v1, p1}, Lee/e;->w(Lhe/h;)Z

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
