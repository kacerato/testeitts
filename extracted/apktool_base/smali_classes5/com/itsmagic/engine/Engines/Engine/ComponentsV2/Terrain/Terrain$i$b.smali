.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$i;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn/pedant/SweetAlert/SweetAlertDialog;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$i;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$i;Lcn/pedant/SweetAlert/SweetAlertDialog;)V
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$i$b;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$i;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$i$b;->a:Lcn/pedant/SweetAlert/SweetAlertDialog;

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

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$i$b;->a:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    return-void
.end method
