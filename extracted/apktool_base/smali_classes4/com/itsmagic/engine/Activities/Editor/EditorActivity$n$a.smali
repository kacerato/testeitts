.class public Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->h(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n$a;->c:Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n$a;->c:Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->e:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n$a;->c:Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->e:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    sget-object v0, LW7/b;->f:LC8/a;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n$a;->c:Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->e:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, LC8/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n$a;->c:Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;->e:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
