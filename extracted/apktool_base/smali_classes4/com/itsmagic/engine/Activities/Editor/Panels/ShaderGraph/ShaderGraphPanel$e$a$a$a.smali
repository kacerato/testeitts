.class public Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel$e$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel$e$a$a;->a(LZ6/c$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel$e$a$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel$e$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel$e$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel$e$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel$e$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel$e$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel$e$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel$e$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel$e$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const-string v1, "Node graph"

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->f0(Ljava/lang/String;)V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel$e$a$a$a$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel$e$a$a$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel$e$a$a$a;)V

    const/4 v1, 0x2

    invoke-static {v1, v0}, LK8/a;->h(ILjava/lang/Runnable;)V

    return-void
.end method
