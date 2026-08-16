.class public Lcom/google/common/collect/M$d;
.super Lcom/google/common/collect/i$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/i<",
        "TE;>.b;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/collect/M;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/M;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/M$d;->c:Lcom/google/common/collect/M;

    invoke-direct {p0, p1}, Lcom/google/common/collect/i$b;-><init>(Lcom/google/common/collect/i;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/M;Lcom/google/common/collect/M$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/M$d;-><init>(Lcom/google/common/collect/M;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/common/collect/V1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/M$d;->h()Lcom/google/common/collect/M;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/google/common/collect/M;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/M<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/M$d;->c:Lcom/google/common/collect/M;

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/i$b;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/M1;->v(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/i$b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/E1;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/M$d;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/M$d;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
