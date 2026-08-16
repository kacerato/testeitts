.class public LC5/h$K$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LC5/h$K$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/h$K$a;


# direct methods
.method public constructor <init>(LC5/h$K$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LC5/h$K$a$a;->a:LC5/h$K$a;

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
            "v"
        }
    .end annotation

    iget-object p1, p0, LC5/h$K$a$a;->a:LC5/h$K$a;

    iget-object p1, p1, LC5/h$K$a;->b:LC5/h$K;

    iget-object v0, p1, LC5/h$K;->b:LC5/b;

    iget-object v1, p1, LC5/h$K;->c:Landroid/content/Context;

    iget-object p1, p1, LC5/h$K;->d:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, LC5/h;->n(LC5/b;Landroid/content/Context;Landroid/widget/ImageView;)V

    return-void
.end method
