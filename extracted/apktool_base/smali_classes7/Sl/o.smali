.class public LSl/o;
.super LXi/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LSl/o$a;
    }
.end annotation


# instance fields
.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LSl/o$a;",
            ">;"
        }
    .end annotation
.end field

.field public d:LSl/p;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;LSl/l;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, LXi/c;-><init>(Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LSl/o;->c:Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p2, LSl/l;->j:I

    if-gt v2, v3, :cond_1

    new-instance v3, LSl/o$a;

    if-eqz v2, :cond_0

    move v4, v0

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-direct {v3, p1, p2, v4}, LSl/o$a;-><init>(Ljava/io/InputStream;LSl/l;Z)V

    invoke-virtual {p0, v3}, LSl/o;->d(LSl/o$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, LSl/p;

    invoke-virtual {p2}, LSl/l;->d()LSl/n;

    move-result-object p2

    invoke-direct {v0, p1, p2}, LSl/p;-><init>(Ljava/io/InputStream;LSl/n;)V

    iput-object v0, p0, LSl/o;->d:LSl/p;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;LSl/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LSl/o$a;",
            ">;",
            "LSl/p;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, LXi/c;-><init>(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LSl/o;->c:Ljava/util/List;

    iput-object p2, p0, LSl/o;->d:LSl/p;

    return-void
.end method

.method public constructor <init>([BLSl/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, p2}, LSl/o;-><init>(Ljava/io/InputStream;LSl/l;)V

    return-void
.end method


# virtual methods
.method public final d(LSl/o$a;)V
    .locals 1

    iget-object v0, p0, LSl/o;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(I)LSl/o$a;
    .locals 1

    iget-object v0, p0, LSl/o;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LSl/o$a;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, LSl/o;

    iget-object v2, p0, LSl/o;->c:Ljava/util/List;

    if-nez v2, :cond_3

    move v3, v0

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    iget-object v4, p1, LSl/o;->c:Ljava/util/List;

    if-nez v4, :cond_4

    move v4, v0

    goto :goto_1

    :cond_4
    move v4, v1

    :goto_1
    if-eq v3, v4, :cond_5

    return v1

    :cond_5
    if-nez v2, :cond_6

    return v0

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, LSl/o;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    move v2, v1

    :goto_2
    iget-object v3, p0, LSl/o;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    iget-object v3, p0, LSl/o;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LSl/o$a;

    iget-object v4, p1, LSl/o;->c:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LSl/o$a;

    iget-object v5, v3, LSl/o$a;->a:LYl/i;

    iget-object v6, v4, LSl/o$a;->a:LYl/i;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    return v1

    :cond_8
    iget-object v5, v3, LSl/o$a;->b:LYl/i;

    iget-object v6, v4, LSl/o$a;->b:LYl/i;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    return v1

    :cond_9
    if-eqz v2, :cond_a

    iget-object v5, v3, LSl/o$a;->c:LYl/e;

    iget-object v6, v4, LSl/o$a;->c:LYl/e;

    invoke-virtual {v5, v6}, LYl/e;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    return v1

    :cond_a
    iget-object v3, v3, LSl/o$a;->d:LSl/l;

    iget-object v4, v4, LSl/o$a;->d:LSl/l;

    invoke-virtual {v3, v4}, LSl/l;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    return v1

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_c
    return v0
.end method

.method public f()LSl/p;
    .locals 1

    iget-object v0, p0, LSl/o;->d:LSl/p;

    return-object v0
.end method

.method public g(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LSl/o;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public getEncoded()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, LSl/o;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, LSl/o;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LSl/o$a;

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, v0, v4}, LSl/o$a;->a(Ljava/io/OutputStream;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, LSl/o;->d:LSl/p;

    invoke-virtual {v1}, LSl/p;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, LSl/o;->c:Ljava/util/List;

    const/16 v1, 0x1f

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, LSl/o;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LSl/o$a;

    invoke-virtual {v2}, LSl/o$a;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method
