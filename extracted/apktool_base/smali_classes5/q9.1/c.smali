.class public final synthetic Lq9/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Pose/Pose;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Pose/Pose;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq9/c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Pose/Pose;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lq9/c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Pose/Pose;

    invoke-static {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer$l;->c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Pose/Pose;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
