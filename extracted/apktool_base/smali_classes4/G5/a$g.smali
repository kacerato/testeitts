.class public LG5/a$g;
.super Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LG5/a;->I(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
        "Ldd/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:LG5/a;


# direct methods
.method public constructor <init>(LG5/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LG5/a$g;->b:LG5/a;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v0, Ldd/b;

    new-instance v1, LG5/a$g$a;

    invoke-direct {v1, p0}, LG5/a$g$a;-><init>(LG5/a$g;)V

    const-string v2, "Use texture"

    invoke-direct {v0, v2, v1}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, LG5/a;->r(LG5/a;)LG5/a$k;

    move-result-object v0

    invoke-interface {v0}, LG5/a$k;->d()Z

    move-result v0

    const-string v1, "Use color"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ldd/b;

    new-instance v3, LG5/a$g$b;

    invoke-direct {v3, p0}, LG5/a$g$b;-><init>(LG5/a$g;)V

    invoke-direct {v0, v1, v3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ldd/b;

    invoke-direct {v0, v1, v2}, Ldd/b;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-static {p1}, LG5/a;->r(LG5/a;)LG5/a$k;

    move-result-object v0

    invoke-interface {v0}, LG5/a$k;->e()Z

    move-result v0

    const-string v1, "Use number"

    if-eqz v0, :cond_1

    new-instance v0, Ldd/b;

    new-instance v3, LG5/a$g$c;

    invoke-direct {v3, p0}, LG5/a$g$c;-><init>(LG5/a$g;)V

    invoke-direct {v0, v1, v3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Ldd/b;

    invoke-direct {v0, v1, v2}, Ldd/b;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-static {p1}, LG5/a;->v(LG5/a;)Z

    move-result v0

    const-string v1, "Use noise"

    if-eqz v0, :cond_2

    new-instance v0, Ldd/b;

    new-instance v3, LG5/a$g$d;

    invoke-direct {v3, p0}, LG5/a$g$d;-><init>(LG5/a$g;)V

    invoke-direct {v0, v1, v3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance v0, Ldd/b;

    invoke-direct {v0, v1, v2}, Ldd/b;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    new-instance v0, Ldd/b;

    invoke-direct {v0}, Ldd/b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ldd/b;

    new-instance v1, LG5/a$g$e;

    invoke-direct {v1, p0}, LG5/a$g$e;-><init>(LG5/a$g;)V

    const-string v3, "Import texture"

    invoke-direct {v0, v3, v1}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, LG5/a;->r(LG5/a;)LG5/a$k;

    move-result-object p1

    invoke-interface {p1}, LG5/a$k;->get()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Remove texture"

    const-string v1, "Open texture settings"

    const-string v3, "Show texture in files"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Ldd/b;

    new-instance v2, LG5/a$g$f;

    invoke-direct {v2, p0}, LG5/a$g$f;-><init>(LG5/a$g;)V

    invoke-direct {p1, v3, v2}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v2, LG5/a$g$g;

    invoke-direct {v2, p0}, LG5/a$g$g;-><init>(LG5/a$g;)V

    invoke-direct {p1, v1, v2}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v1, LG5/a$g$h;

    invoke-direct {v1, p0}, LG5/a$g$h;-><init>(LG5/a$g;)V

    invoke-direct {p1, v0, v1}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    new-instance p1, Ldd/b;

    invoke-direct {p1, v3, v2}, Ldd/b;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    invoke-direct {p1, v1, v2}, Ldd/b;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    invoke-direct {p1, v0, v2}, Ldd/b;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void
.end method
