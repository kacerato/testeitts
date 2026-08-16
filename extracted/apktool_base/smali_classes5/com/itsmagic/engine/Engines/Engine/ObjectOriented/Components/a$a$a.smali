.class public Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$a;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$a;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$activity",
            "val$tittle",
            "val$message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$a$a;->e:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$a$a;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$a$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$a$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$a$a;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$a$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$a$a$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$a$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$a$a;)V

    const-string v2, "Ok"

    invoke-virtual {v0, v2, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmButton(Ljava/lang/String;Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
