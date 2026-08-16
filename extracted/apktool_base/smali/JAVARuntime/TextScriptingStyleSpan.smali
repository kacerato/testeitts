.class public LJAVARuntime/TextScriptingStyleSpan;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public transient bold:Z

.field public transient color:LJAVARuntime/Color;

.field public transient italic:Z

.field public transient strikethrough:Z

.field public transient underline:Z


# direct methods
.method public constructor <init>(LJAVARuntime/Color;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, LJAVARuntime/TextScriptingStyleSpan;->bold:Z

    .line 4
    iput-boolean v0, p0, LJAVARuntime/TextScriptingStyleSpan;->italic:Z

    .line 5
    iput-boolean v0, p0, LJAVARuntime/TextScriptingStyleSpan;->underline:Z

    .line 6
    iput-boolean v0, p0, LJAVARuntime/TextScriptingStyleSpan;->strikethrough:Z

    .line 7
    iput-object p1, p0, LJAVARuntime/TextScriptingStyleSpan;->color:LJAVARuntime/Color;

    return-void
.end method

.method public constructor <init>(LJAVARuntime/Color;ZZZZ)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color",
            "bold",
            "italic",
            "underline",
            "strikethrough"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "color",
            "bold",
            "italic",
            "underline",
            "strikethrough"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 10
    iput-object p1, p0, LJAVARuntime/TextScriptingStyleSpan;->color:LJAVARuntime/Color;

    .line 11
    iput-boolean p2, p0, LJAVARuntime/TextScriptingStyleSpan;->bold:Z

    .line 12
    iput-boolean p3, p0, LJAVARuntime/TextScriptingStyleSpan;->italic:Z

    .line 13
    iput-boolean p4, p0, LJAVARuntime/TextScriptingStyleSpan;->underline:Z

    .line 14
    iput-boolean p5, p0, LJAVARuntime/TextScriptingStyleSpan;->strikethrough:Z

    return-void
.end method


# virtual methods
.method public convertInternal()Lorg/blacksquircle/ui/language/base/span/StyleSpan;
    .locals 2
    .annotation runtime LH6/g;
    .end annotation

    new-instance v0, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-direct {v0}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>()V

    iget-object v1, p0, LJAVARuntime/TextScriptingStyleSpan;->color:LJAVARuntime/Color;

    invoke-virtual {v1}, LJAVARuntime/Color;->getHexString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->setColor(I)V

    iget-boolean v1, p0, LJAVARuntime/TextScriptingStyleSpan;->bold:Z

    invoke-virtual {v0, v1}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->setBold(Z)V

    iget-boolean v1, p0, LJAVARuntime/TextScriptingStyleSpan;->italic:Z

    invoke-virtual {v0, v1}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->setItalic(Z)V

    iget-boolean v1, p0, LJAVARuntime/TextScriptingStyleSpan;->underline:Z

    invoke-virtual {v0, v1}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->setUnderline(Z)V

    iget-boolean v1, p0, LJAVARuntime/TextScriptingStyleSpan;->strikethrough:Z

    invoke-virtual {v0, v1}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;->setStrikethrough(Z)V

    return-object v0
.end method

.method public getColor()LJAVARuntime/Color;
    .locals 1

    iget-object v0, p0, LJAVARuntime/TextScriptingStyleSpan;->color:LJAVARuntime/Color;

    return-object v0
.end method

.method public isBold()Z
    .locals 1

    iget-boolean v0, p0, LJAVARuntime/TextScriptingStyleSpan;->bold:Z

    return v0
.end method

.method public isItalic()Z
    .locals 1

    iget-boolean v0, p0, LJAVARuntime/TextScriptingStyleSpan;->italic:Z

    return v0
.end method

.method public isStrikethrough()Z
    .locals 1

    iget-boolean v0, p0, LJAVARuntime/TextScriptingStyleSpan;->strikethrough:Z

    return v0
.end method

.method public isUnderline()Z
    .locals 1

    iget-boolean v0, p0, LJAVARuntime/TextScriptingStyleSpan;->underline:Z

    return v0
.end method

.method public setBold(Z)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bold"
        }
    .end annotation

    iput-boolean p1, p0, LJAVARuntime/TextScriptingStyleSpan;->bold:Z

    return-void
.end method

.method public setColor(LJAVARuntime/Color;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/TextScriptingStyleSpan;->color:LJAVARuntime/Color;

    return-void
.end method

.method public setItalic(Z)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "italic"
        }
    .end annotation

    iput-boolean p1, p0, LJAVARuntime/TextScriptingStyleSpan;->italic:Z

    return-void
.end method

.method public setStrikethrough(Z)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strikethrough"
        }
    .end annotation

    iput-boolean p1, p0, LJAVARuntime/TextScriptingStyleSpan;->strikethrough:Z

    return-void
.end method

.method public setUnderline(Z)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "underline"
        }
    .end annotation

    iput-boolean p1, p0, LJAVARuntime/TextScriptingStyleSpan;->underline:Z

    return-void
.end method
