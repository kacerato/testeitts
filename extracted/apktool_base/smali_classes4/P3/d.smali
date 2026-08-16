.class public LP3/d;
.super Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Theme"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public y(Landroid/content/Context;)Ljava/util/List;
    .locals 8
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

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->q()Ljava/util/List;

    move-result-object v0

    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$e;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v7, LC5/b;

    new-instance v2, LP3/d$a;

    invoke-direct {v2, p0, v0}, LP3/d$a;-><init>(LP3/d;Ljava/util/List;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->m()Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$e;->a()Ljava/lang/String;

    move-result-object v3

    sget-object v5, LC5/b$a;->SLDropdown:LC5/b$a;

    const-string v6, "Theme"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;Ljava/util/List;LC5/b$a;Ljava/lang/String;)V

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    const-string v1, "Import themes to data/ITsMagic/Themes"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, LC5/b;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
