.class public LY5/b;
.super LH7/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LY5/b$d;,
        LY5/b$f;,
        LY5/b$e;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final g:LY5/b$d;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;LY5/b$d;)V
    .locals 2
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
            "LY5/b$d;",
            ")V"
        }
    .end annotation

    new-instance v0, LY5/b$a;

    invoke-direct {v0}, LY5/b$a;-><init>()V

    invoke-direct {p0, p1, p2, v0}, LH7/d;-><init>(Ljava/util/List;Landroid/content/Context;LH7/d$c;)V

    iput-object p3, p0, LY5/b;->g:LY5/b$d;

    new-instance p1, LY5/b$b;

    const p2, 0x7f0c0117

    invoke-direct {p1, p0, p2}, LY5/b$b;-><init>(LY5/b;I)V

    new-instance p2, LY5/b$c;

    const p3, 0x7f0c0118

    invoke-direct {p2, p0, p3}, LY5/b$c;-><init>(LY5/b;I)V

    iget-object p3, p0, LH7/d;->a:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, LH7/d;->a:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, LH7/d;->b:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, LH7/d;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, LH7/d;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_0

    iget-object p1, p0, LH7/d;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LH7/d$b;

    iput v0, p1, LH7/d$b;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic p(LY5/b;)LY5/b$d;
    .locals 0

    iget-object p0, p0, LY5/b;->g:LY5/b$d;

    return-object p0
.end method
