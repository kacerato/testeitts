.class public Lk5/d$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk5/d;->r(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk5/d;


# direct methods
.method public constructor <init>(Lk5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lk5/d$s;->a:Lk5/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/content/Context;LM7/e;)V
    .locals 5
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

    new-instance p2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v0, p0, Lk5/d$s;->a:Lk5/d;

    iget-object v0, v0, Lk5/d;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk5/d$D;

    if-nez v1, :cond_0

    new-instance v1, Ldd/b;

    invoke-direct {v1}, Ldd/b;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Ldd/b;

    iget-object v3, v1, Lk5/d$D;->a:Ljava/lang/String;

    new-instance v4, Lk5/d$s$a;

    invoke-direct {v4, p0, v1, p3}, Lk5/d$s$a;-><init>(Lk5/d$s;Lk5/d$D;LM7/e;)V

    invoke-direct {v2, v3, v4}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object p3, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {p1, p3, p2}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    return-void
.end method
