.class public LS3/b;
.super Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Graphics"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public y(Landroid/content/Context;)Ljava/util/List;
    .locals 6
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

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, LC5/b;

    new-instance v2, LS3/b$a;

    invoke-direct {v2, p0}, LS3/b$a;-><init>(LS3/b;)V

    sget-object v3, LC5/b$a;->SLBoolean:LC5/b$a;

    const-string v4, "Draw 3d axis cube"

    invoke-direct {v1, v2, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v1

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->renderBackend:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$a;

    new-instance v2, LS3/b$b;

    invoke-direct {v2, p0}, LS3/b$b;-><init>(LS3/b;)V

    const-string v4, "Rendering API"

    const-class v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$a;

    invoke-static {v4, v5, v1, v2}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    const-string v2, "You need to restart the editor to apply API changes"

    const/16 v4, 0xc

    invoke-direct {v1, v2, v4}, LC5/b;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, LS3/b$c;

    invoke-direct {v2, p0}, LS3/b$c;-><init>(LS3/b;)V

    const-string v5, "Enable FPS limiter on editor"

    invoke-direct {v1, v2, v5, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, LS3/b$d;

    invoke-direct {v2, p0}, LS3/b$d;-><init>(LS3/b;)V

    const-string v3, "On Editor FPS Limit"

    sget-object v5, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {v1, v2, v3, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v1

    iget-boolean v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->enableFrameLimitOnEditor:Z

    if-nez v1, :cond_0

    new-instance v1, LC5/b;

    const-string v2, "We strongly recommend that you keep the frame limiter enabled on 32 FPS"

    invoke-direct {v1, v2, v4}, LC5/b;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, LC5/b;

    new-instance v2, LS3/b$e;

    invoke-direct {v2, p0, p1}, LS3/b$e;-><init>(LS3/b;Landroid/content/Context;)V

    const-string p1, "Restart editor"

    sget-object v3, LC5/b$a;->Button:LC5/b$a;

    invoke-direct {v1, v2, p1, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
