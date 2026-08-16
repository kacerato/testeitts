.class public Lge/H$c;
.super Lge/H$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lge/H$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lge/H<",
        "TK;TV;>.g<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lge/H;


# direct methods
.method public constructor <init>(Lge/H;)V
    .locals 1

    iput-object p1, p0, Lge/H$c;->c:Lge/H;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lge/H$g;-><init>(Lge/H;Lge/H$a;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lge/H$c;->e(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lge/H$c;->g(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public e(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lge/H$c;->c:Lge/H;

    invoke-virtual {p0, p1}, Lge/H$c;->f(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lge/H;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v0, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lge/H$c;->c:Lge/H;

    invoke-static {v1, v0, p1}, Lge/H;->Jf(Lge/H;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public f(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)TK;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lge/H$c;->f(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lge/H$c;->c:Lge/H;

    invoke-static {v2, v1}, Lge/H;->Hf(Lge/H;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {p0, p1}, Lge/H$c;->h(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    iget-object v2, p0, Lge/H$c;->c:Lge/H;

    iget-object v3, v2, Lge/H;->q:[Ljava/lang/Object;

    aget-object v3, v3, v1

    if-eq p1, v3, :cond_1

    if-eqz p1, :cond_2

    invoke-static {v2, p1, v3}, Lge/H;->If(Lge/H;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lge/H$c;->c:Lge/H;

    invoke-virtual {p1, v1}, Lge/H;->hf(I)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public h(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lge/H$c$a;

    iget-object v1, p0, Lge/H$c;->c:Lge/H;

    invoke-direct {v0, p0, v1}, Lge/H$c$a;-><init>(Lge/H$c;Lge/H;)V

    return-object v0
.end method
