.class public LJAVARuntime/PopupDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Input"
    }
.end annotation


# static fields
.field public static final ALERT:I = 0x32

.field public static final ERROR:I = 0x31

.field public static final PROGRESS:I = 0x33

.field public static final SUCCESS:I = 0x30


# instance fields
.field private transient calledFromEngine:Z

.field public transient dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 5
    const-string v0, ""

    invoke-direct {p0, p1, v0, v0}, LJAVARuntime/PopupDialog;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "type",
            "title",
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "title",
            "message"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, LJAVARuntime/PopupDialog;->calledFromEngine:Z

    .line 10
    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_1

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
    iput-boolean v0, p0, LJAVARuntime/PopupDialog;->calledFromEngine:Z

    .line 13
    invoke-direct {p0, p1, v7, p2, p3}, LJAVARuntime/PopupDialog;->create(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, LJAVARuntime/PopupDialog;->calledFromEngine:Z

    .line 16
    new-instance v0, LJAVARuntime/PopupDialog$1;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, v7

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, LJAVARuntime/PopupDialog$1;-><init>(LJAVARuntime/PopupDialog;ILandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcn/pedant/SweetAlert/SweetAlertDialog;)V
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, LJAVARuntime/PopupDialog;->calledFromEngine:Z

    .line 4
    iput-object p1, p0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "title",
            "message"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "title",
            "message"
        }
    .end annotation

    const/16 v0, 0x30

    .line 6
    invoke-direct {p0, v0, p1, p2}, LJAVARuntime/PopupDialog;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(LJAVARuntime/PopupDialog;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, LJAVARuntime/PopupDialog;->create(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(LJAVARuntime/PopupDialog;)Z
    .locals 0

    iget-boolean p0, p0, LJAVARuntime/PopupDialog;->calledFromEngine:Z

    return p0
.end method

.method public static synthetic access$200(LJAVARuntime/PopupDialog;LJAVARuntime/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, LJAVARuntime/PopupDialog;->runOnEngine(LJAVARuntime/Runnable;)V

    return-void
.end method

.method private create(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "context",
            "title",
            "message"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p1, Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x5

    invoke-direct {p1, p2, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    goto :goto_0

    :pswitch_1
    new-instance p1, Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x3

    invoke-direct {p1, p2, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    goto :goto_0

    :pswitch_2
    new-instance p1, Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    goto :goto_0

    :pswitch_3
    new-instance p1, Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x2

    invoke-direct {p1, p2, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    :goto_0
    iget-object p1, p0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1, p3}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1, p4}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    invoke-direct {p0, p1, v0}, LJAVARuntime/PopupDialog;->runOnEngine(LJAVARuntime/Runnable;I)V

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
    invoke-direct {p0, p1, p2}, LJAVARuntime/PopupDialog;->runOnEngine(LJAVARuntime/Runnable;I)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public changeType(I)V
    .locals 4
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, LJAVARuntime/PopupDialog;->calledFromEngine:Z

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->changeAlertType(I)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->changeAlertType(I)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->changeAlertType(I)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->changeAlertType(I)V

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    iput-boolean v1, p0, LJAVARuntime/PopupDialog;->calledFromEngine:Z

    new-instance v1, LJAVARuntime/PopupDialog$16;

    invoke-direct {v1, p0, p1}, LJAVARuntime/PopupDialog$16;-><init>(LJAVARuntime/PopupDialog;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dismiss()V
    .locals 3

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

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

    const/4 v0, 0x0

    iput-boolean v0, p0, LJAVARuntime/PopupDialog;->calledFromEngine:Z

    iget-object v0, p0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, LJAVARuntime/PopupDialog;->calledFromEngine:Z

    new-instance v1, LJAVARuntime/PopupDialog$18;

    invoke-direct {v1, p0}, LJAVARuntime/PopupDialog$18;-><init>(LJAVARuntime/PopupDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->getContentText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the title of the dialog."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o t\u00edtulo do di\u00e1logo."
    .end annotation

    iget-object v0, p0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->getTitleText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTittle()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/DeprecatedInfo;
        info = {
            "Incorrect grammar or spelling"
        }
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the title of the dialog."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o t\u00edtulo do di\u00e1logo."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, LJAVARuntime/PopupDialog;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCancelButton(Ljava/lang/String;LJAVARuntime/Listener;)V
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "text",
            "popupDialogListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "popupDialogListener"
        }
    .end annotation

    .line 9
    const-string v0, "PopupDialog setCancelButton(String text, Listener Listener) is deprecated, use (String text, PopupDialogListener popupDialogListener) instead"

    invoke-static {v0}, LJAVARuntime/Terminal;->log(Ljava/lang/String;)V

    .line 10
    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

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

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, LJAVARuntime/PopupDialog;->calledFromEngine:Z

    .line 13
    iget-object v0, p0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {v0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    .line 14
    iget-object p1, p0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    new-instance v0, LJAVARuntime/PopupDialog$11;

    invoke-direct {v0, p0, p2}, LJAVARuntime/PopupDialog$11;-><init>(LJAVARuntime/PopupDialog;LJAVARuntime/Listener;)V

    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    goto :goto_0

    :catch_0
    move-exception v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, LJAVARuntime/PopupDialog;->calledFromEngine:Z

    .line 17
    new-instance v1, LJAVARuntime/PopupDialog$10;

    invoke-direct {v1, p0, p1, p2}, LJAVARuntime/PopupDialog$10;-><init>(LJAVARuntime/PopupDialog;Ljava/lang/String;LJAVARuntime/Listener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCancelButton(Ljava/lang/String;LJAVARuntime/PopupDialogListener;)V
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "text",
            "popupDialogListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "popupDialogListener"
        }
    .end annotation

    .line 1
    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
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

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, LJAVARuntime/PopupDialog;->calledFromEngine:Z

    .line 4
    iget-object v0, p0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {v0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    .line 5
    iget-object p1, p0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    new-instance v0, LJAVARuntime/PopupDialog$5;

    invoke-direct {v0, p0, p2}, LJAVARuntime/PopupDialog$5;-><init>(LJAVARuntime/PopupDialog;LJAVARuntime/PopupDialogListener;)V

    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, LJAVARuntime/PopupDialog;->calledFromEngine:Z

    .line 8
    new-instance v1, LJAVARuntime/PopupDialog$4;

    invoke-direct {v1, p0, p1, p2}, LJAVARuntime/PopupDialog$4;-><init>(LJAVARuntime/PopupDialog;Ljava/lang/String;LJAVARuntime/PopupDialogListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setConfirmButton(Ljava/lang/String;LJAVARuntime/Listener;)V
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "text",
            "popupDialogListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "popupDialogListener"
        }
    .end annotation

    .line 9
    const-string v0, "PopupDialog setConfirmButton(String text, Listener Listener) is deprecated, use (String text, PopupDialogListener popupDialogListener) instead"

    invoke-static {v0}, LJAVARuntime/Terminal;->log(Ljava/lang/String;)V

    .line 10
    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

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

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, LJAVARuntime/PopupDialog;->calledFromEngine:Z

    .line 13
    iget-object v0, p0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {v0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    .line 14
    iget-object p1, p0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    new-instance v0, LJAVARuntime/PopupDialog$9;

    invoke-direct {v0, p0, p2}, LJAVARuntime/PopupDialog$9;-><init>(LJAVARuntime/PopupDialog;LJAVARuntime/Listener;)V

    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    goto :goto_0

    :catch_0
    move-exception v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, LJAVARuntime/PopupDialog;->calledFromEngine:Z

    .line 17
    new-instance v1, LJAVARuntime/PopupDialog$8;

    invoke-direct {v1, p0, p1, p2}, LJAVARuntime/PopupDialog$8;-><init>(LJAVARuntime/PopupDialog;Ljava/lang/String;LJAVARuntime/Listener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setConfirmButton(Ljava/lang/String;LJAVARuntime/PopupDialogListener;)V
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "text",
            "popupDialogListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "popupDialogListener"
        }
    .end annotation

    .line 1
    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
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

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, LJAVARuntime/PopupDialog;->calledFromEngine:Z

    .line 4
    iget-object v0, p0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {v0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    .line 5
    iget-object p1, p0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    new-instance v0, LJAVARuntime/PopupDialog$3;

    invoke-direct {v0, p0, p2}, LJAVARuntime/PopupDialog$3;-><init>(LJAVARuntime/PopupDialog;LJAVARuntime/PopupDialogListener;)V

    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, LJAVARuntime/PopupDialog;->calledFromEngine:Z

    .line 8
    new-instance v1, LJAVARuntime/PopupDialog$2;

    invoke-direct {v1, p0, p1, p2}, LJAVARuntime/PopupDialog$2;-><init>(LJAVARuntime/PopupDialog;Ljava/lang/String;LJAVARuntime/PopupDialogListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 3
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
            "value"
        }
    .end annotation

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

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

    const/4 v0, 0x0

    iput-boolean v0, p0, LJAVARuntime/PopupDialog;->calledFromEngine:Z

    iget-object v0, p0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {v0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, LJAVARuntime/PopupDialog;->calledFromEngine:Z

    new-instance v1, LJAVARuntime/PopupDialog$15;

    invoke-direct {v1, p0, p1}, LJAVARuntime/PopupDialog$15;-><init>(LJAVARuntime/PopupDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMidButton(Ljava/lang/String;LJAVARuntime/Listener;)V
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "text",
            "popupDialogListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "popupDialogListener"
        }
    .end annotation

    .line 9
    const-string v0, "PopupDialog setMidButton(String text, Listener Listener) is deprecated, use (String text, PopupDialogListener popupDialogListener) instead"

    invoke-static {v0}, LJAVARuntime/Terminal;->log(Ljava/lang/String;)V

    .line 10
    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

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

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, LJAVARuntime/PopupDialog;->calledFromEngine:Z

    .line 13
    iget-object v0, p0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {v0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setNeutralText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    .line 14
    iget-object p1, p0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    new-instance v0, LJAVARuntime/PopupDialog$13;

    invoke-direct {v0, p0, p2}, LJAVARuntime/PopupDialog$13;-><init>(LJAVARuntime/PopupDialog;LJAVARuntime/Listener;)V

    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setNeutralClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    goto :goto_0

    :catch_0
    move-exception v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, LJAVARuntime/PopupDialog;->calledFromEngine:Z

    .line 17
    new-instance v1, LJAVARuntime/PopupDialog$12;

    invoke-direct {v1, p0, p1, p2}, LJAVARuntime/PopupDialog$12;-><init>(LJAVARuntime/PopupDialog;Ljava/lang/String;LJAVARuntime/Listener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMidButton(Ljava/lang/String;LJAVARuntime/PopupDialogListener;)V
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "text",
            "popupDialogListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "popupDialogListener"
        }
    .end annotation

    .line 1
    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
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

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, LJAVARuntime/PopupDialog;->calledFromEngine:Z

    .line 4
    iget-object v0, p0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {v0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setNeutralText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    .line 5
    iget-object p1, p0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    new-instance v0, LJAVARuntime/PopupDialog$7;

    invoke-direct {v0, p0, p2}, LJAVARuntime/PopupDialog$7;-><init>(LJAVARuntime/PopupDialog;LJAVARuntime/PopupDialogListener;)V

    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setNeutralClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, LJAVARuntime/PopupDialog;->calledFromEngine:Z

    .line 8
    new-instance v1, LJAVARuntime/PopupDialog$6;

    invoke-direct {v1, p0, p1, p2}, LJAVARuntime/PopupDialog$6;-><init>(LJAVARuntime/PopupDialog;Ljava/lang/String;LJAVARuntime/PopupDialogListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime LJAVARuntime/DeprecatedInfo;
        info = {
            "Incorrect name, use setTitle()"
        }
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the title of the dialog."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o t\u00edtulo do di\u00e1logo."
    .end annotation

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
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, LJAVARuntime/PopupDialog;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the title of the dialog."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o t\u00edtulo do di\u00e1logo."
    .end annotation

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
            "value"
        }
    .end annotation

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

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

    const/4 v0, 0x0

    iput-boolean v0, p0, LJAVARuntime/PopupDialog;->calledFromEngine:Z

    iget-object v0, p0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {v0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, LJAVARuntime/PopupDialog;->calledFromEngine:Z

    new-instance v1, LJAVARuntime/PopupDialog$14;

    invoke-direct {v1, p0, p1}, LJAVARuntime/PopupDialog$14;-><init>(LJAVARuntime/PopupDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public show()V
    .locals 3

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

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

    const/4 v0, 0x0

    iput-boolean v0, p0, LJAVARuntime/PopupDialog;->calledFromEngine:Z

    iget-object v0, p0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, LJAVARuntime/PopupDialog;->calledFromEngine:Z

    new-instance v1, LJAVARuntime/PopupDialog$17;

    invoke-direct {v1, p0}, LJAVARuntime/PopupDialog$17;-><init>(LJAVARuntime/PopupDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
