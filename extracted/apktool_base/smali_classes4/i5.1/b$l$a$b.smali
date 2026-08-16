.class public Li5/b$l$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li5/b$l$a;->c(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lub/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public final synthetic c:Li5/b$l$a;


# direct methods
.method public constructor <init>(Li5/b$l$a;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$outputVertex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Li5/b$l$a$b;->c:Li5/b$l$a;

    iput-object p2, p0, Li5/b$l$a$b;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Li5/b$l$a$b;->c:Li5/b$l$a;

    iget-object v0, v0, Li5/b$l$a;->a:Li5/b$l;

    iget-object v0, v0, Li5/b$l;->d:Li5/b;

    invoke-static {v0}, Li5/b;->R(Li5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    move-result-object v0

    iget-object v1, p0, Li5/b$l$a$b;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->setModel(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    iget-object v0, p0, Li5/b$l$a$b;->c:Li5/b$l$a;

    iget-object v0, v0, Li5/b$l$a;->a:Li5/b$l;

    iget-boolean v1, v0, Li5/b$l;->c:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Li5/b$l;->d:Li5/b;

    invoke-static {v0}, Li5/b;->R(Li5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object v1, p0, Li5/b$l$a$b;->c:Li5/b$l$a;

    iget-object v1, v1, Li5/b$l$a;->a:Li5/b$l;

    iget-object v1, v1, Li5/b$l;->d:Li5/b;

    invoke-static {v1}, Li5/b;->P(Li5/b;)Lub/g;

    move-result-object v1

    const-string v2, "albedo"

    invoke-virtual {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->h0(Ljava/lang/String;Lub/p;)V

    iget-object v0, p0, Li5/b$l$a$b;->c:Li5/b$l$a;

    iget-object v0, v0, Li5/b$l$a;->a:Li5/b$l;

    iget-object v0, v0, Li5/b$l;->d:Li5/b;

    invoke-static {v0}, Li5/b;->R(Li5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const-string v1, "diffuse"

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->h0()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->b0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    :cond_0
    iget-object v0, p0, Li5/b$l$a$b;->c:Li5/b$l$a;

    iget-object v0, v0, Li5/b$l$a;->a:Li5/b$l;

    iget-object v0, v0, Li5/b$l;->d:Li5/b;

    iget-object v1, p0, Li5/b$l$a$b;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0, v1}, Li5/b;->T(Li5/b;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object v0, p0, Li5/b$l$a$b;->c:Li5/b$l$a;

    iget-object v0, v0, Li5/b$l$a;->a:Li5/b$l;

    iget-object v0, v0, Li5/b$l;->d:Li5/b;

    invoke-static {v0}, Li5/b;->S(Li5/b;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->s:Z

    iget-object v0, p0, Li5/b$l$a$b;->c:Li5/b$l$a;

    iget-object v0, v0, Li5/b$l$a;->a:Li5/b$l;

    iget-object v0, v0, Li5/b$l;->d:Li5/b;

    iput-boolean v1, v0, Li5/b;->t:Z

    return-void
.end method
