.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCb/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$p;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$p;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$p;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->onVertexChangedRenderables()V

    :cond_0
    return-void
.end method
