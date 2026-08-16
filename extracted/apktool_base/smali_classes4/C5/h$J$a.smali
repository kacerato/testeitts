.class public LC5/h$J$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/h$J;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LC5/h$J;


# direct methods
.method public constructor <init>(LC5/h$J;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$finalI"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LC5/h$J$a;->b:LC5/h$J;

    iput p2, p0, LC5/h$J$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, LC5/h$J$a;->b:LC5/h$J;

    iget-object v0, p1, LC5/h$J;->c:Landroid/widget/TextView;

    iget-object p1, p1, LC5/h$J;->b:LC5/b;

    iget-object p1, p1, LC5/b;->z:Ljava/util/List;

    iget v1, p0, LC5/h$J$a;->a:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string v0, ""

    iget v1, p0, LC5/h$J$a;->a:I

    invoke-direct {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, LC5/h$J$a;->b:LC5/h$J;

    iget-object v1, v0, LC5/h$J;->d:Landroid/view/View;

    iput-object v1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->c:Landroid/view/View;

    iget-object v0, v0, LC5/h$J;->b:LC5/b;

    iget-object v0, v0, LC5/b;->b:LD5/h;

    invoke-interface {v0, p1}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
