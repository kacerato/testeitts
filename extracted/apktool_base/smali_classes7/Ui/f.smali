.class public LUi/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LUi/c;


# instance fields
.field public a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 4

    invoke-static {p1}, LUi/e;->k([B)[J

    move-result-object p1

    iget-object v0, p0, LUi/f;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    invoke-static {p1, v0}, LUi/e;->c([J[J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, LUi/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(J[B)V
    .locals 6

    invoke-static {}, LUi/e;->I()[J

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    const-wide/16 v4, 0x1

    and-long/2addr v4, p1

    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, LUi/f;->c(I)[J

    move-result-object v2

    invoke-static {v0, v2}, LUi/e;->t([J[J)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    ushr-long/2addr p1, v2

    goto :goto_0

    :cond_1
    invoke-static {v0, p3}, LUi/e;->e([J[B)V

    return-void
.end method

.method public final c(I)[J
    .locals 3

    iget-object v0, p0, LUi/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v0, p1, :cond_1

    iget-object v1, p0, LUi/f;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [J

    invoke-static {v1, v2}, LUi/e;->K([J[J)V

    iget-object v1, p0, LUi/f;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    if-lt v0, p1, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, v2

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, LUi/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    return-object p1
.end method
