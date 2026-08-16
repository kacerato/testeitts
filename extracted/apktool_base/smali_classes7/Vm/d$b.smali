.class public LVm/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LVm/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LWm/e;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LXm/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LVm/e;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "LUm/b;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:LVm/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LVm/d$b;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LVm/d$b;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LVm/d$b;->c:Ljava/util/List;

    invoke-static {}, LPm/h;->r()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, LVm/d$b;->d:Ljava/util/Set;

    return-void
.end method

.method public static synthetic a(LVm/d$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LVm/d$b;->a:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(LVm/d$b;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, LVm/d$b;->d:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic c(LVm/d$b;)LVm/c;
    .locals 0

    invoke-virtual {p0}, LVm/d$b;->k()LVm/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(LVm/d$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LVm/d$b;->c:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic e(LVm/d$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LVm/d$b;->b:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public f()LVm/d;
    .locals 2

    new-instance v0, LVm/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LVm/d;-><init>(LVm/d$b;LVm/d$a;)V

    return-object v0
.end method

.method public g(LWm/e;)LVm/d$b;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, LVm/d$b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "blockParserFactory must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(LXm/a;)LVm/d$b;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, LVm/d$b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "delimiterProcessor must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(Ljava/util/Set;)LVm/d$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "LUm/b;",
            ">;>;)",
            "LVm/d$b;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, LVm/d$b;->d:Ljava/util/Set;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "enabledBlockTypes must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Ljava/lang/Iterable;)LVm/d$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LMm/a;",
            ">;)",
            "LVm/d$b;"
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

    instance-of v1, v0, LVm/d$c;

    if-eqz v1, :cond_0

    check-cast v0, LVm/d$c;

    invoke-interface {v0, p0}, LVm/d$c;->c(LVm/d$b;)V

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "extensions must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k()LVm/c;
    .locals 1

    iget-object v0, p0, LVm/d$b;->e:LVm/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, LVm/d$b$a;

    invoke-direct {v0, p0}, LVm/d$b$a;-><init>(LVm/d$b;)V

    return-object v0
.end method

.method public l(LVm/c;)LVm/d$b;
    .locals 0

    iput-object p1, p0, LVm/d$b;->e:LVm/c;

    return-object p0
.end method

.method public m(LVm/e;)LVm/d$b;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, LVm/d$b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "postProcessor must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
