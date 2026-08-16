.class public Lcom/google/common/collect/m1$b;
.super Lcom/google/common/collect/e3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/m1;->M()Lcom/google/common/collect/e3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/e3<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Lcom/google/common/collect/c1<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lcom/google/common/collect/m1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/m1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/m1$b;->d:Lcom/google/common/collect/m1;

    invoke-direct {p0}, Lcom/google/common/collect/e3;-><init>()V

    iget-object p1, p1, Lcom/google/common/collect/m1;->g:Lcom/google/common/collect/i1;

    invoke-virtual {p1}, Lcom/google/common/collect/i1;->L()Lcom/google/common/collect/c1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/c1;->i()Lcom/google/common/collect/e3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/m1$b;->b:Ljava/util/Iterator;

    invoke-static {}, Lcom/google/common/collect/E1;->u()Lcom/google/common/collect/e3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/m1$b;->c:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/m1$b;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/m1$b;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/m1$b;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/m1$b;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/c1;

    invoke-virtual {v0}, Lcom/google/common/collect/c1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/m1$b;->c:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/m1$b;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
