.class public LZm/g$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZm/e;
.implements LZm/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZm/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:LZm/h;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LZm/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:LRm/a;

.field public final synthetic d:LZm/g;


# direct methods
.method public constructor <init>(LZm/g;LZm/h;)V
    .locals 2

    .line 2
    iput-object p1, p0, LZm/g$d;->d:LZm/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, LRm/a;

    invoke-direct {v0}, LRm/a;-><init>()V

    iput-object v0, p0, LZm/g$d;->c:LRm/a;

    .line 4
    iput-object p2, p0, LZm/g$d;->a:LZm/h;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1}, LZm/g;->e(LZm/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, LZm/g$d;->b:Ljava/util/List;

    .line 6
    invoke-static {p1}, LZm/g;->e(LZm/g;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZm/c;

    .line 7
    iget-object v1, p0, LZm/g$d;->b:Ljava/util/List;

    invoke-interface {v0, p0}, LZm/c;->a(LZm/b;)LZm/a;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, LZm/g;->f(LZm/g;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_1

    .line 9
    invoke-static {p1}, LZm/g;->f(LZm/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZm/f;

    .line 10
    invoke-interface {v0, p0}, LZm/f;->a(LZm/e;)LYm/a;

    move-result-object v0

    .line 11
    iget-object v1, p0, LZm/g$d;->c:LRm/a;

    invoke-virtual {v1, v0}, LRm/a;->a(LYm/a;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(LZm/g;LZm/h;LZm/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LZm/g$d;-><init>(LZm/g;LZm/h;)V

    return-void
.end method


# virtual methods
.method public a(LUm/v;)V
    .locals 1

    iget-object v0, p0, LZm/g$d;->c:LRm/a;

    invoke-virtual {v0, p1}, LRm/a;->b(LUm/v;)V

    return-void
.end method

.method public b()LZm/h;
    .locals 1

    iget-object v0, p0, LZm/g$d;->a:LZm/h;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LZm/g$d;->d:LZm/g;

    invoke-static {v0}, LZm/g;->d(LZm/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LZm/g$d;->d:LZm/g;

    invoke-static {v0}, LZm/g;->c(LZm/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, LTm/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, LZm/g$d;->d:LZm/g;

    invoke-static {v0}, LZm/g;->g(LZm/g;)Z

    move-result v0

    return v0
.end method

.method public f(LUm/v;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LUm/v;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, p2, v0}, LZm/g$d;->g(LUm/v;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public final g(LUm/v;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LUm/v;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LZm/g$d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LZm/a;

    invoke-interface {v1, p1, p2, p3}, LZm/a;->a(LUm/v;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method
