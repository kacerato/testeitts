.class public abstract Lcom/google/common/collect/P1$b;
.super Lcom/google/common/collect/s0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/P1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/s0<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final h:J = 0x3L


# instance fields
.field public final b:Lcom/google/common/collect/P1$q;

.field public final c:Lcom/google/common/collect/P1$q;

.field public final d:Lw2/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lw2/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final f:I

.field public transient g:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/P1$q;Lcom/google/common/collect/P1$q;Lw2/m;Lw2/m;ILjava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1$q;",
            "Lcom/google/common/collect/P1$q;",
            "Lw2/m<",
            "Ljava/lang/Object;",
            ">;",
            "Lw2/m<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/s0;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/P1$b;->b:Lcom/google/common/collect/P1$q;

    iput-object p2, p0, Lcom/google/common/collect/P1$b;->c:Lcom/google/common/collect/P1$q;

    iput-object p3, p0, Lcom/google/common/collect/P1$b;->d:Lw2/m;

    iput-object p4, p0, Lcom/google/common/collect/P1$b;->e:Lw2/m;

    iput p5, p0, Lcom/google/common/collect/P1$b;->f:I

    iput-object p6, p0, Lcom/google/common/collect/P1$b;->g:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public B0()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/P1$b;->g:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public C0(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/P1$b;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public D0(Ljava/io/ObjectInputStream;)Lcom/google/common/collect/O1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p1

    new-instance v0, Lcom/google/common/collect/O1;

    invoke-direct {v0}, Lcom/google/common/collect/O1;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/common/collect/O1;->g(I)Lcom/google/common/collect/O1;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/P1$b;->b:Lcom/google/common/collect/P1$q;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/O1;->j(Lcom/google/common/collect/P1$q;)Lcom/google/common/collect/O1;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/P1$b;->c:Lcom/google/common/collect/P1$q;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/O1;->k(Lcom/google/common/collect/P1$q;)Lcom/google/common/collect/O1;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/P1$b;->d:Lw2/m;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/O1;->h(Lw2/m;)Lcom/google/common/collect/O1;

    move-result-object p1

    iget v0, p0, Lcom/google/common/collect/P1$b;->f:I

    invoke-virtual {p1, v0}, Lcom/google/common/collect/O1;->a(I)Lcom/google/common/collect/O1;

    move-result-object p1

    return-object p1
.end method

.method public E0(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/P1$b;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/google/common/collect/P1$b;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic k0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/P1$b;->B0()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m0()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/P1$b;->B0()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method
