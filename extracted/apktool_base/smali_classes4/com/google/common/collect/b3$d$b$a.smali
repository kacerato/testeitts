.class public Lcom/google/common/collect/b3$d$b$a;
.super Lcom/google/common/collect/Q1$B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/b3$d$b;->keySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Q1$B<",
        "Lcom/google/common/collect/j2<",
        "TK;>;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/collect/b3$d$b;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/b3$d$b;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/b3$d$b$a;->c:Lcom/google/common/collect/b3$d$b;

    invoke-direct {p0, p2}, Lcom/google/common/collect/Q1$B;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/b3$d$b$a;->c:Lcom/google/common/collect/b3$d$b;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/b3$d$b;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/b3$d$b$a;->c:Lcom/google/common/collect/b3$d$b;

    invoke-static {p1}, Lw2/J;->n(Ljava/util/Collection;)Lw2/I;

    move-result-object p1

    invoke-static {p1}, Lw2/J;->q(Lw2/I;)Lw2/I;

    move-result-object p1

    invoke-static {}, Lcom/google/common/collect/Q1;->R()Lw2/t;

    move-result-object v1

    invoke-static {p1, v1}, Lw2/J;->h(Lw2/I;Lw2/t;)Lw2/I;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/b3$d$b;->a(Lcom/google/common/collect/b3$d$b;Lw2/I;)Z

    move-result p1

    return p1
.end method
