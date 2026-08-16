.class public Loi/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lth/l;",
            ">;"
        }
    .end annotation
.end field

.field public final b:[Lth/b;


# direct methods
.method public varargs constructor <init>([Lli/h;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Loi/d;->a:Ljava/util/List;

    array-length v0, p1

    new-array v0, v0, [Lth/b;

    iput-object v0, p0, Loi/d;->b:[Lth/b;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Loi/d;->b:[Lth/b;

    new-instance v2, Lth/b;

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lli/h;->x()Lhi/q;

    move-result-object v3

    invoke-direct {v2, v3}, Lth/b;-><init>(Lhi/q;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Loi/i;)Loi/d;
    .locals 1

    iget-object v0, p0, Loi/d;->a:Ljava/util/List;

    invoke-virtual {p1}, Loi/i;->e()Lth/l;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b()Loi/c;
    .locals 4

    iget-object v0, p0, Loi/d;->b:[Lth/b;

    array-length v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lth/j;

    iget-object v3, p0, Loi/d;->a:Ljava/util/List;

    new-array v2, v2, [Lth/l;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lth/l;

    invoke-direct {v1, v0, v2}, Lth/j;-><init>([Lth/b;[Lth/l;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lth/j;

    iget-object v0, p0, Loi/d;->a:Ljava/util/List;

    new-array v2, v2, [Lth/l;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lth/l;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lth/j;-><init>([Lth/b;[Lth/l;)V

    :goto_0
    iget-object v0, p0, Loi/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Loi/c;

    invoke-direct {v0, v1}, Loi/c;-><init>(Lth/j;)V

    return-object v0
.end method
