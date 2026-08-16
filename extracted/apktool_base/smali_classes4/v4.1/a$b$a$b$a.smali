.class public Lv4/a$b$a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv4/a$b$a$b;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Lv4/a$b$a$b;


# direct methods
.method public constructor <init>(Lv4/a$b$a$b;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$3",
            "val$input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lv4/a$b$a$b$a;->c:Lv4/a$b$a$b;

    iput-object p2, p0, Lv4/a$b$a$b$a;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    invoke-static {}, LN7/c;->Y()V

    iget-object p1, p0, Lv4/a$b$a$b$a;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-static {p1, p2}, LNc/b;->x1(Ljava/lang/String;I)I

    move-result p1

    if-le p1, p2, :cond_1

    iget-object p2, p0, Lv4/a$b$a$b$a;->c:Lv4/a$b$a$b;

    iget-object p2, p2, Lv4/a$b$a$b;->a:Lv4/a$b$a;

    iget-object p2, p2, Lv4/a$b$a;->b:Lv4/a$b;

    iget-object p2, p2, Lv4/a$b;->b:Lv4/b;

    iget-object p2, p2, Lv4/b;->b:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->i()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->x(I)V

    iget-object p1, p0, Lv4/a$b$a$b$a;->c:Lv4/a$b$a$b;

    iget-object p1, p1, Lv4/a$b$a$b;->a:Lv4/a$b$a;

    iget-object p1, p1, Lv4/a$b$a;->b:Lv4/a$b;

    iget-object p1, p1, Lv4/a$b;->b:Lv4/b;

    iget-object p1, p1, Lv4/b;->d:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->m()V

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->W2()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lv4/a$b$a$b$a;->c:Lv4/a$b$a$b;

    iget-object p1, p1, Lv4/a$b$a$b;->a:Lv4/a$b$a;

    iget-object p1, p1, Lv4/a$b$a;->b:Lv4/a$b;

    iget-object p1, p1, Lv4/a$b;->c:Lv4/a;

    invoke-static {p1}, Lv4/a;->g(Lv4/a;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "Invalid keyframe Time"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
