.class public LE5/e$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LE5/e;->c(LC5/b;Landroid/view/View;Landroid/widget/TextView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/b;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:LE5/e;


# direct methods
.method public constructor <init>(LE5/e;LC5/b;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$entry",
            "val$inputField"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LE5/e$f;->c:LE5/e;

    iput-object p2, p0, LE5/e$f;->a:LC5/b;

    iput-object p3, p0, LE5/e$f;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "hasFocus"
        }
    .end annotation

    iget-object p1, p0, LE5/e$f;->a:LC5/b;

    invoke-virtual {p1}, LC5/b;->i()Z

    move-result p1

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    iget-object p1, p0, LE5/e$f;->b:Landroid/view/View;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->c(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, LE5/e$f;->a:LC5/b;

    iget-object v0, v0, LC5/b;->b:LD5/h;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string v2, "temp"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LNc/b;->s1(Ljava/lang/String;)D

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object p1, p0, LE5/e$f;->c:LE5/e;

    iput-boolean p2, p1, LE5/e;->a:Z

    :cond_1
    return-void
.end method
