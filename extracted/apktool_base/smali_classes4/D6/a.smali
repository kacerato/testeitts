.class public LD6/a;
.super Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;-><init>()V

    return-void
.end method

.method public static synthetic o(LD6/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LD6/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method private q()V
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getText()Ljava/lang/String;

    move-result-object v0

    new-instance v1, LD6/b;

    new-instance v2, LD6/a$a;

    invoke-direct {v2, p0}, LD6/a$a;-><init>(LD6/a;)V

    invoke-direct {v1, v2}, LD6/b;-><init>(LF6/b;)V

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setLanguage(Lorg/blacksquircle/ui/language/base/Language;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setDefaultConfigs()V

    invoke-direct {p0}, LD6/a;->r()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private r()V
    .locals 1

    new-instance v0, LD6/a$b;

    invoke-direct {v0, p0}, LD6/a$b;-><init>(LD6/a;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setRequestLineTips(Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips;)V

    return-void
.end method


# virtual methods
.method public duplicate()LF6/d;
    .locals 1

    new-instance v0, LD6/a;

    invoke-direct {v0}, LD6/a;-><init>()V

    return-object v0
.end method

.method public getOpenFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LD6/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public hasScript()Z
    .locals 1

    iget-object v0, p0, LD6/a;->b:Ljava/lang/String;

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

    new-instance v1, LD6/a$c;

    invoke-direct {v1, p0}, LD6/a$c;-><init>(LD6/a;)V

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

    invoke-direct {p0}, LD6/a;->q()V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->config:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$Config;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface$Config;->a:Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    invoke-virtual {p0, v0}, LD6/a;->setColorTheme(Lorg/blacksquircle/ui/language/base/model/ColorScheme;)V

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

    invoke-virtual {p0}, LD6/a;->hasScript()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, LD6/a;->saveScript(Landroid/content/Context;)Z

    :cond_0
    invoke-virtual {p0}, LD6/a;->unload()V

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

    invoke-virtual {p0, p1}, LD6/a;->p(Ljava/lang/String;)V

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-virtual {p0}, LD6/a;->init()V

    invoke-virtual {p0}, LD6/a;->unload()V

    const/4 v0, 0x1

    invoke-static {p1, v0}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LD6/a;->a:Ljava/lang/String;

    iput-object p1, p0, LD6/a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->context:Landroid/content/Context;

    invoke-static {p1, v0}, LX7/a;->s(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setText(Ljava/lang/String;)V

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

    invoke-virtual {p0, p2}, LD6/a;->saveScript(Landroid/content/Context;)Z

    iget-object p1, p1, Ljd/b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, LD6/a;->p(Ljava/lang/String;)V

    return-void
.end method

.method public saveScript(Landroid/content/Context;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->saveScript(Landroid/content/Context;)Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LD6/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, LX7/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    iget-object p1, p0, LD6/a;->b:Ljava/lang/String;

    invoke-static {p1}, Lb9/c;->n(Ljava/lang/String;)V

    new-instance p1, LIc/I;

    iget-object v1, p0, LD6/a;->b:Ljava/lang/String;

    invoke-direct {p1, v1}, LIc/I;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/World/a;->i(LLb/c;)V

    invoke-static {}, Lb9/c;->m()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return v0

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public setColorTheme(Lorg/blacksquircle/ui/language/base/model/ColorScheme;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorTheme"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setColorTheme(Lorg/blacksquircle/ui/language/base/model/ColorScheme;)V

    invoke-direct {p0}, LD6/a;->q()V

    return-void
.end method

.method public supportFile(Ljd/b;)Z
    .locals 1
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

    const-string v0, ".lua"

    invoke-static {p1, v0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public unload()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->unload()V

    const/4 v0, 0x0

    iput-object v0, p0, LD6/a;->b:Ljava/lang/String;

    iput-object v0, p0, LD6/a;->a:Ljava/lang/String;

    return-void
.end method
