.class public LZm/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYm/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZm/g$d;,
        LZm/g$c;,
        LZm/g$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LZm/c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LZm/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LZm/g$b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, LZm/g$b;->a(LZm/g$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LZm/g;->a:Ljava/lang/String;

    .line 4
    invoke-static {p1}, LZm/g$b;->b(LZm/g$b;)Z

    move-result v0

    iput-boolean v0, p0, LZm/g;->b:Z

    .line 5
    invoke-static {p1}, LZm/g$b;->c(LZm/g$b;)Z

    move-result v0

    iput-boolean v0, p0, LZm/g;->c:Z

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, LZm/g$b;->d(LZm/g$b;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LZm/g;->d:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, LZm/g$b;->e(LZm/g$b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, LZm/g;->e:Ljava/util/List;

    .line 8
    invoke-static {p1}, LZm/g$b;->e(LZm/g$b;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    new-instance p1, LZm/g$a;

    invoke-direct {p1, p0}, LZm/g$a;-><init>(LZm/g;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic constructor <init>(LZm/g$b;LZm/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LZm/g;-><init>(LZm/g$b;)V

    return-void
.end method

.method public static synthetic c(LZm/g;)Z
    .locals 0

    iget-boolean p0, p0, LZm/g;->c:Z

    return p0
.end method

.method public static synthetic d(LZm/g;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LZm/g;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e(LZm/g;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LZm/g;->d:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic f(LZm/g;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LZm/g;->e:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic g(LZm/g;)Z
    .locals 0

    iget-boolean p0, p0, LZm/g;->b:Z

    return p0
.end method

.method public static h()LZm/g$b;
    .locals 1

    new-instance v0, LZm/g$b;

    invoke-direct {v0}, LZm/g$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(LUm/v;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, v0}, LZm/g;->b(LUm/v;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "node must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(LUm/v;Ljava/lang/Appendable;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, LZm/g$d;

    new-instance v1, LZm/h;

    invoke-direct {v1, p2}, LZm/h;-><init>(Ljava/lang/Appendable;)V

    const/4 p2, 0x0

    invoke-direct {v0, p0, v1, p2}, LZm/g$d;-><init>(LZm/g;LZm/h;LZm/g$a;)V

    invoke-virtual {v0, p1}, LZm/g$d;->a(LUm/v;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "node must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
