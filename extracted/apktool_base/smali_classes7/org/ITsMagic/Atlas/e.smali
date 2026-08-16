.class public Lorg/ITsMagic/Atlas/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ITsMagic/Atlas/e$c;,
        Lorg/ITsMagic/Atlas/e$b;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final h:Z = false


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

.field public final b:Lorg/ITsMagic/Atlas/BakeOptions;

.field public c:Lub/n;

.field public final d:[F

.field public e:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LUg/h;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lorg/ITsMagic/Atlas/e$c;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;[FLorg/ITsMagic/Atlas/BakeOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputRenderer",
            "matrix",
            "options"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ITsMagic/Atlas/e;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    iput-object p3, p0, Lorg/ITsMagic/Atlas/e;->b:Lorg/ITsMagic/Atlas/BakeOptions;

    iput-object p2, p0, Lorg/ITsMagic/Atlas/e;->d:[F

    return-void
.end method

.method public static synthetic a(Lorg/ITsMagic/Atlas/e;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;
    .locals 0

    iget-object p0, p0, Lorg/ITsMagic/Atlas/e;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    return-object p0
.end method

.method public static synthetic b(Lorg/ITsMagic/Atlas/e;)[F
    .locals 0

    iget-object p0, p0, Lorg/ITsMagic/Atlas/e;->d:[F

    return-object p0
.end method

.method public static synthetic c(Lorg/ITsMagic/Atlas/e;)Lorg/ITsMagic/Atlas/BakeOptions;
    .locals 0

    iget-object p0, p0, Lorg/ITsMagic/Atlas/e;->b:Lorg/ITsMagic/Atlas/BakeOptions;

    return-object p0
.end method

.method public static synthetic d(Lorg/ITsMagic/Atlas/e;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 0

    iget-object p0, p0, Lorg/ITsMagic/Atlas/e;->e:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object p0
.end method

.method public static synthetic e(Lorg/ITsMagic/Atlas/e;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 0

    iput-object p1, p0, Lorg/ITsMagic/Atlas/e;->e:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object p1
.end method

.method public static synthetic f(Lorg/ITsMagic/Atlas/e;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/ITsMagic/Atlas/e;->f:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic g(Lorg/ITsMagic/Atlas/e;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lorg/ITsMagic/Atlas/e;->f:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic h(Lorg/ITsMagic/Atlas/e;)Lub/n;
    .locals 0

    iget-object p0, p0, Lorg/ITsMagic/Atlas/e;->c:Lub/n;

    return-object p0
.end method

.method public static synthetic i(Lorg/ITsMagic/Atlas/e;Lub/n;)Lub/n;
    .locals 0

    iput-object p1, p0, Lorg/ITsMagic/Atlas/e;->c:Lub/n;

    return-object p1
.end method

.method public static synthetic j(Lorg/ITsMagic/Atlas/e;)V
    .locals 0

    invoke-virtual {p0}, Lorg/ITsMagic/Atlas/e;->k()V

    return-void
.end method

.method public static o(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    return-void
.end method


# virtual methods
.method public final k()V
    .locals 3

    iget-object v0, p0, Lorg/ITsMagic/Atlas/e;->g:Lorg/ITsMagic/Atlas/e$c;

    iget-object v1, p0, Lorg/ITsMagic/Atlas/e;->e:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object v2, p0, Lorg/ITsMagic/Atlas/e;->c:Lub/n;

    invoke-interface {v0, v1, v2}, Lorg/ITsMagic/Atlas/e$c;->c(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lub/n;)V

    return-void
.end method

.method public l(ZLorg/ITsMagic/Atlas/e$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "useSimpleWhiteAtlas",
            "listener"
        }
    .end annotation

    iput-object p2, p0, Lorg/ITsMagic/Atlas/e;->g:Lorg/ITsMagic/Atlas/e$c;

    new-instance v0, Lorg/ITsMagic/Atlas/XAtlas;

    invoke-direct {v0}, Lorg/ITsMagic/Atlas/XAtlas;-><init>()V

    new-instance v1, Lorg/ITsMagic/Atlas/e$a;

    invoke-direct {v1, p0, p2, v0, p1}, Lorg/ITsMagic/Atlas/e$a;-><init>(Lorg/ITsMagic/Atlas/e;Lorg/ITsMagic/Atlas/e$c;Lorg/ITsMagic/Atlas/XAtlas;Z)V

    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public m()Lub/n;
    .locals 1

    iget-object v0, p0, Lorg/ITsMagic/Atlas/e;->c:Lub/n;

    return-object v0
.end method

.method public n()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    iget-object v0, p0, Lorg/ITsMagic/Atlas/e;->e:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object v0
.end method
