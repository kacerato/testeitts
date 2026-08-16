.class public Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->m(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$b;->a:Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;

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

    invoke-virtual {p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$b;->a:Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
