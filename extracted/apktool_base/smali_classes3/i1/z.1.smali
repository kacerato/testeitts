.class public final Li1/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu2/b;


# annotations
.annotation build Landroidx/annotation/UiThread;
.end annotation


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Li1/d;

.field public final c:Li1/K;

.field public final d:Li1/n;

.field public final e:Li1/E;

.field public final f:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/I;",
            ">;"
        }
    .end annotation
.end field

.field public g:Landroid/app/Dialog;

.field public h:Li1/I;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li1/y;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lu2/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li1/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Li1/d;Li1/K;Li1/n;Li1/E;Li1/p0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Li1/d;",
            "Li1/K;",
            "Li1/n;",
            "Li1/E;",
            "Li1/p0<",
            "Li1/I;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Li1/z;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Li1/z;->j:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Li1/z;->k:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Li1/z;->l:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Li1/z;->a:Landroid/app/Application;

    iput-object p2, p0, Li1/z;->b:Li1/d;

    iput-object p3, p0, Li1/z;->c:Li1/K;

    iput-object p4, p0, Li1/z;->d:Li1/n;

    iput-object p5, p0, Li1/z;->e:Li1/E;

    iput-object p6, p0, Li1/z;->f:Li1/p0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lu2/b$a;)V
    .locals 4

    invoke-static {}, Li1/h0;->a()V

    iget-object v0, p0, Li1/z;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzj;

    const-string v0, "ConsentForm#show can only be invoked once."

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzj;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzj;->zza()Lu2/e;

    move-result-object p1

    invoke-interface {p2, p1}, Lu2/b$a;->a(Lu2/e;)V

    return-void

    :cond_0
    new-instance v0, Li1/x;

    invoke-direct {v0, p0, p1}, Li1/x;-><init>(Li1/z;Landroid/app/Activity;)V

    iget-object v3, p0, Li1/z;->a:Landroid/app/Application;

    invoke-virtual {v3, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v3, p0, Li1/z;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Li1/z;->c:Li1/K;

    invoke-virtual {v0, p1}, Li1/K;->a(Landroid/app/Activity;)V

    new-instance v0, Landroid/app/Dialog;

    const v3, 0x1030010

    invoke-direct {v0, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iget-object p1, p0, Li1/z;->h:Li1/I;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzj;

    const-string v0, "Activity with null windows is passed in."

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzj;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzj;->zza()Lu2/e;

    move-result-object p1

    invoke-interface {p2, p1}, Lu2/b$a;->a(Lu2/e;)V

    return-void

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setLayout(II)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Li1/z;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iput-object v0, p0, Li1/z;->g:Landroid/app/Dialog;

    iget-object p1, p0, Li1/z;->h:Li1/I;

    const-string p2, "UMP_messagePresented"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Li1/I;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Li1/I;
    .locals 1

    iget-object v0, p0, Li1/z;->h:Li1/I;

    return-object v0
.end method

.method public final c(Lu2/f$b;Lu2/f$a;)V
    .locals 9

    iget-object v0, p0, Li1/z;->f:Li1/p0;

    check-cast v0, Li1/J;

    invoke-virtual {v0}, Li1/J;->a()Li1/I;

    move-result-object v0

    iput-object v0, p0, Li1/z;->h:Li1/I;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v1, Li1/H;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Li1/H;-><init>(Li1/I;Li1/G;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Li1/z;->j:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Li1/y;

    invoke-direct {v1, p1, p2, v2}, Li1/y;-><init>(Lu2/f$b;Lu2/f$a;Li1/w;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v3, p0, Li1/z;->h:Li1/I;

    iget-object p1, p0, Li1/z;->e:Li1/E;

    invoke-virtual {p1}, Li1/E;->a()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Li1/z;->e:Li1/E;

    invoke-virtual {p1}, Li1/E;->b()Ljava/lang/String;

    move-result-object v5

    const-string v7, "UTF-8"

    const/4 v8, 0x0

    const-string v6, "text/html"

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Li1/h0;->a:Landroid/os/Handler;

    new-instance p2, Li1/v;

    invoke-direct {p2, p0}, Li1/v;-><init>(Li1/z;)V

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final d(I)V
    .locals 3

    invoke-virtual {p0}, Li1/z;->h()V

    iget-object p1, p0, Li1/z;->k:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu2/b$a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Li1/z;->d:Li1/n;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Li1/n;->f(I)V

    invoke-interface {p1, v0}, Lu2/b$a;->a(Lu2/e;)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/consent_sdk/zzj;)V
    .locals 2

    invoke-virtual {p0}, Li1/z;->h()V

    iget-object v0, p0, Li1/z;->k:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu2/b$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzj;->zza()Lu2/e;

    move-result-object p1

    invoke-interface {v0, p1}, Lu2/b$a;->a(Lu2/e;)V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Li1/z;->j:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li1/y;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Li1/y;->a(Lu2/b;)V

    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/consent_sdk/zzj;)V
    .locals 2

    iget-object v0, p0, Li1/z;->j:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li1/y;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzj;->zza()Lu2/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Li1/y;->b(Lu2/e;)V

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Li1/z;->g:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Li1/z;->g:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Li1/z;->c:Li1/K;

    invoke-virtual {v0, v1}, Li1/K;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Li1/z;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li1/x;

    if-eqz v0, :cond_1

    iget-object v1, v0, Li1/x;->c:Li1/z;

    iget-object v1, v1, Li1/z;->a:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_1
    return-void
.end method
