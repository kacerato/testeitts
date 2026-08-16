.class public LJAVARuntime/AWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/AViewInstance;


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Android Views"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public findByID(Ljava/lang/String;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p0, p1}, LJAVARuntime/Editor;->findViewByID(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewID()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, LJAVARuntime/Editor;->getIdOf(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "l"
        }
    .end annotation

    new-instance v0, LJAVARuntime/AWebView$2;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AWebView$2;-><init>(LJAVARuntime/AWebView;Landroid/view/View$OnClickListener;)V

    invoke-super {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "l"
        }
    .end annotation

    new-instance v0, LJAVARuntime/AWebView$9;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AWebView$9;-><init>(LJAVARuntime/AWebView;Landroid/view/View$OnCreateContextMenuListener;)V

    invoke-super {p0, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "l"
        }
    .end annotation

    new-instance v0, LJAVARuntime/AWebView$5;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AWebView$5;-><init>(LJAVARuntime/AWebView;Landroid/view/View$OnDragListener;)V

    invoke-super {p0, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "l"
        }
    .end annotation

    new-instance v0, LJAVARuntime/AWebView$8;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AWebView$8;-><init>(LJAVARuntime/AWebView;Landroid/view/View$OnFocusChangeListener;)V

    invoke-super {p0, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "l"
        }
    .end annotation

    new-instance v0, LJAVARuntime/AWebView$4;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AWebView$4;-><init>(LJAVARuntime/AWebView;Landroid/view/View$OnHoverListener;)V

    invoke-super {p0, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "l"
        }
    .end annotation

    new-instance v0, LJAVARuntime/AWebView$6;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AWebView$6;-><init>(LJAVARuntime/AWebView;Landroid/view/View$OnKeyListener;)V

    invoke-super {p0, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "l"
        }
    .end annotation

    new-instance v0, LJAVARuntime/AWebView$1;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AWebView$1;-><init>(LJAVARuntime/AWebView;Landroid/view/View$OnLongClickListener;)V

    invoke-super {p0, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "l"
        }
    .end annotation

    new-instance v0, LJAVARuntime/AWebView$7;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AWebView$7;-><init>(LJAVARuntime/AWebView;Landroid/view/View$OnScrollChangeListener;)V

    invoke-super {p0, v0}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "l"
        }
    .end annotation

    new-instance v0, LJAVARuntime/AWebView$3;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AWebView$3;-><init>(LJAVARuntime/AWebView;Landroid/view/View$OnTouchListener;)V

    invoke-super {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
