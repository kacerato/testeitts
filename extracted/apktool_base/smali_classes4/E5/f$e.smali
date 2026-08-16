.class public LE5/f$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LE5/f;->e(LC5/b;Landroid/view/View;Landroid/widget/TextView;Landroid/content/Context;LE5/f$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LE5/f$i;

.field public final synthetic c:LC5/b;

.field public final synthetic d:Lcom/google/android/material/textfield/TextInputEditText;

.field public final synthetic e:LE5/f;


# direct methods
.method public constructor <init>(LE5/f;LE5/f$i;LC5/b;Lcom/google/android/material/textfield/TextInputEditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener",
            "val$entry",
            "val$tiet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LE5/f$e;->e:LE5/f;

    iput-object p2, p0, LE5/f$e;->b:LE5/f$i;

    iput-object p3, p0, LE5/f$e;->c:LC5/b;

    iput-object p4, p0, LE5/f$e;->d:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "actionId",
            "event"
        }
    .end annotation

    const/4 p3, 0x6

    if-ne p2, p3, :cond_2

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LNc/b;->u1(Ljava/lang/String;)F

    move-result p1

    iget-object p2, p0, LE5/f$e;->b:LE5/f$i;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, LE5/f$i;->a(F)F

    move-result p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p2, p0, LE5/f$e;->c:LC5/b;

    iget-object p2, p2, LC5/b;->b:LD5/h;

    new-instance p3, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string v0, "temp"

    invoke-direct {p3, v0, p1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;F)V

    invoke-interface {p2, p3}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    iget-object p2, p0, LE5/f$e;->b:LE5/f$i;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, LE5/f$i;->b(F)V

    :cond_1
    iget-object p1, p0, LE5/f$e;->d:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    const/4 p1, 0x0

    return p1
.end method
