.class public final Lcom/google/common/collect/Q$c;
.super Lcom/google/common/collect/Q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/common/collect/Q<",
        "TC;>;"
    }
.end annotation


# static fields
.field public static final d:J


# direct methods
.method public constructor <init>(Ljava/lang/Comparable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Q;-><init>(Ljava/lang/Comparable;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/common/collect/Q;

    invoke-super {p0, p1}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result p1

    return p1
.end method

.method public e(Lcom/google/common/collect/W;)Lcom/google/common/collect/Q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/W<",
            "TC;>;)",
            "Lcom/google/common/collect/Q<",
            "TC;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Q$c;->o(Lcom/google/common/collect/W;)Ljava/lang/Comparable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/common/collect/Q;->d(Ljava/lang/Comparable;)Lcom/google/common/collect/Q;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/Q;->a()Lcom/google/common/collect/Q;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public h(Ljava/lang/StringBuilder;)V
    .locals 1

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/common/collect/Q;->b:Ljava/lang/Comparable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/Q;->b:Ljava/lang/Comparable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    not-int v0, v0

    return v0
.end method

.method public i(Ljava/lang/StringBuilder;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/Q;->b:Ljava/lang/Comparable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public k(Lcom/google/common/collect/W;)Ljava/lang/Comparable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/W<",
            "TC;>;)TC;"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/common/collect/Q;->b:Ljava/lang/Comparable;

    return-object p1
.end method

.method public m(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Q;->b:Ljava/lang/Comparable;

    invoke-static {v0, p1}, Lcom/google/common/collect/j2;->h(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public o(Lcom/google/common/collect/W;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/W<",
            "TC;>;)TC;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Q;->b:Ljava/lang/Comparable;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/W;->g(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public q()Lcom/google/common/collect/x;
    .locals 1

    sget-object v0, Lcom/google/common/collect/x;->OPEN:Lcom/google/common/collect/x;

    return-object v0
.end method

.method public r()Lcom/google/common/collect/x;
    .locals 1

    sget-object v0, Lcom/google/common/collect/x;->CLOSED:Lcom/google/common/collect/x;

    return-object v0
.end method

.method public s(Lcom/google/common/collect/x;Lcom/google/common/collect/W;)Lcom/google/common/collect/Q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/x;",
            "Lcom/google/common/collect/W<",
            "TC;>;)",
            "Lcom/google/common/collect/Q<",
            "TC;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/Q$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    iget-object p1, p0, Lcom/google/common/collect/Q;->b:Ljava/lang/Comparable;

    invoke-virtual {p2, p1}, Lcom/google/common/collect/W;->g(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/google/common/collect/Q;->c()Lcom/google/common/collect/Q;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/google/common/collect/Q;->d(Ljava/lang/Comparable;)Lcom/google/common/collect/Q;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/Q;->b:Ljava/lang/Comparable;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\\"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lcom/google/common/collect/x;Lcom/google/common/collect/W;)Lcom/google/common/collect/Q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/x;",
            "Lcom/google/common/collect/W<",
            "TC;>;)",
            "Lcom/google/common/collect/Q<",
            "TC;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/Q$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/common/collect/Q;->b:Ljava/lang/Comparable;

    invoke-virtual {p2, p1}, Lcom/google/common/collect/W;->g(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/common/collect/Q;->a()Lcom/google/common/collect/Q;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/Q;->d(Ljava/lang/Comparable;)Lcom/google/common/collect/Q;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    return-object p0
.end method
