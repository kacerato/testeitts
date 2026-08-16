.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer$l$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer$l;->onCreate(Landroid/view/View;Landroid/content/Context;LC5/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/b;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Pose/Pose;

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer$l;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer$l;LC5/b;Landroid/view/View;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Pose/Pose;)V
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
            "val$entry",
            "val$inputField",
            "val$pose"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer$l$d;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer$l;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer$l$d;->a:LC5/b;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer$l$d;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer$l$d;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Pose/Pose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "hasFocus"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer$l$d;->a:LC5/b;

    invoke-virtual {p1}, LC5/b;->i()Z

    move-result p1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer$l$d;->b:Landroid/view/View;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->c(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer$l$d;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Pose/Pose;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Pose/Pose;->name:Ljava/lang/String;

    :cond_0
    return-void
.end method
