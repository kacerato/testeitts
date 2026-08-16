.class public LJAVARuntime/ASeekBar;
.super Landroid/widget/SeekBar;
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

    invoke-direct {p0, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

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

    new-instance v0, LJAVARuntime/ASeekBar$3;

    invoke-direct {v0, p0, p1}, LJAVARuntime/ASeekBar$3;-><init>(LJAVARuntime/ASeekBar;Landroid/view/View$OnClickListener;)V

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

    new-instance v0, LJAVARuntime/ASeekBar$10;

    invoke-direct {v0, p0, p1}, LJAVARuntime/ASeekBar$10;-><init>(LJAVARuntime/ASeekBar;Landroid/view/View$OnCreateContextMenuListener;)V

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

    new-instance v0, LJAVARuntime/ASeekBar$6;

    invoke-direct {v0, p0, p1}, LJAVARuntime/ASeekBar$6;-><init>(LJAVARuntime/ASeekBar;Landroid/view/View$OnDragListener;)V

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

    new-instance v0, LJAVARuntime/ASeekBar$9;

    invoke-direct {v0, p0, p1}, LJAVARuntime/ASeekBar$9;-><init>(LJAVARuntime/ASeekBar;Landroid/view/View$OnFocusChangeListener;)V

    invoke-super {p0, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "l"
        }
    .end annotation

    new-instance v0, LJAVARuntime/ASeekBar$1;

    invoke-direct {v0, p0, p1}, LJAVARuntime/ASeekBar$1;-><init>(LJAVARuntime/ASeekBar;Landroid/view/View$OnGenericMotionListener;)V

    invoke-super {p0, v0}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

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

    new-instance v0, LJAVARuntime/ASeekBar$5;

    invoke-direct {v0, p0, p1}, LJAVARuntime/ASeekBar$5;-><init>(LJAVARuntime/ASeekBar;Landroid/view/View$OnHoverListener;)V

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

    new-instance v0, LJAVARuntime/ASeekBar$7;

    invoke-direct {v0, p0, p1}, LJAVARuntime/ASeekBar$7;-><init>(LJAVARuntime/ASeekBar;Landroid/view/View$OnKeyListener;)V

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

    new-instance v0, LJAVARuntime/ASeekBar$2;

    invoke-direct {v0, p0, p1}, LJAVARuntime/ASeekBar$2;-><init>(LJAVARuntime/ASeekBar;Landroid/view/View$OnLongClickListener;)V

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

    new-instance v0, LJAVARuntime/ASeekBar$8;

    invoke-direct {v0, p0, p1}, LJAVARuntime/ASeekBar$8;-><init>(LJAVARuntime/ASeekBar;Landroid/view/View$OnScrollChangeListener;)V

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

    new-instance v0, LJAVARuntime/ASeekBar$4;

    invoke-direct {v0, p0, p1}, LJAVARuntime/ASeekBar$4;-><init>(LJAVARuntime/ASeekBar;Landroid/view/View$OnTouchListener;)V

    invoke-super {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
