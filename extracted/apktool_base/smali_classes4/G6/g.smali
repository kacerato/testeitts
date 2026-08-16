.class public LG6/g;
.super Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LG6/g;->d:Landroid/text/TextWatcher;

    return-void
.end method

.method public static synthetic o(LG6/g;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LG6/g;->c:Ljava/lang/String;

    return-object p0
.end method

.method private r()V
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getText()Ljava/lang/String;

    move-result-object v0

    new-instance v1, LG6/a;

    new-instance v2, LG6/g$a;

    invoke-direct {v2, p0}, LG6/g$a;-><init>(LG6/g;)V

    invoke-direct {v1, v2}, LG6/a;-><init>(LF6/b;)V

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setLanguage(Lorg/blacksquircle/ui/language/base/Language;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setDefaultConfigs()V

    invoke-direct {p0}, LG6/g;->s()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private s()V
    .locals 1

    new-instance v0, LG6/g$b;

    invoke-direct {v0, p0}, LG6/g$b;-><init>(LG6/g;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setRequestLineTips(Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips;)V

    return-void
.end method


# virtual methods
.method public duplicate()LF6/d;
    .locals 1

    new-instance v0, LG6/g;

    invoke-direct {v0}, LG6/g;-><init>()V

    return-object v0
.end method

.method public getOpenFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LG6/g;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasScript()Z
    .locals 1

    iget-object v0, p0, LG6/g;->b:Ljava/lang/String;

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

    new-instance v1, LG6/g$d;

    invoke-direct {v1, p0}, LG6/g$d;-><init>(LG6/g;)V

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

    invoke-direct {p0}, LG6/g;->r()V

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

    invoke-virtual {p0}, LG6/g;->hasScript()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, LG6/g;->saveScript(Landroid/content/Context;)Z

    :cond_0
    invoke-virtual {p0}, LG6/g;->unload()V

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

    invoke-virtual {p0, p1}, LG6/g;->q(Ljava/lang/String;)V

    return-void
.end method

.method public final p(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    iget-object v0, p0, LG6/g;->b:Ljava/lang/String;

    const-string v1, ".json"

    invoke-static {v0, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p1
.end method

.method public q(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-virtual {p0}, LG6/g;->init()V

    invoke-virtual {p0}, LG6/g;->unload()V

    const/4 v0, 0x1

    invoke-static {p1, v0}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LG6/g;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->context:Landroid/content/Context;

    invoke-static {p1, v0}, LX7/a;->s(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LG6/g;->a:Ljava/lang/String;

    iput-object p1, p0, LG6/g;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, LG6/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setText(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, LG6/g;->d:Landroid/text/TextWatcher;

    if-nez p1, :cond_1

    new-instance p1, LG6/g$c;

    invoke-direct {p1, p0}, LG6/g$c;-><init>(LG6/g;)V

    iput-object p1, p0, LG6/g;->d:Landroid/text/TextWatcher;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->addTextWatcher(Landroid/text/TextWatcher;)V

    :cond_1
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

    invoke-virtual {p0, p2}, LG6/g;->saveScript(Landroid/content/Context;)Z

    iget-object p1, p1, Ljd/b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, LG6/g;->q(Ljava/lang/String;)V

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
    iget-object v1, p0, LG6/g;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LG6/g;->a:Ljava/lang/String;

    iget-object v2, p0, LG6/g;->b:Ljava/lang/String;

    invoke-static {v2, v1, p1}, LX7/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
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

.method public supportFile(Ljd/b;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-virtual {p1}, Ljd/b;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".txt"

    invoke-static {v0, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljd/b;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".json"

    invoke-static {p1, v0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public unload()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->unload()V

    const/4 v0, 0x0

    iput-object v0, p0, LG6/g;->a:Ljava/lang/String;

    iput-object v0, p0, LG6/g;->c:Ljava/lang/String;

    iput-object v0, p0, LG6/g;->b:Ljava/lang/String;

    return-void
.end method
