.class public Lan/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lan/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lan/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lan/d$b;->a:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lan/d$b;->b:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lan/d$b;)Z
    .locals 0

    iget-boolean p0, p0, Lan/d$b;->a:Z

    return p0
.end method

.method public static synthetic b(Lan/d$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lan/d$b;->b:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public c()Lan/d;
    .locals 2

    new-instance v0, Lan/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lan/d;-><init>(Lan/d$b;Lan/d$a;)V

    return-object v0
.end method

.method public d(Ljava/lang/Iterable;)Lan/d$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LMm/a;",
            ">;)",
            "Lan/d$b;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMm/a;

    instance-of v1, v0, Lan/d$d;

    if-eqz v1, :cond_0

    check-cast v0, Lan/d$d;

    invoke-interface {v0, p0}, Lan/d$d;->a(Lan/d$b;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public e(Lan/c;)Lan/d$b;
    .locals 1

    iget-object v0, p0, Lan/d$b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public f(Z)Lan/d$b;
    .locals 0

    iput-boolean p1, p0, Lan/d$b;->a:Z

    return-object p0
.end method
