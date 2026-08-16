.class public LJAVARuntime/InputDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Input"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/InputDialog$Type;
    }
.end annotation


# instance fields
.field private transient calledFromEngine:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;LJAVARuntime/InputDialog$Type;LJAVARuntime/InputDialogListener;)V
    .locals 7
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "title",
            "type",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "type",
            "listener"
        }
    .end annotation

    .line 2
    const-string v3, "cancel"

    const-string v4, "done"

    const-string v2, "type here"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, LJAVARuntime/InputDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LJAVARuntime/InputDialog$Type;LJAVARuntime/InputDialogListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LJAVARuntime/InputDialogListener;)V
    .locals 6
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "title",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "title",
            "listener"
        }
    .end annotation

    .line 1
    const-string v3, "cancel"

    const-string v4, "done"

    const-string v2, "type here"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LJAVARuntime/InputDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LJAVARuntime/InputDialogListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;LJAVARuntime/InputDialog$Type;LJAVARuntime/InputDialogListener;)V
    .locals 7
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "title",
            "defaultText",
            "type",
            "listener"
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
            "title",
            "defaultText",
            "type",
            "listener"
        }
    .end annotation

    .line 4
    const-string v3, "cancel"

    const-string v4, "done"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, LJAVARuntime/InputDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LJAVARuntime/InputDialog$Type;LJAVARuntime/InputDialogListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;LJAVARuntime/InputDialogListener;)V
    .locals 6
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "title",
            "defaultText",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "defaultText",
            "listener"
        }
    .end annotation

    .line 3
    const-string v3, "cancel"

    const-string v4, "done"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, LJAVARuntime/InputDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LJAVARuntime/InputDialogListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LJAVARuntime/InputDialogListener;)V
    .locals 6
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "title",
            "cancelButton",
            "doneButton",
            "listener"
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
            "title",
            "cancelButton",
            "doneButton",
            "listener"
        }
    .end annotation

    .line 5
    const-string v2, "type here"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LJAVARuntime/InputDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LJAVARuntime/InputDialogListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LJAVARuntime/InputDialog$Type;LJAVARuntime/InputDialogListener;)V
    .locals 12
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "title",
            "defaultText",
            "cancelButton",
            "doneButton",
            "type",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "defaultText",
            "cancelButton",
            "doneButton",
            "type",
            "listener"
        }
    .end annotation

    move-object v10, p0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, v10, LJAVARuntime/InputDialog;->calledFromEngine:Z

    .line 10
    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 11
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_0

    .line 12
    iput-boolean v0, v10, LJAVARuntime/InputDialog;->calledFromEngine:Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p4

    move-object v5, p3

    move-object/from16 v6, p6

    move-object v7, v11

    move-object/from16 v8, p5

    .line 13
    invoke-direct/range {v1 .. v8}, LJAVARuntime/InputDialog;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LJAVARuntime/InputDialogListener;Landroid/content/Context;LJAVARuntime/InputDialog$Type;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, v10, LJAVARuntime/InputDialog;->calledFromEngine:Z

    .line 16
    new-instance v0, LJAVARuntime/InputDialog$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p4

    move-object v6, p3

    move-object/from16 v7, p6

    move-object v8, v11

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, LJAVARuntime/InputDialog$1;-><init>(LJAVARuntime/InputDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LJAVARuntime/InputDialogListener;Landroid/app/Activity;LJAVARuntime/InputDialog$Type;)V

    invoke-virtual {v11, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LJAVARuntime/InputDialogListener;)V
    .locals 7
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "title",
            "defaultText",
            "cancelButton",
            "doneButton",
            "listener"
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
            "title",
            "defaultText",
            "cancelButton",
            "doneButton",
            "listener"
        }
    .end annotation

    .line 6
    sget-object v5, LJAVARuntime/InputDialog$Type;->String:LJAVARuntime/InputDialog$Type;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, LJAVARuntime/InputDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LJAVARuntime/InputDialog$Type;LJAVARuntime/InputDialogListener;)V

    return-void
.end method

.method public static synthetic access$000(LJAVARuntime/InputDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LJAVARuntime/InputDialogListener;Landroid/content/Context;LJAVARuntime/InputDialog$Type;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, LJAVARuntime/InputDialog;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LJAVARuntime/InputDialogListener;Landroid/content/Context;LJAVARuntime/InputDialog$Type;)V

    return-void
.end method

.method public static synthetic access$100(LJAVARuntime/InputDialog;)Z
    .locals 0

    iget-boolean p0, p0, LJAVARuntime/InputDialog;->calledFromEngine:Z

    return p0
.end method

.method public static synthetic access$200(LJAVARuntime/InputDialog;LJAVARuntime/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, LJAVARuntime/InputDialog;->runOnEngine(LJAVARuntime/Runnable;)V

    return-void
.end method

.method private runOnEngine(LJAVARuntime/Runnable;)V
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, LJAVARuntime/InputDialog;->runOnEngine(LJAVARuntime/Runnable;I)V

    return-void
.end method

.method private runOnEngine(LJAVARuntime/Runnable;I)V
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runnable",
            "tries"
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-static {p1}, LK8/a;->I(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 4
    invoke-direct {p0, p1, p2}, LJAVARuntime/InputDialog;->runOnEngine(LJAVARuntime/Runnable;I)V

    :cond_0
    :goto_0
    return-void
.end method

.method private show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LJAVARuntime/InputDialogListener;Landroid/content/Context;LJAVARuntime/InputDialog$Type;)V
    .locals 2
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "defaultText",
            "doneButton",
            "cancelButton",
            "listener",
            "context",
            "type"
        }
    .end annotation

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance p1, Landroid/widget/EditText;

    invoke-direct {p1, p6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {p7}, Ljava/lang/Enum;->ordinal()I

    move-result p6

    const/4 p7, 0x1

    if-eqz p6, :cond_2

    if-eq p6, p7, :cond_1

    const/4 v1, 0x2

    if-eq p6, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p6, 0x1002

    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0

    :cond_1
    const/16 p6, 0x2002

    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0

    :cond_2
    const/16 p6, 0x40

    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setInputType(I)V

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p7}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance p2, LJAVARuntime/InputDialog$2;

    invoke-direct {p2, p0, p5, p1}, LJAVARuntime/InputDialog$2;-><init>(LJAVARuntime/InputDialog;LJAVARuntime/InputDialogListener;Landroid/widget/EditText;)V

    invoke-virtual {v0, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p1, LJAVARuntime/InputDialog$3;

    invoke-direct {p1, p0, p5}, LJAVARuntime/InputDialog$3;-><init>(LJAVARuntime/InputDialog;LJAVARuntime/InputDialogListener;)V

    invoke-virtual {v0, p4, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
