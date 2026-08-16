.class public Lj5/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj5/a;->r(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:LG4/c;

.field public final synthetic b:Lj5/a;


# direct methods
.method public constructor <init>(Lj5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lj5/a$d;->b:Lj5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iget-object p3, p0, Lj5/a$d;->b:Lj5/a;

    invoke-static {p3}, Lj5/a;->I(Lj5/a;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    move-result-object p3

    if-eqz p3, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance p3, Lj5/a$d$a;

    invoke-direct {p3, p0}, Lj5/a$d$a;-><init>(Lj5/a$d;)V

    const/4 v0, 0x0

    invoke-static {p2, v0, p3}, LF5/c;->b(Landroid/content/Context;Ljava/lang/String;LF5/a;)LC5/b;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lr4/a$e;->Below:Lr4/a$e;

    new-instance v4, Lj5/a$d$b;

    invoke-direct {v4, p0}, Lj5/a$d$b;-><init>(Lj5/a$d;)V

    const/16 p2, 0x132

    invoke-static {p2}, LN7/c;->g(I)F

    move-result v5

    const/16 p2, 0xc8

    invoke-static {p2}, LN7/c;->f(I)F

    move-result v6

    const/4 v8, 0x1

    const/4 v9, 0x1

    const-string v2, "Brush"

    const/4 v7, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lr4/a;->e(Landroid/view/View;Ljava/util/List;Ljava/lang/String;Lr4/a$e;LG4/d;FFZZZ)LG4/c;

    move-result-object p1

    iput-object p1, p0, Lj5/a$d;->a:LG4/c;

    iget-object p1, p1, LG4/c;->Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-static {p1}, LF5/c;->Y(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "NO HPOP"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
