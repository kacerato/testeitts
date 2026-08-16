.class public LVm/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LVm/d$c;,
        LVm/d$b;
    }
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

.field public final c:LVm/c;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LVm/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LVm/d$b;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, LVm/d$b;->a(LVm/d$b;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, LVm/d$b;->b(LVm/d$b;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, LPm/h;->k(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LVm/d;->a:Ljava/util/List;

    .line 4
    invoke-static {p1}, LVm/d$b;->c(LVm/d$b;)LVm/c;

    move-result-object v0

    iput-object v0, p0, LVm/d;->c:LVm/c;

    .line 5
    invoke-static {p1}, LVm/d$b;->d(LVm/d$b;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LVm/d;->d:Ljava/util/List;

    .line 6
    invoke-static {p1}, LVm/d$b;->e(LVm/d$b;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LVm/d;->b:Ljava/util/List;

    .line 7
    new-instance v1, LPm/m;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, p1, v2}, LPm/m;-><init>(Ljava/util/List;Ljava/util/Map;)V

    .line 9
    invoke-interface {v0, v1}, LVm/c;->a(LVm/b;)LVm/a;

    return-void
.end method

.method public synthetic constructor <init>(LVm/d$b;LVm/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LVm/d;-><init>(LVm/d$b;)V

    return-void
.end method

.method public static a()LVm/d$b;
    .locals 1

    new-instance v0, LVm/d$b;

    invoke-direct {v0}, LVm/d$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final b()LPm/h;
    .locals 4

    new-instance v0, LPm/h;

    iget-object v1, p0, LVm/d;->a:Ljava/util/List;

    iget-object v2, p0, LVm/d;->c:LVm/c;

    iget-object v3, p0, LVm/d;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, LPm/h;-><init>(Ljava/util/List;LVm/c;Ljava/util/List;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;)LUm/v;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LVm/d;->b()LPm/h;

    move-result-object v0

    invoke-virtual {v0, p1}, LPm/h;->u(Ljava/lang/String;)LUm/i;

    move-result-object p1

    invoke-virtual {p0, p1}, LVm/d;->e(LUm/v;)LUm/v;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "input must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/io/Reader;)LUm/v;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LVm/d;->b()LPm/h;

    move-result-object v0

    invoke-virtual {v0, p1}, LPm/h;->t(Ljava/io/Reader;)LUm/i;

    move-result-object p1

    invoke-virtual {p0, p1}, LVm/d;->e(LUm/v;)LUm/v;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "input must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(LUm/v;)LUm/v;
    .locals 2

    iget-object v0, p0, LVm/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LVm/e;

    invoke-interface {v1, p1}, LVm/e;->a(LUm/v;)LUm/v;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method
