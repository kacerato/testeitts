.class public Lb8/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LLb/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb8/f;->g(Landroid/app/Activity;Lb8/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lb8/g;

.field public final synthetic c:Lb8/f;


# direct methods
.method public constructor <init>(Lb8/f;Landroid/app/Activity;Lb8/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$activity",
            "val$saveListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lb8/f$c;->c:Lb8/f;

    iput-object p2, p0, Lb8/f$c;->a:Landroid/app/Activity;

    iput-object p3, p0, Lb8/f$c;->b:Lb8/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Lbd/a;

    const-string v1, "Save failed!"

    const-string v2, "O salvamento falhou!"

    invoke-direct {v0, v1, v2}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, LN7/c;->u0(Lbd/a;)V

    iget-object v0, p0, Lb8/f$c;->a:Landroid/app/Activity;

    new-instance v1, Lb8/f$c$b;

    invoke-direct {v1, p0}, Lb8/f$c$b;-><init>(Lb8/f$c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->j0()V

    new-instance v0, Lb8/f$c$a;

    invoke-direct {v0, p0}, Lb8/f$c$a;-><init>(Lb8/f$c;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method
