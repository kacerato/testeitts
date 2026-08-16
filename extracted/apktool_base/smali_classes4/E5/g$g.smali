.class public LE5/g$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LE5/g;->e(LC5/b;Landroid/view/View;Landroid/widget/TextView;LE5/g$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/b;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:LE5/g$i;

.field public final synthetic d:LE5/g;


# direct methods
.method public constructor <init>(LE5/g;LC5/b;Landroid/view/View;LE5/g$i;)V
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
            "val$entry",
            "val$inputField",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LE5/g$g;->d:LE5/g;

    iput-object p2, p0, LE5/g$g;->a:LC5/b;

    iput-object p3, p0, LE5/g$g;->b:Landroid/view/View;

    iput-object p4, p0, LE5/g$g;->c:LE5/g$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
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

    iget-object p1, p0, LE5/g$g;->a:LC5/b;

    invoke-virtual {p1}, LC5/b;->i()Z

    move-result p1

    if-nez p1, :cond_2

    if-nez p2, :cond_1

    iget-object p1, p0, LE5/g$g;->b:Landroid/view/View;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->c(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LNc/b;->w1(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, LE5/g$g;->c:LE5/g$i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, LE5/g$i;->c(I)I

    move-result p1

    :cond_0
    iget-object v0, p0, LE5/g$g;->a:LC5/b;

    iget-object v0, v0, LC5/b;->b:LD5/h;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string v2, "temp"

    invoke-direct {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    iget-object v0, p0, LE5/g$g;->c:LE5/g$i;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, LE5/g$i;->b(I)V

    :cond_1
    iget-object p1, p0, LE5/g$g;->d:LE5/g;

    iput-boolean p2, p1, LE5/g;->a:Z

    :cond_2
    return-void
.end method
