.class public LX3/a;
.super Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Shortcuts"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public y(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v0, LC5/b;

    new-instance v1, LX3/a$a;

    invoke-direct {v1, p0}, LX3/a$a;-><init>(LX3/a;)V

    sget-object v2, LC5/b$a;->SLString:LC5/b$a;

    const-string v3, "Save project"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, LX3/a$b;

    invoke-direct {v1, p0}, LX3/a$b;-><init>(LX3/a;)V

    const-string v3, "Maximize panel"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LX3/a$c;

    invoke-direct {v0, p0}, LX3/a$c;-><init>(LX3/a;)V

    const-string v1, "Focus camera"

    invoke-static {v1, v0}, LF5/c;->k(Ljava/lang/String;LF5/d;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LX3/a$d;

    invoke-direct {v0, p0}, LX3/a$d;-><init>(LX3/a;)V

    const-string v1, "Position axis"

    invoke-static {v1, v0}, LF5/c;->k(Ljava/lang/String;LF5/d;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LX3/a$e;

    invoke-direct {v0, p0}, LX3/a$e;-><init>(LX3/a;)V

    const-string v1, "Rotation axis"

    invoke-static {v1, v0}, LF5/c;->k(Ljava/lang/String;LF5/d;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LX3/a$f;

    invoke-direct {v0, p0}, LX3/a$f;-><init>(LX3/a;)V

    const-string v1, "Scale axis"

    invoke-static {v1, v0}, LF5/c;->k(Ljava/lang/String;LF5/d;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
