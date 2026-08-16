.class public LJAVARuntime/AImageButton;
.super Landroid/widget/ImageButton;
.source "SourceFile"


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

    invoke-direct {p0, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
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

    new-instance v0, LJAVARuntime/AImageButton$2;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AImageButton$2;-><init>(LJAVARuntime/AImageButton;Landroid/view/View$OnClickListener;)V

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

    new-instance v0, LJAVARuntime/AImageButton$9;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AImageButton$9;-><init>(LJAVARuntime/AImageButton;Landroid/view/View$OnCreateContextMenuListener;)V

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

    new-instance v0, LJAVARuntime/AImageButton$5;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AImageButton$5;-><init>(LJAVARuntime/AImageButton;Landroid/view/View$OnDragListener;)V

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

    new-instance v0, LJAVARuntime/AImageButton$8;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AImageButton$8;-><init>(LJAVARuntime/AImageButton;Landroid/view/View$OnFocusChangeListener;)V

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

    new-instance v0, LJAVARuntime/AImageButton$4;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AImageButton$4;-><init>(LJAVARuntime/AImageButton;Landroid/view/View$OnHoverListener;)V

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

    new-instance v0, LJAVARuntime/AImageButton$6;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AImageButton$6;-><init>(LJAVARuntime/AImageButton;Landroid/view/View$OnKeyListener;)V

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

    new-instance v0, LJAVARuntime/AImageButton$1;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AImageButton$1;-><init>(LJAVARuntime/AImageButton;Landroid/view/View$OnLongClickListener;)V

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

    new-instance v0, LJAVARuntime/AImageButton$7;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AImageButton$7;-><init>(LJAVARuntime/AImageButton;Landroid/view/View$OnScrollChangeListener;)V

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

    new-instance v0, LJAVARuntime/AImageButton$3;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AImageButton$3;-><init>(LJAVARuntime/AImageButton;Landroid/view/View$OnTouchListener;)V

    invoke-super {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
