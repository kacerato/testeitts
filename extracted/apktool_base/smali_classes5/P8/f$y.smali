.class public LP8/f$y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP8/f;->A(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZLP8/p;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[I

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:LP8/p;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public constructor <init>([ILjava/util/List;LP8/p;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$deletingPos",
            "val$list",
            "val$listener",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LP8/f$y;->a:[I

    iput-object p2, p0, LP8/f$y;->b:Ljava/util/List;

    iput-object p3, p0, LP8/f$y;->c:LP8/p;

    iput-object p4, p0, LP8/f$y;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listItem",
            "adapterPosition"
        }
    .end annotation

    iget-object v0, p0, LP8/f$y;->a:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    if-ne v2, p2, :cond_0

    const/4 p2, -0x1

    aput p2, v0, v1

    iget-object p2, p0, LP8/f$y;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, LP8/f$y;->c:LP8/p;

    if-eqz p1, :cond_1

    invoke-interface {p1}, LP8/p;->b()V

    goto :goto_0

    :cond_0
    aput p2, v0, v1

    iget-object p1, p0, LP8/f$y;->d:Landroid/content/Context;

    const-string p2, "Tap again to remove element"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method
