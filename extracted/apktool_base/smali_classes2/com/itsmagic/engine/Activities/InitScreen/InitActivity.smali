.class public Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$e;
    }
.end annotation


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/InitScreen/a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/widget/LinearLayout;

.field public d:I

.field public e:Lcom/itsmagic/engine/Activities/InitScreen/a;

.field public f:Landroid/view/LayoutInflater;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->b:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/c;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->c:Landroid/widget/LinearLayout;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->h:Ljava/util/List;

    return-void
.end method

.method public static synthetic g(Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;)Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->f:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method public static synthetic h(Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic i(Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic j(Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->k()V

    return-void
.end method


# virtual methods
.method public final k()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->d:I

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->e:Lcom/itsmagic/engine/Activities/InitScreen/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/InitScreen/a;->h()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->e:Lcom/itsmagic/engine/Activities/InitScreen/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/InitScreen/a;->j(Lcom/itsmagic/engine/Activities/InitScreen/a$a;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->d:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/InitScreen/a;

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/InitScreen/a;->i(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$c;-><init>(Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/InitScreen/a;->j(Lcom/itsmagic/engine/Activities/InitScreen/a$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->c:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->f:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, p0, v2}, Lcom/itsmagic/engine/Activities/InitScreen/a;->e(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/InitScreen/a;->g()V

    return-void

    :cond_1
    iget v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->d:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lkd/a;

    invoke-direct {v0}, Lkd/a;-><init>()V

    new-instance v1, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$d;

    invoke-direct {v1, p0, p0}, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$d;-><init>(Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;Landroid/app/Activity;)V

    const/16 v2, 0x32

    invoke-virtual {v0, v2, v1}, Lkd/a;->a(ILkd/b;)V

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method public final l()V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "intent"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->h:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$e;

    iget v3, v2, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$e;->a:I

    if-ne v3, p1, :cond_0

    iget-object p1, v2, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$e;->b:Lv3/l;

    invoke-interface {p1, p2, p3}, Lv3/l;->a(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->h:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->l()V

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x802

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    const p1, 0x7f0c0020

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    const p1, 0x7f090159

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->c:Landroid/widget/LinearLayout;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->f:Landroid/view/LayoutInflater;

    new-instance p1, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$a;

    invoke-direct {p1, p0, p0}, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$a;-><init>(Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;)V

    invoke-static {p1}, LN7/c;->l0(LN7/d;)V

    const/4 p1, 0x0

    :goto_3
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/InitScreen/a;

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/InitScreen/a;->k(Landroid/app/Activity;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_1
    const/4 p1, -0x1

    iput p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->d:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->k()V

    new-instance p1, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$b;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$b;-><init>(Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;)V

    invoke-static {p1}, LO9/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method
