.class public Lcom/itsmagic/engine/Utils/Network/NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static d:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/itsmagic/engine/Utils/Network/NetworkChangeReceiver;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/itsmagic/engine/Utils/Network/NetworkChangeReceiver;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Utils/Network/NetworkChangeReceiver;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    sput v0, Lcom/itsmagic/engine/Utils/Network/NetworkChangeReceiver;->d:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 3

    sget-object v0, Lcom/itsmagic/engine/Utils/Network/NetworkChangeReceiver;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/itsmagic/engine/Utils/Network/NetworkChangeReceiver;->d:F

    invoke-static {}, LK8/d;->e()F

    move-result v2

    add-float/2addr v1, v2

    sput v1, Lcom/itsmagic/engine/Utils/Network/NetworkChangeReceiver;->d:F

    const/high16 v2, 0x41700000    # 15.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 v1, 0x0

    sput v1, Lcom/itsmagic/engine/Utils/Network/NetworkChangeReceiver;->d:F

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/itsmagic/engine/Utils/Network/NetworkChangeReceiver$a;

    invoke-direct {v2}, Lcom/itsmagic/engine/Utils/Network/NetworkChangeReceiver$a;-><init>()V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance v2, Lcom/itsmagic/engine/Utils/Network/NetworkChangeReceiver$b;

    invoke-direct {v2}, Lcom/itsmagic/engine/Utils/Network/NetworkChangeReceiver$b;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    :try_start_0
    sget-object p1, Lcom/itsmagic/engine/Activities/App;->c:Lu3/a;

    invoke-interface {p1}, Lu3/a;->a()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcd/a;->a(Landroid/app/Application;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "wifi"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p2, Lcom/itsmagic/engine/Utils/Network/NetworkChangeReceiver;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method
