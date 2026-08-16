.class public Lcom/itsmagic/engine/Activities/Editor/EditorActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn/pedant/SweetAlert/SweetAlertDialog;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;Lcn/pedant/SweetAlert/SweetAlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$dialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$e;->b:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$e;->a:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcn/pedant/SweetAlert/SweetAlertDialog;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sweetAlertDialog"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$e;->a:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    sget-object p1, LW7/b;->h:Lb8/f;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$e;->b:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->g:Landroid/app/Activity;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$e$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$e$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity$e;)V

    invoke-virtual {p1, v0, v1}, Lb8/f;->f(Landroid/app/Activity;Lb8/g;)V

    return-void
.end method
