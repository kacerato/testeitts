.class public LB6/f;
.super Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;-><init>()V

    return-void
.end method

.method public static synthetic o(LB6/f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LB6/f;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic p(LB6/f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LB6/f;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public duplicate()LF6/d;
    .locals 1

    new-instance v0, LB6/f;

    invoke-direct {v0}, LB6/f;-><init>()V

    return-object v0
.end method

.method public getOpenFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LB6/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasScript()Z
    .locals 1

    iget-object v0, p0, LB6/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public inflateTopBarElements(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "LM7/g;",
            ">;)V"
        }
    .end annotation

    new-instance v0, LM7/c;

    new-instance v1, LB6/f$d;

    invoke-direct {v1, p0}, LB6/f$d;-><init>(LB6/f;)V

    sget-object v2, LM7/c$b;->Disconnected:LM7/c$b;

    const v3, 0x7f070212

    invoke-direct {v0, v3, v1, v2, p1}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v1

    invoke-virtual {v0, v1}, LM7/c;->m0(I)LM7/c;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->inflateTopBarElements(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public init()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->init()V

    invoke-virtual {p0}, LB6/f;->s()V

    sget-object v0, Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;->INSTANCE:Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;->getDARCULA()Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setColorTheme(Lorg/blacksquircle/ui/language/base/model/ColorScheme;)V

    return-void
.end method

.method public onClose(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-virtual {p0}, LB6/f;->hasScript()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, LB6/f;->saveScript(Landroid/content/Context;)Z

    :cond_0
    invoke-virtual {p0}, LB6/f;->unload()V

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->onClose(Landroid/content/Context;)V

    return-void
.end method

.method public openScript(Ljd/b;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "script",
            "context"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->openScript(Ljd/b;Landroid/content/Context;)V

    iget-object p1, p1, Ljd/b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, LB6/f;->q(Ljava/lang/String;)V

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-virtual {p0}, LB6/f;->init()V

    invoke-virtual {p0}, LB6/f;->unload()V

    iput-object p1, p0, LB6/f;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, v0}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LB6/f;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "//"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, LIc/o;->g(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LB6/f;->b:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, LB6/f;->r()V

    return-void
.end method

.method public final r()V
    .locals 1

    iget-object v0, p0, LB6/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public replaceScript(Ljd/b;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newScript",
            "context"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->replaceScript(Ljd/b;Landroid/content/Context;)V

    invoke-virtual {p0, p2}, LB6/f;->saveScript(Landroid/content/Context;)Z

    iget-object p1, p1, Ljd/b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, LB6/f;->q(Ljava/lang/String;)V

    return-void
.end method

.method public final s()V
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getText()Ljava/lang/String;

    move-result-object v0

    new-instance v1, LB6/a;

    new-instance v2, LB6/f$a;

    invoke-direct {v2, p0}, LB6/f$a;-><init>(LB6/f;)V

    invoke-direct {v1, v2}, LB6/a;-><init>(LF6/b;)V

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setLanguage(Lorg/blacksquircle/ui/language/base/Language;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setDefaultConfigs()V

    invoke-virtual {p0}, LB6/f;->t()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public saveScript(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->saveScript(Landroid/content/Context;)Z

    new-instance p1, LB6/f$c;

    invoke-direct {p1, p0}, LB6/f$c;-><init>(LB6/f;)V

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lq7/a;->u1(ZLq7/a$d;)V

    const/4 p1, 0x0

    return p1
.end method

.method public supportFile(Ljd/b;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-virtual {p1}, Ljd/b;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".mvsc"

    const-string v1, ".vfxs"

    const-string v2, ".pvsc"

    const-string v3, ".svsc"

    const-string v4, ".avsc"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LIc/l;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final t()V
    .locals 1

    new-instance v0, LB6/f$b;

    invoke-direct {v0, p0}, LB6/f$b;-><init>(LB6/f;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setRequestLineTips(Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips;)V

    return-void
.end method

.method public unload()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->unload()V

    const/4 v0, 0x0

    iput-object v0, p0, LB6/f;->b:Ljava/lang/String;

    iput-object v0, p0, LB6/f;->a:Ljava/lang/String;

    iput-object v0, p0, LB6/f;->c:Ljava/lang/String;

    return-void
.end method
