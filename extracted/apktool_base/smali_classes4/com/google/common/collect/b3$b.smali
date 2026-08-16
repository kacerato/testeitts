.class public final Lcom/google/common/collect/b3$b;
.super Lcom/google/common/collect/Q1$A;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/b3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Q1$A<",
        "Lcom/google/common/collect/j2<",
        "TK;>;TV;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/j2<",
            "TK;>;TV;>;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lcom/google/common/collect/b3;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/b3;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/collect/b3$c<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/b3$b;->c:Lcom/google/common/collect/b3;

    invoke-direct {p0}, Lcom/google/common/collect/Q1$A;-><init>()V

    iput-object p2, p0, Lcom/google/common/collect/b3$b;->b:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/common/collect/b3$b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/j2<",
            "TK;>;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/b3$b;->b:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    instance-of v0, p1, Lcom/google/common/collect/j2;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/j2;

    iget-object v0, p0, Lcom/google/common/collect/b3$b;->c:Lcom/google/common/collect/b3;

    invoke-static {v0}, Lcom/google/common/collect/b3;->b(Lcom/google/common/collect/b3;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/b3$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/common/collect/b3$c;->e()Lcom/google/common/collect/j2;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/common/collect/j2;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/google/common/collect/b3$c;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/b3$b;->c:Lcom/google/common/collect/b3;

    invoke-static {v0}, Lcom/google/common/collect/b3;->b(Lcom/google/common/collect/b3;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
