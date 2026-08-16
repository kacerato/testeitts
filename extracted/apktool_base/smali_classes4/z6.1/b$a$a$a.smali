.class public Lz6/b$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz6/b$a$a;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn/pedant/SweetAlert/SweetAlertDialog;

.field public final synthetic b:Lz6/b$a$a;


# direct methods
.method public constructor <init>(Lz6/b$a$a;Lcn/pedant/SweetAlert/SweetAlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$dialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lz6/b$a$a$a;->b:Lz6/b$a$a;

    iput-object p2, p0, Lz6/b$a$a$a;->a:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lz6/b$a$a$a;->a:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    invoke-static {}, Ld8/j;->v0()V

    iget-object v0, p0, Lz6/b$a$a$a;->b:Lz6/b$a$a;

    iget-object v0, v0, Lz6/b$a$a;->b:Lz6/b$a;

    iget-object v0, v0, Lz6/b$a;->d:Lz6/b;

    iget-object v0, v0, Lz6/b;->d:Ly6/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ly6/f;->b()V

    :cond_0
    return-void
.end method
