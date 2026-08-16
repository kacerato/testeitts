.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$r$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$r;->onCreate(Landroid/view/View;Landroid/content/Context;LC5/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$r;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$r;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$r$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(ZLandroid/view/View;Landroid/content/Context;LM7/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "v",
            "context",
            "tbToggle",
            "isFromUserAction"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$r$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$r;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$r;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$w;

    move-result-object p1

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$w;->Data:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$w;

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$r$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$r;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$r;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->access$302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$w;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$w;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$r$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$r;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$r;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    :cond_0
    return-void
.end method
