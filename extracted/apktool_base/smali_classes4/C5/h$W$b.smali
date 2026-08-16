.class public LC5/h$W$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LC5/h$W;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/h$W;


# direct methods
.method public constructor <init>(LC5/h$W;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LC5/h$W$b;->a:LC5/h$W;

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

    iget-object p1, p0, LC5/h$W$b;->a:LC5/h$W;

    iget-object v0, p1, LC5/h$W;->c:LC5/b;

    iget-object v1, p1, LC5/h$W;->b:Landroid/widget/TextView;

    iget-object v2, p1, LC5/h$W;->d:Landroid/content/Context;

    iget-object p1, p1, LC5/h$W;->e:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p1}, LC5/h;->i(LC5/b;Landroid/widget/TextView;Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method
