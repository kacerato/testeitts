.class public Lcom/google/common/collect/q1$b$b;
.super Lcom/google/common/collect/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/q1$b;->a0()Lcom/google/common/collect/e3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c<",
        "TC;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field public e:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TC;>;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/google/common/collect/q1$b;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/q1$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/q1$b$b;->f:Lcom/google/common/collect/q1$b;

    invoke-direct {p0}, Lcom/google/common/collect/c;-><init>()V

    iget-object p1, p1, Lcom/google/common/collect/q1$b;->k:Lcom/google/common/collect/q1;

    invoke-static {p1}, Lcom/google/common/collect/q1;->q(Lcom/google/common/collect/q1;)Lcom/google/common/collect/g1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/g1;->L()Lcom/google/common/collect/g1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/g1;->i()Lcom/google/common/collect/e3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/q1$b$b;->d:Ljava/util/Iterator;

    invoke-static {}, Lcom/google/common/collect/E1;->u()Lcom/google/common/collect/e3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/q1$b$b;->e:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/q1$b$b;->e()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/q1$b$b;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/q1$b$b;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/q1$b$b;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/j2;

    iget-object v1, p0, Lcom/google/common/collect/q1$b$b;->f:Lcom/google/common/collect/q1$b;

    invoke-static {v1}, Lcom/google/common/collect/q1$b;->z0(Lcom/google/common/collect/q1$b;)Lcom/google/common/collect/W;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/O;->E0(Lcom/google/common/collect/j2;Lcom/google/common/collect/W;)Lcom/google/common/collect/O;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/x1;->a0()Lcom/google/common/collect/e3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/q1$b$b;->e:Ljava/util/Iterator;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/q1$b$b;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method
