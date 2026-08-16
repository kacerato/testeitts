.class public LC5/h$W$e$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LC5/h$W$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/h$W$e;


# direct methods
.method public constructor <init>(LC5/h$W$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LC5/h$W$e$l;->a:LC5/h$W$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, LC5/h$W$e$l;->a:LC5/h$W$e;

    iget-object p1, p1, LC5/h$W$e;->b:LC5/h$W;

    iget-object p1, p1, LC5/h$W;->b:Landroid/widget/TextView;

    const-string v0, "square90.obj"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, LC5/h$W$e$l;->a:LC5/h$W$e;

    iget-object p1, p1, LC5/h$W$e;->b:LC5/h$W;

    iget-object p1, p1, LC5/h$W;->c:LC5/b;

    iget-object p1, p1, LC5/b;->b:LD5/h;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string v1, ""

    const-string v2, "@@ASSET@@Engine/Primitives/Models/square90.obj"

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    return-void
.end method
