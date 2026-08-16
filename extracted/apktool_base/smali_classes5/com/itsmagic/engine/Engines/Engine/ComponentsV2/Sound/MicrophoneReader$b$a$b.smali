.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$b$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$b$a;->onPermissionDenied(Lcom/karumi/dexter/listener/PermissionDeniedResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn/pedant/SweetAlert/SweetAlertDialog;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$b$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$b$a;Lcn/pedant/SweetAlert/SweetAlertDialog;)V
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$b$a$b;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$b$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$b$a$b;->a:Lcn/pedant/SweetAlert/SweetAlertDialog;

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

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$b$a$b;->a:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$b$a$b;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$b$a;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$b;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader$b;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;->access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/MicrophoneReader;)V

    return-void
.end method
