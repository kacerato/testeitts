.class public Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$b;->b:Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$b;->b:Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lec/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lmc/k;->d(Landroid/content/Context;Ljava/io/File;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$b;->b:Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->i(Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
