.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->inflateLayersEntries(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$i;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$i;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance p1, Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$i;->a:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ATTENTION:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CONFIRM_DELETE_SELECTED_TEXTURE_LAYER:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->YES:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$i$a;

    invoke-direct {v1, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$i$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$i;Lcn/pedant/SweetAlert/SweetAlertDialog;)V

    invoke-virtual {p1, v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmButton(Ljava/lang/String;Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NO:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$i$b;

    invoke-direct {v1, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$i$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$i;Lcn/pedant/SweetAlert/SweetAlertDialog;)V

    invoke-virtual {p1, v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelButton(Ljava/lang/String;Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
