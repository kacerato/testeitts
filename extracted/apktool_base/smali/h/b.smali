.class public Lh/b;
.super Lh/a;
.source "SourceFile"


# instance fields
.field public o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lh/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lh/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lh/b;->o:Ljava/util/Set;

    .line 4
    invoke-virtual {p0}, Lh/b;->s()V

    return-void
.end method


# virtual methods
.method public getCheckedTogglePositions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lh/b;->o:Ljava/util/Set;

    return-object v0
.end method

.method public j(I)Z
    .locals 1

    iget-object v0, p0, Lh/b;->o:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public o(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lh/b;->j(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lh/b;->setUncheckedTogglePosition(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lh/b;->setCheckedTogglePosition(I)V

    :goto_0
    return-void
.end method

.method public final r(ZI)V
    .locals 1

    invoke-virtual {p0, p2}, Lh/a;->l(I)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0}, Lh/b;->j(I)Z

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lh/a;->i(I)Li/a;

    move-result-object p1

    invoke-virtual {p1}, Li/a;->e()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lh/a;->i(I)Li/a;

    move-result-object p1

    invoke-virtual {p1}, Li/a;->d()V

    :goto_0
    return-void
.end method

.method public final s()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lh/a;->getNumButtons()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lh/b;->j(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lh/a;->a(I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lh/b;->r(ZI)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lh/a;->e(I)V

    invoke-virtual {p0, v0, v1}, Lh/b;->r(ZI)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCheckedTogglePosition(I)V
    .locals 2

    iget-object v0, p0, Lh/b;->o:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lh/b;->s()V

    invoke-virtual {p0, p1}, Lh/a;->n(I)V

    return-void
.end method

.method public setUncheckedTogglePosition(I)V
    .locals 2

    iget-object v0, p0, Lh/b;->o:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lh/b;->s()V

    invoke-virtual {p0, p1}, Lh/a;->n(I)V

    return-void
.end method
