.class public Li5/b$j$a$b;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li5/b$j$a;->b(Landroid/view/View;Lt5/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Lt5/l;

.field public final synthetic d:Landroid/widget/CheckBox;

.field public final synthetic e:Landroid/widget/CheckBox;

.field public final synthetic f:Li5/b$j$a;


# direct methods
.method public constructor <init>(Li5/b$j$a;Landroid/widget/EditText;Lt5/l;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$2",
            "val$resolution",
            "val$panel",
            "val$genTex",
            "val$genUV"
        }
    .end annotation

    iput-object p1, p0, Li5/b$j$a$b;->f:Li5/b$j$a;

    iput-object p2, p0, Li5/b$j$a$b;->b:Landroid/widget/EditText;

    iput-object p3, p0, Li5/b$j$a$b;->c:Lt5/l;

    iput-object p4, p0, Li5/b$j$a$b;->d:Landroid/widget/CheckBox;

    iput-object p5, p0, Li5/b$j$a$b;->e:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Li5/b$j$a$b;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid resolution."

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, -0x1

    invoke-static {p1, v1}, LNc/b;->x1(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_1

    const/16 v0, 0x1000

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Li5/b$j$a$b;->b:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Li5/b$j$a$b;->c:Lt5/l;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    new-instance v0, Li5/b$j$a$b$a;

    invoke-direct {v0, p0, p1}, Li5/b$j$a$b$a;-><init>(Li5/b$j$a$b;I)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Li5/b$j$a$b;->b:Landroid/widget/EditText;

    const-string v0, "Resolution too big."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Li5/b$j$a$b;->b:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Li5/b$j$a$b;->b:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
