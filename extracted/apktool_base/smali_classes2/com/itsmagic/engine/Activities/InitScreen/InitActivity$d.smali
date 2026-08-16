.class public Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkd/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$act"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$d;->b:Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$d;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$d;->b:Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->i(Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lkd/a;

    invoke-direct {v0}, Lkd/a;-><init>()V

    const/16 v1, 0x32

    invoke-virtual {v0, v1, p0}, Lkd/a;->a(ILkd/b;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$d;->b:Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$d;->a:Landroid/app/Activity;

    const-class v3, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$d;->b:Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
