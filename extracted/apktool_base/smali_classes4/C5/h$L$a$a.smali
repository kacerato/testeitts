.class public LC5/h$L$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LC5/h$L$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/h$L$a;


# direct methods
.method public constructor <init>(LC5/h$L$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LC5/h$L$a$a;->a:LC5/h$L$a;

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

    iget-object p1, p0, LC5/h$L$a$a;->a:LC5/h$L$a;

    iget-object p1, p1, LC5/h$L$a;->b:LC5/h$L;

    iget-object v0, p1, LC5/h$L;->b:LC5/b;

    iget-object v1, v0, LC5/b;->n:LC5/b$a;

    sget-object v2, LC5/b$a;->UIStyle:LC5/b$a;

    if-ne v1, v2, :cond_0

    iget-object v1, p1, LC5/h$L;->c:Landroid/content/Context;

    iget-object p1, p1, LC5/h$L;->d:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, LC5/h;->p(LC5/b;Landroid/content/Context;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_0
    iget-object v1, p1, LC5/h$L;->c:Landroid/content/Context;

    iget-object p1, p1, LC5/h$L;->d:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, LC5/h;->n(LC5/b;Landroid/content/Context;Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method
