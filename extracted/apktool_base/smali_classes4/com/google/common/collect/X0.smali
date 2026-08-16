.class public final Lcom/google/common/collect/X0;
.super Lcom/google/common/collect/f;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/f<",
        "TE;>;"
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
    serializable = true
.end annotation


# static fields
.field public static final g:J
    .annotation build Lv2/c;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/f;-><init>(I)V

    return-void
.end method

.method public static m()Lcom/google/common/collect/X0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/X0<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/common/collect/X0;->n(I)Lcom/google/common/collect/X0;

    move-result-object v0

    return-object v0
.end method

.method public static n(I)Lcom/google/common/collect/X0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/X0<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/X0;

    invoke-direct {v0, p0}, Lcom/google/common/collect/X0;-><init>(I)V

    return-object v0
.end method

.method public static o(Ljava/lang/Iterable;)Lcom/google/common/collect/X0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/X0<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/W1;->l(Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/X0;->n(I)Lcom/google/common/collect/X0;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/common/collect/D1;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method


# virtual methods
.method public bridge synthetic S1()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/i;->S1()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/common/collect/i;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/i;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/i;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public j(I)Lcom/google/common/collect/d2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/d2<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/d2;

    invoke-direct {v0, p1}, Lcom/google/common/collect/d2;-><init>(I)V

    return-object v0
.end method
