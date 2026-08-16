.class public Lcom/google/common/collect/S$d$a;
.super Lcom/google/common/collect/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/S$d;->N()Lcom/google/common/collect/e3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public d:I

.field public final e:I

.field public final synthetic f:Lcom/google/common/collect/S$d;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/S$d;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/S$d$a;->f:Lcom/google/common/collect/S$d;

    invoke-direct {p0}, Lcom/google/common/collect/c;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/S$d$a;->d:I

    invoke-virtual {p1}, Lcom/google/common/collect/S$d;->R()Lcom/google/common/collect/i1;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/S$d$a;->e:I

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/S$d$a;->e()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget v0, p0, Lcom/google/common/collect/S$d$a;->d:I

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/S$d$a;->d:I

    iget v0, p0, Lcom/google/common/collect/S$d$a;->d:I

    iget v1, p0, Lcom/google/common/collect/S$d$a;->e:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/S$d$a;->f:Lcom/google/common/collect/S$d;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/S$d;->P(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/S$d$a;->f:Lcom/google/common/collect/S$d;

    iget v2, p0, Lcom/google/common/collect/S$d$a;->d:I

    invoke-virtual {v1, v2}, Lcom/google/common/collect/S$d;->O(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Q1;->O(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/S$d$a;->d:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
