.class public Lcom/google/common/collect/c3$e$b;
.super Lcom/google/common/collect/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/c3$e;->i()Ljava/util/Iterator;
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
.field public final synthetic d:Lcom/google/common/collect/g2;

.field public final synthetic e:Lcom/google/common/collect/c3$e;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/c3$e;Lcom/google/common/collect/g2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/c3$e$b;->e:Lcom/google/common/collect/c3$e;

    iput-object p2, p0, Lcom/google/common/collect/c3$e$b;->d:Lcom/google/common/collect/g2;

    invoke-direct {p0}, Lcom/google/common/collect/c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/c3$e$b;->e()Ljava/util/Map$Entry;

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

    iget-object v0, p0, Lcom/google/common/collect/c3$e$b;->d:Lcom/google/common/collect/g2;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/c3$e$b;->d:Lcom/google/common/collect/g2;

    invoke-interface {v0}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/j2;

    iget-object v1, p0, Lcom/google/common/collect/c3$e$b;->e:Lcom/google/common/collect/c3$e;

    invoke-static {v1}, Lcom/google/common/collect/c3$e;->j(Lcom/google/common/collect/c3$e;)Lcom/google/common/collect/j2;

    move-result-object v1

    iget-object v1, v1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    iget-object v2, v0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Q;->m(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-static {v1, v0}, Lcom/google/common/collect/Q1;->O(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_0
    return-object v0
.end method
