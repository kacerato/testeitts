.class public Lz8/a$b$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz8/a$b$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz8/a$b$a$a;


# direct methods
.method public constructor <init>(Lz8/a$b$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lz8/a$b$a$a$a;->a:Lz8/a$b$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcn/pedant/SweetAlert/SweetAlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sweetAlertDialog"
        }
    .end annotation

    iget-object p1, p0, Lz8/a$b$a$a$a;->a:Lz8/a$b$a$a;

    iget-object p1, p1, Lz8/a$b$a$a;->c:Lz8/a$b$a;

    iget-object p1, p1, Lz8/a$b$a;->b:Lz8/a$b;

    iget-object p1, p1, Lz8/a$b;->d:Lz8/b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lz8/b;->a()V

    :cond_0
    iget-object p1, p0, Lz8/a$b$a$a$a;->a:Lz8/a$b$a$a;

    iget-object p1, p1, Lz8/a$b$a$a;->c:Lz8/a$b$a;

    iget-object p1, p1, Lz8/a$b$a;->b:Lz8/a$b;

    iget-object p1, p1, Lz8/a$b;->a:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    return-void
.end method
