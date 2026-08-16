.class public Lk6/a;
.super LH7/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk6/a$e;,
        Lk6/a$h;,
        Lk6/a$g;,
        Lk6/a$f;
    }
.end annotation


# instance fields
.field public g:Lk6/a$e;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Lk6/a$e;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "elements",
            "context",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LH7/a;",
            ">;",
            "Landroid/content/Context;",
            "Lk6/a$e;",
            ")V"
        }
    .end annotation

    new-instance v0, Lk6/a$a;

    invoke-direct {v0}, Lk6/a$a;-><init>()V

    invoke-direct {p0, p1, p2, v0}, LH7/d;-><init>(Ljava/util/List;Landroid/content/Context;LH7/d$c;)V

    iput-object p3, p0, Lk6/a;->g:Lk6/a$e;

    new-instance p1, Lk6/a$b;

    const p2, 0x7f0c0170

    invoke-direct {p1, p0, p2}, Lk6/a$b;-><init>(Lk6/a;I)V

    new-instance p2, Lk6/a$c;

    const p3, 0x7f0c00a9

    invoke-direct {p2, p0, p3}, Lk6/a$c;-><init>(Lk6/a;I)V

    new-instance p3, Lk6/a$d;

    const v0, 0x7f0c0118

    invoke-direct {p3, p0, v0}, Lk6/a$d;-><init>(Lk6/a;I)V

    iget-object v0, p0, LH7/d;->a:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LH7/d;->a:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LH7/d;->a:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LH7/d;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, LH7/d;->b:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, LH7/d;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, LH7/d;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_0

    iget-object p1, p0, LH7/d;->b:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LH7/d$b;

    iput v1, p1, LH7/d$b;->c:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic p(Lk6/a;)Lk6/a$e;
    .locals 0

    iget-object p0, p0, Lk6/a;->g:Lk6/a$e;

    return-object p0
.end method


# virtual methods
.method public q(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lj6/b;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    invoke-super {p0, v0}, LH7/d;->h(Ljava/util/List;)V

    return-void
.end method
