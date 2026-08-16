.class public LJAVARuntime/TextScriptingExtension;
.super LJAVARuntime/ScriptingExtension;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/TextScriptingExtension$LineTip;
    }
.end annotation


# instance fields
.field private final transient language:Lorg/blacksquircle/ui/language/base/Language;
    .annotation runtime LH6/g;
    .end annotation
.end field

.field private transient provider:Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;
    .annotation runtime LH6/g;
    .end annotation
.end field

.field private transient styler:Lorg/blacksquircle/ui/language/base/styler/LanguageStyler;
    .annotation runtime LH6/g;
    .end annotation
.end field

.field private final transient textInterface:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;
    .annotation runtime LH6/g;
    .end annotation
.end field

.field private transient theme:LJAVARuntime/TextScriptingTheme;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LJAVARuntime/ScriptingExtension;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    invoke-direct {p0}, LJAVARuntime/TextScriptingExtension;->newInterface()Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    move-result-object v0

    iput-object v0, p0, LJAVARuntime/TextScriptingExtension;->textInterface:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    const/4 v0, 0x0

    iput-object v0, p0, LJAVARuntime/TextScriptingExtension;->theme:LJAVARuntime/TextScriptingTheme;

    iput-object v0, p0, LJAVARuntime/TextScriptingExtension;->provider:Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;

    iput-object v0, p0, LJAVARuntime/TextScriptingExtension;->styler:Lorg/blacksquircle/ui/language/base/styler/LanguageStyler;

    new-instance v0, LJAVARuntime/TextScriptingExtension$2;

    invoke-direct {v0, p0}, LJAVARuntime/TextScriptingExtension$2;-><init>(LJAVARuntime/TextScriptingExtension;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingExtension;->language:Lorg/blacksquircle/ui/language/base/Language;

    return-void
.end method

.method public static synthetic access$200(LJAVARuntime/TextScriptingExtension;)Lorg/blacksquircle/ui/language/base/Language;
    .locals 0

    iget-object p0, p0, LJAVARuntime/TextScriptingExtension;->language:Lorg/blacksquircle/ui/language/base/Language;

    return-object p0
.end method

.method public static synthetic access$300(LJAVARuntime/TextScriptingExtension;)Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;
    .locals 0

    invoke-direct {p0}, LJAVARuntime/TextScriptingExtension;->newInterface()Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(LJAVARuntime/TextScriptingExtension;)Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;
    .locals 0

    iget-object p0, p0, LJAVARuntime/TextScriptingExtension;->provider:Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;

    return-object p0
.end method

.method public static synthetic access$500(LJAVARuntime/TextScriptingExtension;)Lorg/blacksquircle/ui/language/base/styler/LanguageStyler;
    .locals 0

    iget-object p0, p0, LJAVARuntime/TextScriptingExtension;->styler:Lorg/blacksquircle/ui/language/base/styler/LanguageStyler;

    return-object p0
.end method

.method public static synthetic access$600(LJAVARuntime/TextScriptingExtension;)LJAVARuntime/TextScriptingTheme;
    .locals 0

    iget-object p0, p0, LJAVARuntime/TextScriptingExtension;->theme:LJAVARuntime/TextScriptingTheme;

    return-object p0
.end method

.method private newInterface()Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;
    .locals 1

    new-instance v0, LJAVARuntime/TextScriptingExtension$1;

    invoke-direct {v0, p0}, LJAVARuntime/TextScriptingExtension$1;-><init>(LJAVARuntime/TextScriptingExtension;)V

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "editable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editable"
        }
    .end annotation

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "charSequence",
            "start",
            "before",
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "charSequence",
            "start",
            "before",
            "count"
        }
    .end annotation

    return-void
.end method

.method public getScriptingInterface()LF6/d;
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    iget-object v0, p0, LJAVARuntime/TextScriptingExtension;->textInterface:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJAVARuntime/TextScriptingExtension;->textInterface:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTipForLine(I)LJAVARuntime/TextScriptingExtension$LineTip;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "line"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation

    sget-object p1, LJAVARuntime/TextScriptingExtension$LineTip;->None:LJAVARuntime/TextScriptingExtension$LineTip;

    return-object p1
.end method

.method public getTipTextForLine(I)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "line"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation

    const-string p1, ""

    return-object p1
.end method

.method public hasScript()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public onClose()V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "charSequence",
            "start",
            "before",
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "charSequence",
            "start",
            "before",
            "count"
        }
    .end annotation

    return-void
.end method

.method public openScript(LJAVARuntime/File;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "script"
        }
    .end annotation

    return-void
.end method

.method public replaceScript(LJAVARuntime/File;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newScript"
        }
    .end annotation

    return-void
.end method

.method public saveScript()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setProvider(LJAVARuntime/TextScriptingProvider;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "textScriptingProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textScriptingProvider"
        }
    .end annotation

    new-instance v0, LA6/a;

    invoke-direct {v0, p1}, LA6/a;-><init>(LJAVARuntime/TextScriptingProvider;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingExtension;->provider:Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;

    return-void
.end method

.method public setStyler(LJAVARuntime/TextScriptingStyler;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "textScriptingStyler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textScriptingStyler"
        }
    .end annotation

    new-instance v0, LA6/b;

    new-instance v1, LJAVARuntime/TextScriptingExtension$3;

    invoke-direct {v1, p0}, LJAVARuntime/TextScriptingExtension$3;-><init>(LJAVARuntime/TextScriptingExtension;)V

    invoke-direct {v0, p1, v1}, LA6/b;-><init>(LJAVARuntime/TextScriptingStyler;LA6/c;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingExtension;->styler:Lorg/blacksquircle/ui/language/base/styler/LanguageStyler;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/TextScriptingExtension;->textInterface:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setTheme(LJAVARuntime/TextScriptingTheme;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "theme"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "theme"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/TextScriptingExtension;->textInterface:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    invoke-virtual {p1}, LJAVARuntime/TextScriptingTheme;->convertInternal()Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->setColorTheme(Lorg/blacksquircle/ui/language/base/model/ColorScheme;)V

    iput-object p1, p0, LJAVARuntime/TextScriptingExtension;->theme:LJAVARuntime/TextScriptingTheme;

    return-void
.end method

.method public supportFile(LJAVARuntime/File;)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public unload()V
    .locals 0

    return-void
.end method
