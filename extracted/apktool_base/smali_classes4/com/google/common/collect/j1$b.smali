.class public final Lcom/google/common/collect/j1$b;
.super Lcom/google/common/collect/j1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/j1<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final transient g:Lcom/google/common/collect/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/i1<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final transient h:Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/i1;Lcom/google/common/collect/g1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/i1<",
            "TK;TV;>;",
            "Lcom/google/common/collect/g1<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/j1;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/collect/j1$b;->g:Lcom/google/common/collect/i1;

    .line 4
    iput-object p2, p0, Lcom/google/common/collect/j1$b;->h:Lcom/google/common/collect/g1;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/i1;[Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/i1<",
            "TK;TV;>;[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/common/collect/g1;->k([Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/j1$b;-><init>(Lcom/google/common/collect/i1;Lcom/google/common/collect/g1;)V

    return-void
.end method


# virtual methods
.method public H()Lcom/google/common/collect/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/i1<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/j1$b;->g:Lcom/google/common/collect/i1;

    return-object v0
.end method

.method public b([Ljava/lang/Object;I)I
    .locals 1
    .annotation build Lv2/c;
        value = "not used in GWT"
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/j1$b;->h:Lcom/google/common/collect/g1;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/g1;->b([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public i()Lcom/google/common/collect/e3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/j1$b;->h:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Lcom/google/common/collect/g1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/j1$b;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public x()Lcom/google/common/collect/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/j1$b;->h:Lcom/google/common/collect/g1;

    return-object v0
.end method
