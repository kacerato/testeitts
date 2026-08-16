.class public Lcom/itsmagic/engine/Activities/Editor/EditorActivity$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW7/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->X(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$o;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameID"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$o;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->J(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$o;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->A(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;I)I

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$o;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    iget-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->g:Landroid/app/Activity;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->E(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$o;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->J(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public d(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oglContext"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$o;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->F(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;Landroid/content/Context;)V

    return-void
.end method
