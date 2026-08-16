.class public Lu5/d$n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu5/d$n;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcn/pedant/SweetAlert/SweetAlertDialog;

.field public final synthetic c:Lu5/d$n;


# direct methods
.method public constructor <init>(Lu5/d$n;Lcn/pedant/SweetAlert/SweetAlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$dialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lu5/d$n$a;->c:Lu5/d$n;

    iput-object p2, p0, Lu5/d$n$a;->b:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lu5/d$n$a;->c:Lu5/d$n;

    iget-object v0, v0, Lu5/d$n;->b:Lu5/d;

    invoke-static {v0}, Lu5/d;->v1(Lu5/d;)V

    iget-object v0, p0, Lu5/d$n$a;->c:Lu5/d$n;

    iget-object v0, v0, Lu5/d$n;->b:Lu5/d;

    invoke-static {v0}, Lu5/d;->w1(Lu5/d;)Lu5/d$w;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lu5/d$w;->a(Ljava/util/List;)V

    new-instance v0, Lu5/d$n$a$a;

    invoke-direct {v0, p0}, Lu5/d$n$a$a;-><init>(Lu5/d$n$a;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
