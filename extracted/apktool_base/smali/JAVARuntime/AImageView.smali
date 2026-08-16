.class public LJAVARuntime/AImageView;
.super Landroid/widget/ImageView;
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

    invoke-direct {p0, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public static setImageFile(Landroid/widget/ImageView;LJAVARuntime/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageView",
            "file"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p1}, LJAVARuntime/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, LN7/c;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0, p1}, LVc/e;->F(Landroid/widget/ImageView;Ljava/io/File;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, LJAVARuntime/AImageView$1;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AImageView$1;-><init>(Landroid/widget/ImageView;LJAVARuntime/File;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "FileNotFoundException"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "imageView can`t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "file can`t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
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

.method public setImageFile(LJAVARuntime/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {p1}, LJAVARuntime/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-static {p0, p1}, LVc/e;->F(Landroid/widget/ImageView;Ljava/io/File;)V

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "FileNotFoundException"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
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

    new-instance v0, LJAVARuntime/AImageView$4;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AImageView$4;-><init>(LJAVARuntime/AImageView;Landroid/view/View$OnClickListener;)V

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

    new-instance v0, LJAVARuntime/AImageView$11;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AImageView$11;-><init>(LJAVARuntime/AImageView;Landroid/view/View$OnCreateContextMenuListener;)V

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

    new-instance v0, LJAVARuntime/AImageView$7;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AImageView$7;-><init>(LJAVARuntime/AImageView;Landroid/view/View$OnDragListener;)V

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

    new-instance v0, LJAVARuntime/AImageView$10;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AImageView$10;-><init>(LJAVARuntime/AImageView;Landroid/view/View$OnFocusChangeListener;)V

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

    new-instance v0, LJAVARuntime/AImageView$2;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AImageView$2;-><init>(LJAVARuntime/AImageView;Landroid/view/View$OnGenericMotionListener;)V

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

    new-instance v0, LJAVARuntime/AImageView$6;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AImageView$6;-><init>(LJAVARuntime/AImageView;Landroid/view/View$OnHoverListener;)V

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

    new-instance v0, LJAVARuntime/AImageView$8;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AImageView$8;-><init>(LJAVARuntime/AImageView;Landroid/view/View$OnKeyListener;)V

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

    new-instance v0, LJAVARuntime/AImageView$3;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AImageView$3;-><init>(LJAVARuntime/AImageView;Landroid/view/View$OnLongClickListener;)V

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

    new-instance v0, LJAVARuntime/AImageView$9;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AImageView$9;-><init>(LJAVARuntime/AImageView;Landroid/view/View$OnScrollChangeListener;)V

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

    new-instance v0, LJAVARuntime/AImageView$5;

    invoke-direct {v0, p0, p1}, LJAVARuntime/AImageView$5;-><init>(LJAVARuntime/AImageView;Landroid/view/View$OnTouchListener;)V

    invoke-super {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
