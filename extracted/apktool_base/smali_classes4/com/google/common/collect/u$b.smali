.class public Lcom/google/common/collect/u$b;
.super Lcom/google/common/collect/T2$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/u;->v(I)Lcom/google/common/collect/S2$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/T2$b<",
        "TR;TC;TV;>;"
    }
.end annotation


# instance fields
.field public final b:I

.field public final c:I

.field public final synthetic d:I

.field public final synthetic e:Lcom/google/common/collect/u;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/u;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/u$b;->e:Lcom/google/common/collect/u;

    iput p2, p0, Lcom/google/common/collect/u$b;->d:I

    invoke-direct {p0}, Lcom/google/common/collect/T2$b;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/u;->h(Lcom/google/common/collect/u;)Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    div-int v0, p2, v0

    iput v0, p0, Lcom/google/common/collect/u$b;->b:I

    invoke-static {p1}, Lcom/google/common/collect/u;->h(Lcom/google/common/collect/u;)Lcom/google/common/collect/g1;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    rem-int/2addr p2, p1

    iput p2, p0, Lcom/google/common/collect/u$b;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u$b;->e:Lcom/google/common/collect/u;

    invoke-static {v0}, Lcom/google/common/collect/u;->h(Lcom/google/common/collect/u;)Lcom/google/common/collect/g1;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/u$b;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u$b;->e:Lcom/google/common/collect/u;

    invoke-static {v0}, Lcom/google/common/collect/u;->i(Lcom/google/common/collect/u;)Lcom/google/common/collect/g1;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/u$b;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u$b;->e:Lcom/google/common/collect/u;

    iget v1, p0, Lcom/google/common/collect/u$b;->b:I

    iget v2, p0, Lcom/google/common/collect/u$b;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/u;->m(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
