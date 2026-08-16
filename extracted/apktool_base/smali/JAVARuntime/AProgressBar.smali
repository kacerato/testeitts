.class public LJAVARuntime/AProgressBar;
.super Landroid/widget/ProgressBar;
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

    .line 1
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    .line 3
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1}, LJAVARuntime/AProgressBar;->getStyleInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method private static getStyleInt(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    :try_start_0
    const-class v0, Landroid/R$attr;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
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

    new-instance v0, LJAVARuntime/AProgressBar$3;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AProgressBar$3;-><init>(LJAVARuntime/AProgressBar;Landroid/view/View$OnClickListener;)V

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

    new-instance v0, LJAVARuntime/AProgressBar$10;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AProgressBar$10;-><init>(LJAVARuntime/AProgressBar;Landroid/view/View$OnCreateContextMenuListener;)V

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

    new-instance v0, LJAVARuntime/AProgressBar$6;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AProgressBar$6;-><init>(LJAVARuntime/AProgressBar;Landroid/view/View$OnDragListener;)V

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

    new-instance v0, LJAVARuntime/AProgressBar$9;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AProgressBar$9;-><init>(LJAVARuntime/AProgressBar;Landroid/view/View$OnFocusChangeListener;)V

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

    new-instance v0, LJAVARuntime/AProgressBar$1;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AProgressBar$1;-><init>(LJAVARuntime/AProgressBar;Landroid/view/View$OnGenericMotionListener;)V

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

    new-instance v0, LJAVARuntime/AProgressBar$5;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AProgressBar$5;-><init>(LJAVARuntime/AProgressBar;Landroid/view/View$OnHoverListener;)V

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

    new-instance v0, LJAVARuntime/AProgressBar$7;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AProgressBar$7;-><init>(LJAVARuntime/AProgressBar;Landroid/view/View$OnKeyListener;)V

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

    new-instance v0, LJAVARuntime/AProgressBar$2;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AProgressBar$2;-><init>(LJAVARuntime/AProgressBar;Landroid/view/View$OnLongClickListener;)V

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

    new-instance v0, LJAVARuntime/AProgressBar$8;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AProgressBar$8;-><init>(LJAVARuntime/AProgressBar;Landroid/view/View$OnScrollChangeListener;)V

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

    new-instance v0, LJAVARuntime/AProgressBar$4;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AProgressBar$4;-><init>(LJAVARuntime/AProgressBar;Landroid/view/View$OnTouchListener;)V

    invoke-super {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
