.class public LE5/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LE5/c;->b(LC5/b;Landroid/view/View;Landroid/widget/TextView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/b;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:LE5/c;


# direct methods
.method public constructor <init>(LE5/c;LC5/b;Landroid/view/View;)V
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

    iput-object p1, p0, LE5/c$d;->c:LE5/c;

    iput-object p2, p0, LE5/c$d;->a:LC5/b;

    iput-object p3, p0, LE5/c$d;->b:Landroid/view/View;

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

    iget-object p1, p0, LE5/c$d;->a:LC5/b;

    invoke-virtual {p1}, LC5/b;->i()Z

    move-result p1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    iget-object p1, p0, LE5/c$d;->b:Landroid/view/View;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->c(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, LTc/b;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "temp"

    const/4 v2, 0x0

    if-lt v0, p2, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iget-object p2, p0, LE5/c$d;->a:LC5/b;

    iget-object p2, p2, LC5/b;->b:LD5/h;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, v0}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, LE5/c$d;->b:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->d(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LE5/c$d;->a:LC5/b;

    iget-object p1, p1, LC5/b;->b:LD5/h;

    new-instance p2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {p2, v1, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, p2}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    iget-object p1, p0, LE5/c$d;->a:LC5/b;

    iget-object p1, p1, LC5/b;->b:LD5/h;

    new-instance p2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {p2, v1, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, p2}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, LE5/c$d;->b:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->d(Ljava/lang/String;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
