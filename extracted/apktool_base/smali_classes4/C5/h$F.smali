.class public LC5/h$F;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LC5/b;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(LC5/b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$entry",
            "val$positionInAdapter"
        }
    .end annotation

    iput-object p1, p0, LC5/h$F;->b:LC5/b;

    iput p2, p0, LC5/h$F;->c:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LC5/h$F;->b:LC5/b;

    iget-object v0, v0, LC5/b;->b:LD5/h;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string v2, ""

    iget v3, p0, LC5/h$F;->c:I

    invoke-direct {v1, v2, v3}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, LC5/h$F;->b:LC5/b;

    iget-object v0, v0, LC5/b;->e:LD5/a;

    if-eqz v0, :cond_1

    iget v1, p0, LC5/h$F;->c:I

    invoke-interface {v0, p1, v1}, LD5/a;->a(Landroid/view/View;I)V

    :cond_1
    iget-object v0, p0, LC5/h$F;->b:LC5/b;

    iget-object v0, v0, LC5/b;->D:LD5/b;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, LD5/b;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method
