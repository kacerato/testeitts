.class LJAVARuntime/TextScriptingExtension$1;
.super Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/TextScriptingExtension;->newInterface()Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private inited:Z

.field private textWatcher:Landroid/text/TextWatcher;

.field final synthetic this$0:LJAVARuntime/TextScriptingExtension;


# direct methods
.method public constructor <init>(LJAVARuntime/TextScriptingExtension;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/TextScriptingExtension$1;->this$0:LJAVARuntime/TextScriptingExtension;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, LJAVARuntime/TextScriptingExtension$1;->inited:Z

    const/4 p1, 0x0

    iput-object p1, p0, LJAVARuntime/TextScriptingExtension$1;->textWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method public static synthetic access$000(LJAVARuntime/TextScriptingExtension$1;Ljd/b;)Ljava/io/File;
    .locals 0

    invoke-direct {p0, p1}, LJAVARuntime/TextScriptingExtension$1;->convert(Ljd/b;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(LJAVARuntime/TextScriptingExtension$1;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, LJAVARuntime/TextScriptingExtension$1;->displayTips(IILjava/lang/String;)V

    return-void
.end method

.method private convert(Ljd/b;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pFile"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljd/b;->f()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private displayTips(IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "text"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, p2, p3, v0}, LJ6/a;->A1(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public convertFromJavaRuntime(LJAVARuntime/TextScriptingExtension$LineTip;)Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips$Type;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sUnitType"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips$Type;->valueOf(Ljava/lang/String;)Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips$Type;

    move-result-object p1

    return-object p1
.end method

.method public convertToJavaRuntime(Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips$Type;)LJAVARuntime/TextScriptingExtension$LineTip;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unitType"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LJAVARuntime/TextScriptingExtension$LineTip;->valueOf(Ljava/lang/String;)LJAVARuntime/TextScriptingExtension$LineTip;

    move-result-object p1

    return-object p1
.end method

.method public duplicate()LF6/d;
    .locals 1

    iget-object v0, p0, LJAVARuntime/TextScriptingExtension$1;->this$0:LJAVARuntime/TextScriptingExtension;

    invoke-static {v0}, LJAVARuntime/TextScriptingExtension;->access$300(LJAVARuntime/TextScriptingExtension;)Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    move-result-object v0

    return-object v0
.end method

.method public hasScript()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Z

    aput-boolean v0, v1, v0

    new-instance v2, LJAVARuntime/TextScriptingExtension$1$9;

    invoke-direct {v2, p0, v1}, LJAVARuntime/TextScriptingExtension$1$9;-><init>(LJAVARuntime/TextScriptingExtension$1;[Z)V

    invoke-static {v2}, Ld8/m;->d(Lo8/d;)Z

    aget-boolean v0, v1, v0

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

    new-instance v1, LJAVARuntime/TextScriptingExtension$1$11;

    invoke-direct {v1, p0}, LJAVARuntime/TextScriptingExtension$1$11;-><init>(LJAVARuntime/TextScriptingExtension$1;)V

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

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->init()V

    iget-boolean v0, p0, LJAVARuntime/TextScriptingExtension$1;->inited:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setDefaultConfigs()V

    sget-object v0, Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;->INSTANCE:Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;->getDARCULA()Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setColorTheme(Lorg/blacksquircle/ui/language/base/model/ColorScheme;)V

    new-instance v0, LJAVARuntime/TextScriptingExtension$1$4;

    invoke-direct {v0, p0}, LJAVARuntime/TextScriptingExtension$1$4;-><init>(LJAVARuntime/TextScriptingExtension$1;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setRequestLineTips(Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips;)V

    iget-object v0, p0, LJAVARuntime/TextScriptingExtension$1;->this$0:LJAVARuntime/TextScriptingExtension;

    invoke-static {v0}, LJAVARuntime/TextScriptingExtension;->access$200(LJAVARuntime/TextScriptingExtension;)Lorg/blacksquircle/ui/language/base/Language;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setLanguage(Lorg/blacksquircle/ui/language/base/Language;)V

    iget-object v0, p0, LJAVARuntime/TextScriptingExtension$1;->textWatcher:Landroid/text/TextWatcher;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/TextScriptingExtension$1$5;

    invoke-direct {v0, p0}, LJAVARuntime/TextScriptingExtension$1$5;-><init>(LJAVARuntime/TextScriptingExtension$1;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingExtension$1;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->addTextWatcher(Landroid/text/TextWatcher;)V

    :cond_0
    new-instance v0, LJAVARuntime/TextScriptingExtension$1$6;

    invoke-direct {v0, p0}, LJAVARuntime/TextScriptingExtension$1$6;-><init>(LJAVARuntime/TextScriptingExtension$1;)V

    invoke-static {v0}, Ld8/m;->d(Lo8/d;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, LJAVARuntime/TextScriptingExtension$1;->inited:Z

    :cond_1
    return-void
.end method

.method public onClose(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    new-instance p1, LJAVARuntime/TextScriptingExtension$1$3;

    invoke-direct {p1, p0}, LJAVARuntime/TextScriptingExtension$1$3;-><init>(LJAVARuntime/TextScriptingExtension$1;)V

    invoke-static {p1}, Ld8/m;->d(Lo8/d;)Z

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

    invoke-virtual {p0}, LJAVARuntime/TextScriptingExtension$1;->init()V

    new-instance p2, LJAVARuntime/TextScriptingExtension$1$2;

    invoke-direct {p2, p0, p1}, LJAVARuntime/TextScriptingExtension$1$2;-><init>(LJAVARuntime/TextScriptingExtension$1;Ljd/b;)V

    invoke-static {p2}, Ld8/m;->d(Lo8/d;)Z

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
            "script",
            "context"
        }
    .end annotation

    new-instance p2, LJAVARuntime/TextScriptingExtension$1$1;

    invoke-direct {p2, p0, p1}, LJAVARuntime/TextScriptingExtension$1$1;-><init>(LJAVARuntime/TextScriptingExtension$1;Ljd/b;)V

    invoke-static {p2}, Ld8/m;->d(Lo8/d;)Z

    return-void
.end method

.method public saveScript(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Z

    aput-boolean p1, v0, p1

    new-instance v1, LJAVARuntime/TextScriptingExtension$1$8;

    invoke-direct {v1, p0, v0}, LJAVARuntime/TextScriptingExtension$1$8;-><init>(LJAVARuntime/TextScriptingExtension$1;[Z)V

    invoke-static {v1}, Ld8/m;->d(Lo8/d;)Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public supportFile(Ljd/b;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Z

    aput-boolean v0, v1, v0

    new-instance v2, LJAVARuntime/TextScriptingExtension$1$10;

    invoke-direct {v2, p0, v1, p1}, LJAVARuntime/TextScriptingExtension$1$10;-><init>(LJAVARuntime/TextScriptingExtension$1;[ZLjd/b;)V

    invoke-static {v2}, Ld8/m;->d(Lo8/d;)Z

    aget-boolean p1, v1, v0

    return p1
.end method

.method public unload()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->unload()V

    iget-object v0, p0, LJAVARuntime/TextScriptingExtension$1;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->removeTextWatcher(Landroid/text/TextWatcher;)V

    const/4 v0, 0x0

    iput-object v0, p0, LJAVARuntime/TextScriptingExtension$1;->textWatcher:Landroid/text/TextWatcher;

    :cond_0
    new-instance v0, LJAVARuntime/TextScriptingExtension$1$7;

    invoke-direct {v0, p0}, LJAVARuntime/TextScriptingExtension$1$7;-><init>(LJAVARuntime/TextScriptingExtension$1;)V

    invoke-static {v0}, Ld8/m;->d(Lo8/d;)Z

    return-void
.end method
