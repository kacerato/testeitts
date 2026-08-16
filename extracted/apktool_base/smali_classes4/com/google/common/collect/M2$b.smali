.class public Lcom/google/common/collect/M2$b;
.super Lcom/google/common/collect/M2$a;
.source "SourceFile"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/M2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/M2$a<",
        "TE;>;",
        "Ljava/util/NavigableSet<",
        "TE;>;"
    }
.end annotation

.annotation build Lv2/c;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/common/collect/K2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/K2<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/collect/M2$a;-><init>(Lcom/google/common/collect/K2;)V

    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/M2$a;->h()Lcom/google/common/collect/K2;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/x;->CLOSED:Lcom/google/common/collect/x;

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/K2;->Jd(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/K2;->firstEntry()Lcom/google/common/collect/V1$a;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/M2;->b(Lcom/google/common/collect/V1$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/M2$b;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/M2$b;

    invoke-virtual {p0}, Lcom/google/common/collect/M2$a;->h()Lcom/google/common/collect/K2;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/K2;->P6()Lcom/google/common/collect/K2;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/M2$b;-><init>(Lcom/google/common/collect/K2;)V

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/M2$a;->h()Lcom/google/common/collect/K2;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/x;->CLOSED:Lcom/google/common/collect/x;

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/K2;->B7(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/K2;->lastEntry()Lcom/google/common/collect/V1$a;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/M2;->b(Lcom/google/common/collect/V1$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/M2$b;

    invoke-virtual {p0}, Lcom/google/common/collect/M2$a;->h()Lcom/google/common/collect/K2;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/collect/x;->b(Z)Lcom/google/common/collect/x;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/K2;->B7(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/common/collect/M2$b;-><init>(Lcom/google/common/collect/K2;)V

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/M2$a;->h()Lcom/google/common/collect/K2;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/x;->OPEN:Lcom/google/common/collect/x;

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/K2;->Jd(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/K2;->firstEntry()Lcom/google/common/collect/V1$a;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/M2;->b(Lcom/google/common/collect/V1$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/M2$a;->h()Lcom/google/common/collect/K2;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/x;->OPEN:Lcom/google/common/collect/x;

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/K2;->B7(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/K2;->lastEntry()Lcom/google/common/collect/V1$a;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/M2;->b(Lcom/google/common/collect/V1$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/M2$a;->h()Lcom/google/common/collect/K2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/K2;->pollFirstEntry()Lcom/google/common/collect/V1$a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/M2;->b(Lcom/google/common/collect/V1$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/M2$a;->h()Lcom/google/common/collect/K2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/K2;->pollLastEntry()Lcom/google/common/collect/V1$a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/M2;->b(Lcom/google/common/collect/V1$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/M2$b;

    invoke-virtual {p0}, Lcom/google/common/collect/M2$a;->h()Lcom/google/common/collect/K2;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/collect/x;->b(Z)Lcom/google/common/collect/x;

    move-result-object p2

    invoke-static {p4}, Lcom/google/common/collect/x;->b(Z)Lcom/google/common/collect/x;

    move-result-object p4

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/google/common/collect/K2;->dc(Ljava/lang/Object;Lcom/google/common/collect/x;Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/common/collect/M2$b;-><init>(Lcom/google/common/collect/K2;)V

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/M2$b;

    invoke-virtual {p0}, Lcom/google/common/collect/M2$a;->h()Lcom/google/common/collect/K2;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/collect/x;->b(Z)Lcom/google/common/collect/x;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/K2;->Jd(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/common/collect/M2$b;-><init>(Lcom/google/common/collect/K2;)V

    return-object v0
.end method
