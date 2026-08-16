.class public Lj5/b$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj5/b;->o(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj5/b;


# direct methods
.method public constructor <init>(Lj5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lj5/b$n;->a:Lj5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Ljava/util/List;LM7/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entries",
            "tbButton"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LC5/b;",
            ">;",
            "LM7/c;",
            ")V"
        }
    .end annotation

    new-instance p2, LC5/b;

    new-instance v0, Lj5/b$n$b;

    invoke-direct {v0, p0}, Lj5/b$n$b;-><init>(Lj5/b$n;)V

    const-string v1, "Automatic"

    sget-object v2, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {p2, v0, v1, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, LC5/b;

    new-instance v0, Lj5/b$n$c;

    invoke-direct {v0, p0}, Lj5/b$n$c;-><init>(Lj5/b$n;)V

    const-string v1, "Level height"

    sget-object v2, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {p2, v0, v1, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "tbButton"
        }
    .end annotation

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-direct {p0, v1, p3}, Lj5/b$n;->b(Ljava/util/List;LM7/c;)V

    iget-object p2, p0, Lj5/b$n;->a:Lj5/b;

    sget-object v3, Lr4/a$e;->Right:Lr4/a$e;

    new-instance v4, Lj5/b$n$a;

    invoke-direct {v4, p0}, Lj5/b$n$a;-><init>(Lj5/b$n;)V

    const/16 p3, 0xa0

    invoke-static {p3}, LN7/c;->g(I)F

    move-result v5

    const/16 p3, 0x46

    invoke-static {p3}, LN7/c;->f(I)F

    move-result v6

    const/4 v8, 0x1

    const/4 v9, 0x1

    const-string v2, "Layer"

    const/4 v7, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lr4/a;->e(Landroid/view/View;Ljava/util/List;Ljava/lang/String;Lr4/a$e;LG4/d;FFZZZ)LG4/c;

    move-result-object p1

    invoke-static {p2, p1}, Lj5/b;->K(Lj5/b;LG4/c;)LG4/c;

    return-void
.end method
