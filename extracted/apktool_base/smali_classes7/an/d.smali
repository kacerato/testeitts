.class public Lan/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYm/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lan/d$c;,
        Lan/d$d;,
        Lan/d$b;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lan/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lan/d$b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lan/d$b;->a(Lan/d$b;)Z

    move-result v0

    iput-boolean v0, p0, Lan/d;->a:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lan/d$b;->b(Lan/d$b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lan/d;->b:Ljava/util/List;

    .line 5
    invoke-static {p1}, Lan/d$b;->b(Lan/d$b;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    new-instance p1, Lan/d$a;

    invoke-direct {p1, p0}, Lan/d$a;-><init>(Lan/d;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic constructor <init>(Lan/d$b;Lan/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lan/d;-><init>(Lan/d$b;)V

    return-void
.end method

.method public static synthetic c(Lan/d;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lan/d;->b:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic d(Lan/d;)Z
    .locals 0

    iget-boolean p0, p0, Lan/d;->a:Z

    return p0
.end method

.method public static e()Lan/d$b;
    .locals 1

    new-instance v0, Lan/d$b;

    invoke-direct {v0}, Lan/d$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(LUm/v;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, v0}, Lan/d;->b(LUm/v;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(LUm/v;Ljava/lang/Appendable;)V
    .locals 2

    new-instance v0, Lan/d$c;

    new-instance v1, Lan/e;

    invoke-direct {v1, p2}, Lan/e;-><init>(Ljava/lang/Appendable;)V

    const/4 p2, 0x0

    invoke-direct {v0, p0, v1, p2}, Lan/d$c;-><init>(Lan/d;Lan/e;Lan/d$a;)V

    invoke-virtual {v0, p1}, Lan/d$c;->a(LUm/v;)V

    return-void
.end method
