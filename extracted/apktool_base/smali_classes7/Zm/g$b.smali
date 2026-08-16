.class public LZm/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZm/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LZm/c;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LZm/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\n"

    iput-object v0, p0, LZm/g$b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, LZm/g$b;->b:Z

    iput-boolean v0, p0, LZm/g$b;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LZm/g$b;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LZm/g$b;->e:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(LZm/g$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LZm/g$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(LZm/g$b;)Z
    .locals 0

    iget-boolean p0, p0, LZm/g$b;->b:Z

    return p0
.end method

.method public static synthetic c(LZm/g$b;)Z
    .locals 0

    iget-boolean p0, p0, LZm/g$b;->c:Z

    return p0
.end method

.method public static synthetic d(LZm/g$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LZm/g$b;->d:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic e(LZm/g$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LZm/g$b;->e:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public f(LZm/c;)LZm/g$b;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, LZm/g$b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "attributeProviderFactory must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g()LZm/g;
    .locals 2

    new-instance v0, LZm/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LZm/g;-><init>(LZm/g$b;LZm/g$a;)V

    return-object v0
.end method

.method public h(Z)LZm/g$b;
    .locals 0

    iput-boolean p1, p0, LZm/g$b;->b:Z

    return-object p0
.end method

.method public i(Ljava/lang/Iterable;)LZm/g$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LMm/a;",
            ">;)",
            "LZm/g$b;"
        }
    .end annotation

    if-eqz p1, :cond_2

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

    instance-of v1, v0, LZm/g$c;

    if-eqz v1, :cond_0

    check-cast v0, LZm/g$c;

    invoke-interface {v0, p0}, LZm/g$c;->b(LZm/g$b;)V

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "extensions must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(LZm/f;)LZm/g$b;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, LZm/g$b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "nodeRendererFactory must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(Z)LZm/g$b;
    .locals 0

    iput-boolean p1, p0, LZm/g$b;->c:Z

    return-object p0
.end method

.method public l(Ljava/lang/String;)LZm/g$b;
    .locals 0

    iput-object p1, p0, LZm/g$b;->a:Ljava/lang/String;

    return-object p0
.end method
