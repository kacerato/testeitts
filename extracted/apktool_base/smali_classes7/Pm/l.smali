.class public LPm/l;
.super LWm/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LPm/l$a;
    }
.end annotation


# instance fields
.field public final a:LUm/q;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LWm/a;-><init>()V

    new-instance v0, LUm/q;

    invoke-direct {v0}, LUm/q;-><init>()V

    iput-object v0, p0, LPm/l;->a:LUm/q;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LPm/l;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, LPm/l;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(LWm/h;)LWm/c;
    .locals 2

    invoke-interface {p1}, LWm/h;->d()I

    move-result v0

    sget v1, LTm/d;->k:I

    if-lt v0, v1, :cond_0

    invoke-interface {p1}, LWm/h;->getColumn()I

    move-result p1

    sget v0, LTm/d;->k:I

    add-int/2addr p1, v0

    invoke-static {p1}, LWm/c;->a(I)LWm/c;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, LWm/h;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, LWm/h;->c()I

    move-result p1

    invoke-static {p1}, LWm/c;->b(I)LWm/c;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, LWm/c;->d()LWm/c;

    move-result-object p1

    return-object p1
.end method

.method public g()V
    .locals 4

    iget-object v0, p0, LPm/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, LPm/l;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, LTm/d;->f(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v3, v0, 0x1

    if-ge v2, v3, :cond_2

    iget-object v3, p0, LPm/l;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LPm/l;->a:LUm/q;

    invoke-virtual {v1, v0}, LUm/q;->r(Ljava/lang/String;)V

    return-void
.end method

.method public getBlock()LUm/b;
    .locals 1

    iget-object v0, p0, LPm/l;->a:LUm/q;

    return-object v0
.end method
