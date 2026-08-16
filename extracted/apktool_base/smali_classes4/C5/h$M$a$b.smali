.class public LC5/h$M$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LC5/h$M$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/h$M$a;


# direct methods
.method public constructor <init>(LC5/h$M$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LC5/h$M$a$b;->a:LC5/h$M$a;

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

    iget-object p1, p0, LC5/h$M$a$b;->a:LC5/h$M$a;

    iget-object p1, p1, LC5/h$M$a;->b:LC5/h$M;

    iget-object p1, p1, LC5/h$M;->d:Landroid/widget/ImageView;

    sget-object v0, Lr4/a$e;->Left:Lr4/a$e;

    new-instance v1, LC5/h$M$a$b$a;

    invoke-direct {v1, p0}, LC5/h$M$a$b$a;-><init>(LC5/h$M$a$b;)V

    invoke-static {p1, v0, v1}, LH3/a;->G1(Landroid/view/View;Lr4/a$e;LH3/e;)V

    return-void
.end method
