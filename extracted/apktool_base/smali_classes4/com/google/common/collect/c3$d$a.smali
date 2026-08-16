.class public Lcom/google/common/collect/c3$d$a;
.super Lcom/google/common/collect/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/c3$d;->e()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c<",
        "Ljava/util/Map$Entry<",
        "Lcom/google/common/collect/Q<",
        "TC;>;",
        "Lcom/google/common/collect/j2<",
        "TC;>;>;>;"
    }
.end annotation


# instance fields
.field public d:Lcom/google/common/collect/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Q<",
            "TC;>;"
        }
    .end annotation
.end field

.field public final synthetic e:Lcom/google/common/collect/Q;

.field public final synthetic f:Lcom/google/common/collect/g2;

.field public final synthetic g:Lcom/google/common/collect/c3$d;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/c3$d;Lcom/google/common/collect/Q;Lcom/google/common/collect/g2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/c3$d$a;->g:Lcom/google/common/collect/c3$d;

    iput-object p2, p0, Lcom/google/common/collect/c3$d$a;->e:Lcom/google/common/collect/Q;

    iput-object p3, p0, Lcom/google/common/collect/c3$d$a;->f:Lcom/google/common/collect/g2;

    invoke-direct {p0}, Lcom/google/common/collect/c;-><init>()V

    iput-object p2, p0, Lcom/google/common/collect/c3$d$a;->d:Lcom/google/common/collect/Q;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/c3$d$a;->e()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/Q<",
            "TC;>;",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/c3$d$a;->g:Lcom/google/common/collect/c3$d;

    invoke-static {v0}, Lcom/google/common/collect/c3$d;->j(Lcom/google/common/collect/c3$d;)Lcom/google/common/collect/j2;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    iget-object v1, p0, Lcom/google/common/collect/c3$d$a;->d:Lcom/google/common/collect/Q;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Q;->m(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/c3$d$a;->d:Lcom/google/common/collect/Q;

    invoke-static {}, Lcom/google/common/collect/Q;->a()Lcom/google/common/collect/Q;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/c3$d$a;->f:Lcom/google/common/collect/g2;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/c3$d$a;->f:Lcom/google/common/collect/g2;

    invoke-interface {v0}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/j2;

    iget-object v1, p0, Lcom/google/common/collect/c3$d$a;->d:Lcom/google/common/collect/Q;

    iget-object v2, v0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-static {v1, v2}, Lcom/google/common/collect/j2;->k(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Lcom/google/common/collect/j2;

    move-result-object v1

    iget-object v0, v0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    iput-object v0, p0, Lcom/google/common/collect/c3$d$a;->d:Lcom/google/common/collect/Q;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/c3$d$a;->d:Lcom/google/common/collect/Q;

    invoke-static {}, Lcom/google/common/collect/Q;->a()Lcom/google/common/collect/Q;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/j2;->k(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Lcom/google/common/collect/j2;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Q;->a()Lcom/google/common/collect/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/c3$d$a;->d:Lcom/google/common/collect/Q;

    :goto_0
    iget-object v0, v1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-static {v0, v1}, Lcom/google/common/collect/Q1;->O(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/collect/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
