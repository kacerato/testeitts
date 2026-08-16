.class public Lcom/google/common/collect/o$a;
.super Lcom/google/common/collect/V;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/o;->h()Lcom/google/common/collect/K2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/V<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/common/collect/o;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/o$a;->e:Lcom/google/common/collect/o;

    invoke-direct {p0}, Lcom/google/common/collect/V;-><init>()V

    return-void
.end method


# virtual methods
.method public P0()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/o$a;->e:Lcom/google/common/collect/o;

    invoke-virtual {v0}, Lcom/google/common/collect/o;->j()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public Q0()Lcom/google/common/collect/K2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/K2<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/o$a;->e:Lcom/google/common/collect/o;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/o$a;->e:Lcom/google/common/collect/o;

    invoke-virtual {v0}, Lcom/google/common/collect/o;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
