.class public Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;
.super Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial$d;,
        Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial$e;
    }
.end annotation


# static fields
.field private static final concreteTemplatesReferences:Lge/X;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lge/X<",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private static final concreteTexturesReferences:LLc/g;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLc/g<",
            "Ljava/util/Set<",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final d:LM9/c;

.field public static final e:LLc/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLc/b<",
            "Ljava/util/Set<",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final bindedTextures:Ljava/util/Map;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;",
            ">;"
        }
    .end annotation
.end field

.field private final bindedTexturesList:Ljava/util/List;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial$d;",
            ">;"
        }
    .end annotation
.end field

.field private final buildedFromTemplate:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public c:Z

.field private final material:Lcom/google/android/filament/MaterialInstance;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial$a;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->d:LM9/c;

    new-instance v0, Lge/X;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lge/X;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->concreteTemplatesReferences:Lge/X;

    new-instance v0, LLc/g;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, LLc/g;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->concreteTexturesReferences:LLc/g;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial$b;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial$b;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->e:LLc/b;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;Lcom/google/android/filament/Material;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "template",
            "templateMat"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;-><init>(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;Lcom/google/android/filament/Material;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;Lcom/google/android/filament/Material;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "template",
            "templateMat",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;",
            "Lcom/google/android/filament/Material;",
            "Ljava/util/List<",
            "Lec/f;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->bindedTextures:Ljava/util/Map;

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->bindedTexturesList:Ljava/util/List;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/filament/Material;->d()Lcom/google/android/filament/MaterialInstance;

    move-result-object p2

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->material:Lcom/google/android/filament/MaterialInstance;

    .line 6
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->buildedFromTemplate:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    .line 7
    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->j(Ljava/util/List;)Ljava/util/Set;

    move-result-object p3

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->b:Ljava/util/Set;

    .line 8
    new-instance p3, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial$c;

    const-class v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-direct {p3, p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial$c;-><init>(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/Class;)V

    const/4 v0, 0x1

    new-array v0, v0, [LM9/b;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;->setDestroyListeners([LM9/b;)V

    .line 9
    invoke-virtual {p2}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v2

    sget-object p3, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->d:LM9/c;

    invoke-static {p0, v2, v3, p3, v1}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLM9/c;Z)V

    .line 10
    sget-object p3, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->concreteTemplatesReferences:Lge/X;

    invoke-virtual {p2}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1, p1}, Lge/X;->td(JLjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic e()LLc/g;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->concreteTexturesReferences:LLc/g;

    return-object v0
.end method

.method public static synthetic f()Lge/X;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->concreteTemplatesReferences:Lge/X;

    return-object v0
.end method

.method public static synthetic h(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->c:Z

    return p0
.end method

.method public static synthetic i(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->bindedTexturesList:Ljava/util/List;

    return-object p0
.end method

.method public static n(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filamentMaterialTemplate"
        }
    .end annotation

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->concreteTemplatesReferences:Lge/X;

    invoke-virtual {v0, p0}, Lge/X;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static o(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filamentTexture"
        }
    .end annotation

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->concreteTexturesReferences:LLc/g;

    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->e:LLc/b;

    invoke-virtual {v0, p0, v1}, LLc/g;->wf(Ljava/lang/Object;LLc/b;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public A(Ljava/lang/String;[FII)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "buffer",
            "size",
            "offset"
        }
    .end annotation

    sget-object v2, Lcom/google/android/filament/MaterialInstance$b;->FLOAT2:Lcom/google/android/filament/MaterialInstance$b;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->G(Ljava/lang/String;Lcom/google/android/filament/MaterialInstance$b;[FII)V

    return-void
.end method

.method public B(Ljava/lang/String;FFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-static {}, LQb/a;->d()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->material:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/filament/MaterialInstance;->I(Ljava/lang/String;FFF)V

    return-void
.end method

.method public C(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "v"
        }
    .end annotation

    invoke-static {}, LQb/a;->d()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->material:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/google/android/filament/MaterialInstance;->I(Ljava/lang/String;FFF)V

    return-void
.end method

.method public D(Ljava/lang/String;[FII)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "buffer",
            "size",
            "offset"
        }
    .end annotation

    sget-object v2, Lcom/google/android/filament/MaterialInstance$b;->FLOAT3:Lcom/google/android/filament/MaterialInstance$b;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->G(Ljava/lang/String;Lcom/google/android/filament/MaterialInstance$b;[FII)V

    return-void
.end method

.method public E(Ljava/lang/String;FFFF)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    invoke-static {}, LQb/a;->d()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->material:Lcom/google/android/filament/MaterialInstance;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->J(Ljava/lang/String;FFFF)V

    return-void
.end method

.method public F(Ljava/lang/String;[FII)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "buffer",
            "size",
            "offset"
        }
    .end annotation

    sget-object v2, Lcom/google/android/filament/MaterialInstance$b;->FLOAT4:Lcom/google/android/filament/MaterialInstance$b;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->G(Ljava/lang/String;Lcom/google/android/filament/MaterialInstance$b;[FII)V

    return-void
.end method

.method public final G(Ljava/lang/String;Lcom/google/android/filament/MaterialInstance$b;[FII)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "element",
            "buffer",
            "size",
            "offset"
        }
    .end annotation

    invoke-static {}, LQb/a;->d()V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->material:Lcom/google/android/filament/MaterialInstance;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->R(Ljava/lang/String;Lcom/google/android/filament/MaterialInstance$b;[FII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public H(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "v"
        }
    .end annotation

    invoke-static {}, LQb/a;->d()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->material:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/filament/MaterialInstance;->K(Ljava/lang/String;I)V

    return-void
.end method

.method public I(Ljava/lang/String;[III)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "buffer",
            "size",
            "offset"
        }
    .end annotation

    sget-object v2, Lcom/google/android/filament/MaterialInstance$c;->INT:Lcom/google/android/filament/MaterialInstance$c;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->J(Ljava/lang/String;Lcom/google/android/filament/MaterialInstance$c;[III)V

    return-void
.end method

.method public final J(Ljava/lang/String;Lcom/google/android/filament/MaterialInstance$c;[III)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "element",
            "buffer",
            "size",
            "offset"
        }
    .end annotation

    invoke-static {}, LQb/a;->d()V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->material:Lcom/google/android/filament/MaterialInstance;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->S(Ljava/lang/String;Lcom/google/android/filament/MaterialInstance$c;[III)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public K(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "v1"
        }
    .end annotation

    invoke-static {}, LQb/a;->d()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->material:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/filament/MaterialInstance;->Y(FF)V

    return-void
.end method

.method public destroyChannel()LM9/a;
    .locals 1

    sget-object v0, LM9/a;->GPU:LM9/a;

    return-object v0
.end method

.method public destroyImmediate()V
    .locals 2

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->c:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->isUsed(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->c:Z

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->destroyImmediate(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v1, "Stills in use"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public destroyPriority()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public final j(Ljava/util/List;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lec/f;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lec/f;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lec/f;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lec/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public k()V
    .locals 3

    sget-object v0, Lyb/b;->i:Lub/p;

    invoke-virtual {v0}, Lub/p;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->bindedTexturesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->bindedTexturesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial$d;

    sget-object v2, Lyb/b;->i:Lub/p;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial$d;->a:Ljava/lang/String;

    invoke-virtual {v2, p0, v1}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l()Lcom/google/android/filament/MaterialInstance;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->material:Lcom/google/android/filament/MaterialInstance;

    return-object v0
.end method

.method public m(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->b:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public p(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "texture"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->B()Lcom/google/android/filament/TextureSampler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->q(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;Lcom/google/android/filament/TextureSampler;)V

    return-void
.end method

.method public q(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;Lcom/google/android/filament/TextureSampler;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "texture",
            "sampler"
        }
    .end annotation

    invoke-static {}, LQb/a;->d()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->bindedTextures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->bindedTextures:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->bindedTexturesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->bindedTexturesList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial$d;

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial$d;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial$d;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-ne v1, p2, :cond_1

    return-void

    :cond_1
    iput-object p2, v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial$d;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->bindedTexturesList:Ljava/util/List;

    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial$d;

    invoke-direct {v2, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial$d;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->concreteTexturesReferences:LLc/g;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->material:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {v2}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lge/X;->u(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-nez v2, :cond_4

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->material:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {v3}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v2}, Lge/X;->td(JLjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v0, :cond_5

    if-eq v0, p2, :cond_5

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->material:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->C()Lcom/google/android/filament/Texture;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/filament/MaterialInstance;->T(Ljava/lang/String;Lcom/google/android/filament/Texture;Lcom/google/android/filament/TextureSampler;)V

    return-void
.end method

.method public r(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "b"
        }
    .end annotation

    invoke-static {}, LQb/a;->d()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->material:Lcom/google/android/filament/MaterialInstance;

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/filament/MaterialInstance;->G(Ljava/lang/String;F)V

    return-void
.end method

.method public s(Ljava/lang/String;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "b",
            "b2"
        }
    .end annotation

    invoke-static {}, LQb/a;->d()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->material:Lcom/google/android/filament/MaterialInstance;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    if-eqz p3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/filament/MaterialInstance;->H(Ljava/lang/String;FF)V

    return-void
.end method

.method public u(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "v"
        }
    .end annotation

    invoke-static {}, LQb/a;->d()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->material:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result p2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/google/android/filament/MaterialInstance;->I(Ljava/lang/String;FFF)V

    return-void
.end method

.method public v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "v"
        }
    .end annotation

    invoke-static {}, LQb/a;->d()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->material:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v4

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->o()I

    move-result p2

    int-to-float v5, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->J(Ljava/lang/String;FFFF)V

    return-void
.end method

.method public w(Ljava/lang/String;F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "v"
        }
    .end annotation

    invoke-static {}, LQb/a;->d()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->material:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/filament/MaterialInstance;->G(Ljava/lang/String;F)V

    return-void
.end method

.method public x(Ljava/lang/String;[FII)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "buffer",
            "size",
            "offset"
        }
    .end annotation

    sget-object v2, Lcom/google/android/filament/MaterialInstance$b;->FLOAT:Lcom/google/android/filament/MaterialInstance$b;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->G(Ljava/lang/String;Lcom/google/android/filament/MaterialInstance$b;[FII)V

    return-void
.end method

.method public y(Ljava/lang/String;FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "x",
            "y"
        }
    .end annotation

    invoke-static {}, LQb/a;->d()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->material:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/filament/MaterialInstance;->H(Ljava/lang/String;FF)V

    return-void
.end method

.method public z(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "v"
        }
    .end annotation

    invoke-static {}, LQb/a;->d()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->material:Lcom/google/android/filament/MaterialInstance;

    iget v1, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p2, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/filament/MaterialInstance;->H(Ljava/lang/String;FF)V

    return-void
.end method
