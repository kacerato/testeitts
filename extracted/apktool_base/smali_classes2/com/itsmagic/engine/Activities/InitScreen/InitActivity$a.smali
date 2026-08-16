.class public Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$a;
.super LN7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$activity"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$a;->b:Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$a;->a:Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;

    invoke-direct {p0}, LN7/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$a;->a:Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$a;->a:Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;

    return-object v0
.end method

.method public w()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$a;->b:Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->g(Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public y(ILandroid/content/Intent;Lv3/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "intent",
            "listener"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$a;->b:Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->h(Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$a;->b:Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->h(Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$e;

    invoke-direct {v2, p1, p3}, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$e;-><init>(ILv3/l;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p3, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$a;->a:Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;

    invoke-virtual {p3, p2, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
