.class public Lorg/ITsMagic/Atlas/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/Atlas/e;->l(ZLorg/ITsMagic/Atlas/e$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lorg/ITsMagic/Atlas/e$c;

.field public final synthetic c:Lorg/ITsMagic/Atlas/XAtlas;

.field public final synthetic d:Z

.field public final synthetic e:Lorg/ITsMagic/Atlas/e;


# direct methods
.method public constructor <init>(Lorg/ITsMagic/Atlas/e;Lorg/ITsMagic/Atlas/e$c;Lorg/ITsMagic/Atlas/XAtlas;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener",
            "val$atlas",
            "val$useSimpleWhiteAtlas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/Atlas/e$a;->e:Lorg/ITsMagic/Atlas/e;

    iput-object p2, p0, Lorg/ITsMagic/Atlas/e$a;->b:Lorg/ITsMagic/Atlas/e$c;

    iput-object p3, p0, Lorg/ITsMagic/Atlas/e$a;->c:Lorg/ITsMagic/Atlas/XAtlas;

    iput-boolean p4, p0, Lorg/ITsMagic/Atlas/e$a;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/ITsMagic/Atlas/e$a;->b:Lorg/ITsMagic/Atlas/e$c;

    const-string v1, "Preparing"

    invoke-interface {v0, v1}, Lorg/ITsMagic/Atlas/e$c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/e$a;->c:Lorg/ITsMagic/Atlas/XAtlas;

    iget-object v1, p0, Lorg/ITsMagic/Atlas/e$a;->e:Lorg/ITsMagic/Atlas/e;

    invoke-static {v1}, Lorg/ITsMagic/Atlas/e;->a(Lorg/ITsMagic/Atlas/e;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    iget-object v2, p0, Lorg/ITsMagic/Atlas/e$a;->e:Lorg/ITsMagic/Atlas/e;

    invoke-static {v2}, Lorg/ITsMagic/Atlas/e;->a(Lorg/ITsMagic/Atlas/e;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    move-result-object v2

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object v3, p0, Lorg/ITsMagic/Atlas/e$a;->e:Lorg/ITsMagic/Atlas/e;

    invoke-static {v3}, Lorg/ITsMagic/Atlas/e;->b(Lorg/ITsMagic/Atlas/e;)[F

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/ITsMagic/Atlas/XAtlas;->addInputMesh(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Engine/Material/Material;[F)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/ITsMagic/Atlas/e$a$a;

    invoke-direct {v1, p0}, Lorg/ITsMagic/Atlas/e$a$a;-><init>(Lorg/ITsMagic/Atlas/e$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
