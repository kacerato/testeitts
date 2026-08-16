.class public Lcc/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcc/d$b;,
        Lcc/d$c;
    }
.end annotation


# static fields
.field public static o:Ljava/lang/String; = null

.field public static final p:Ljava/lang/String; = "Base/base_frag.glsl"

.field public static final q:Ljava/lang/String; = "Base/base_vertex.glsl"

.field public static final r:Ljava/lang/String; = "Base/easy_frag.glsl"

.field public static final s:Ljava/lang/String; = "Base/easy_vertex.glsl"


# instance fields
.field public final a:Lcc/d$b;

.field public final b:Lcc/d$b;

.field public c:Lec/c;

.field public final d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgc/a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgc/c;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lec/f;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lec/g;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lec/g;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lec/i;

.field public k:Z

.field public l:Z

.field public m:Z

.field public final n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shaderBinder"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcc/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcc/d$b;-><init>(Lcc/d$a;)V

    iput-object v0, p0, Lcc/d;->a:Lcc/d$b;

    .line 17
    new-instance v0, Lcc/d$b;

    invoke-direct {v0, v1}, Lcc/d$b;-><init>(Lcc/d$a;)V

    iput-object v0, p0, Lcc/d;->b:Lcc/d$b;

    .line 18
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcc/d;->e:Ljava/util/List;

    .line 19
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcc/d;->f:Ljava/util/List;

    .line 20
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcc/d;->g:Ljava/util/List;

    .line 21
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcc/d;->h:Ljava/util/List;

    .line 22
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcc/d;->i:Ljava/util/List;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcc/d;->k:Z

    const/4 v2, 0x1

    .line 24
    iput-boolean v2, p0, Lcc/d;->l:Z

    .line 25
    iput-boolean v0, p0, Lcc/d;->m:Z

    .line 26
    invoke-virtual {p0}, Lcc/d;->m()V

    .line 27
    iput-object p1, p0, Lcc/d;->d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    .line 28
    iput-object v1, p0, Lcc/d;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "shaderBinder"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcc/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcc/d$b;-><init>(Lcc/d$a;)V

    iput-object v0, p0, Lcc/d;->a:Lcc/d$b;

    .line 3
    new-instance v0, Lcc/d$b;

    invoke-direct {v0, v1}, Lcc/d$b;-><init>(Lcc/d$a;)V

    iput-object v0, p0, Lcc/d;->b:Lcc/d$b;

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcc/d;->e:Ljava/util/List;

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcc/d;->f:Ljava/util/List;

    .line 6
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcc/d;->g:Ljava/util/List;

    .line 7
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcc/d;->h:Ljava/util/List;

    .line 8
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcc/d;->i:Ljava/util/List;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcc/d;->k:Z

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcc/d;->l:Z

    .line 11
    iput-boolean v0, p0, Lcc/d;->m:Z

    .line 12
    invoke-virtual {p0}, Lcc/d;->m()V

    .line 13
    iput-object p2, p0, Lcc/d;->d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    .line 14
    iput-object p1, p0, Lcc/d;->n:Ljava/lang/String;

    return-void
.end method

.method public static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    new-instance v0, Lcc/d$a;

    invoke-direct {v0}, Lcc/d$a;-><init>()V

    invoke-static {p0, v0}, Lcc/d;->o(Ljava/lang/String;Lcc/d$c;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/lang/String;Lcc/d$c;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "onErrorListener"
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Shaders/Material/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmc/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "[INSERT_SKINNING]"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcc/d;->o:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static q(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "advancedSamples"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lec/g;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[INSERT_ADV_SAMPLES]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lec/g;

    invoke-virtual {v3}, Lec/g;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "float4 sample"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(float2 inputUV){\n    float4 spriteRect = materialParams."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Sprite;\n    return sampleSpriteTexture(materialParams_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", inputUV, spriteRect);\n}\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "format",
            "precision",
            "name"
        }
    .end annotation

    iget-object v0, p0, Lcc/d;->i:Ljava/util/List;

    new-instance v1, Lec/g;

    invoke-direct {v1, p1, p2, p3, p4}, Lec/g;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcc/d;->h:Ljava/util/List;

    new-instance v1, Lec/g;

    invoke-direct {v1, p1, p2, p3, p4}, Lec/g;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcc/d;->g:Ljava/util/List;

    new-instance p2, Lec/f;

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT4:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "Sprite"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, v0, p3, p4}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lgc/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "condition"
        }
    .end annotation

    iget-object v0, p0, Lcc/d;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "precision",
            "name"
        }
    .end annotation

    iget-object v0, p0, Lcc/d;->g:Ljava/util/List;

    new-instance v1, Lec/f;

    invoke-direct {v1, p1, p3, p2}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;Lcom/google/android/filament/filamat/MaterialBuilder$g;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "name"
        }
    .end annotation

    iget-object v0, p0, Lcc/d;->g:Ljava/util/List;

    new-instance v1, Lec/f;

    invoke-direct {v1, p1, p2}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "format",
            "precision",
            "name"
        }
    .end annotation

    iget-object v0, p0, Lcc/d;->h:Ljava/util/List;

    new-instance v1, Lec/g;

    invoke-direct {v1, p1, p2, p3, p4}, Lec/g;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public f(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Ldc/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcc/d;->g(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Z)Ldc/d;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Z)Ldc/d;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "material",
            "dump"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcc/d;->n:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcc/d;->a:Lcc/d$b;

    invoke-virtual {v0}, Lcc/d$b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcc/d;->a:Lcc/d$b;

    iget-object v1, p0, Lcc/d;->g:Ljava/util/List;

    iget-object v2, p0, Lcc/d;->h:Ljava/util/List;

    invoke-virtual {p0, v0, v1, v2}, Lcc/d;->h(Lcc/d$b;Ljava/util/List;Ljava/util/List;)Lec/h;

    move-result-object v0

    new-instance v1, Ldc/d;

    iget-object v2, p0, Lcc/d;->n:Ljava/lang/String;

    invoke-virtual {p0}, Lcc/d;->i()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v3

    new-instance v4, Lcc/b;

    iget-object v5, p0, Lcc/d;->g:Ljava/util/List;

    iget-object v6, p0, Lcc/d;->j:Lec/i;

    invoke-direct {v4, v0, v5, v6}, Lcc/b;-><init>(Lec/h;Ljava/util/List;Lec/i;)V

    invoke-direct {v1, v2, v3, v4, p1}, Ldc/d;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;Lcc/b;Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    if-eqz p2, :cond_0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "MaterialShaderConstructor:"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Forward is not present"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "The shader name is not present on this shader instance, material shaders require a name"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHADER NAME:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcc/d;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(Lcc/d$b;Ljava/util/List;Ljava/util/List;)Lec/h;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "renderPass",
            "params",
            "samples"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcc/d$b;",
            "Ljava/util/List<",
            "Lec/f;",
            ">;",
            "Ljava/util/List<",
            "Lec/g;",
            ">;)",
            "Lec/h;"
        }
    .end annotation

    invoke-virtual {p1}, Lcc/d$b;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcc/d$b;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lgc/e;

    iget-object v0, p0, Lcc/d;->e:Ljava/util/List;

    invoke-static {v0}, Lgc/e;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcc/d;->f:Ljava/util/List;

    invoke-static {v2}, Lgc/e;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcc/d;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v3

    :goto_0
    invoke-direct {v1, v0, v2, p1}, Lgc/e;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    iget-object p1, p0, Lcc/d;->b:Lcc/d$b;

    invoke-virtual {p1}, Lcc/d$b;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcc/d;->b:Lcc/d$b;

    invoke-virtual {p1}, Lcc/d$b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcc/d;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {p0, v3}, Lcc/d;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v4, p2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    iget-boolean p1, p0, Lcc/d;->k:Z

    if-eqz p1, :cond_3

    invoke-static {}, Lnc/b;->k()Ljava/util/List;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-static {}, Lnc/h;->o()Ljava/util/List;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v5, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v5, p3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    iget-boolean p1, p0, Lcc/d;->k:Z

    if-eqz p1, :cond_4

    invoke-static {}, Lnc/b;->l()Ljava/util/List;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    invoke-static {}, Lnc/h;->p()Ljava/util/List;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lec/h;

    iget-object v3, p0, Lcc/d;->c:Lec/c;

    iget-boolean v7, p0, Lcc/d;->k:Z

    iget-boolean v8, p0, Lcc/d;->l:Z

    iget-boolean v9, p0, Lcc/d;->m:Z

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lec/h;-><init>(Lgc/e;Ljava/lang/String;Lec/c;Ljava/util/List;Ljava/util/List;ZZZZ)V

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public i()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;
    .locals 2

    iget-object v0, p0, Lcc/d;->d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->m(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    iget-boolean v1, p0, Lcc/d;->k:Z

    if-eqz v1, :cond_0

    new-instance v1, Lnc/b;

    invoke-direct {v1}, Lnc/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->g0(Lnc/b;)V

    :cond_0
    new-instance v1, Lnc/h;

    invoke-direct {v1}, Lnc/h;-><init>()V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->k0(Lnc/h;)V

    return-object v0
.end method

.method public final j(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    const-string v0, "getUserWorldPosition()"

    const-string v1, "getUserWorldPosition(v.worldPosition.xyz)"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public k(LO9/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LO9/a<",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates$a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcc/d;->n:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcc/d;->a:Lcc/d$b;

    invoke-virtual {v0}, Lcc/d$b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcc/d;->a:Lcc/d$b;

    iget-object v1, p0, Lcc/d;->g:Ljava/util/List;

    iget-object v2, p0, Lcc/d;->h:Ljava/util/List;

    invoke-virtual {p0, v0, v1, v2}, Lcc/d;->h(Lcc/d$b;Ljava/util/List;Ljava/util/List;)Lec/h;

    move-result-object v0

    new-instance v1, Lcc/b;

    iget-object v2, p0, Lcc/d;->g:Ljava/util/List;

    iget-object v3, p0, Lcc/d;->j:Lec/i;

    invoke-direct {v1, v0, v2, v3}, Lcc/b;-><init>(Lec/h;Ljava/util/List;Lec/i;)V

    iget-object v2, p0, Lcc/d;->d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->k(Lcc/b;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lec/i;

    new-instance v4, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates$a;

    invoke-direct {v4, p0, v0, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates$a;-><init>(Lcc/d;Lec/h;Lec/i;)V

    invoke-virtual {p1, v4}, LO9/a;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Forward is not present"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "The shader name is not present on this shader instance, material shaders require a name"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcc/d;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final m()V
    .locals 0

    return-void
.end method

.method public final p(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    iget-object v0, p0, Lcc/d;->i:Ljava/util/List;

    invoke-static {p1, v0}, Lcc/d;->q(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/lang/String;)Lcc/d;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const-string v0, "Base/base_frag.glsl"

    invoke-static {v0}, Lcc/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Base/easy_frag.glsl"

    invoke-static {v1}, Lcc/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[INSERT_CODE]"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[INSERT_EASY_CODE]"

    invoke-static {p1}, Lcc/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcc/d;->a:Lcc/d$b;

    invoke-virtual {v0, p1}, Lcc/d$b;->c(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcc/d;->k:Z

    return-object p0
.end method

.method public s(Z)Lcc/d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "easyMaterialIsLit"
        }
    .end annotation

    iput-boolean p1, p0, Lcc/d;->l:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcc/d;->m:Z

    :cond_0
    return-object p0
.end method

.method public t(Z)Lcc/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "easyMaterialIsRefractive"
        }
    .end annotation

    iget-boolean v0, p0, Lcc/d;->l:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcc/d;->m:Z

    return-object p0
.end method

.method public u(Ljava/lang/String;)Lcc/d;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const-string v0, "Base/base_vertex.glsl"

    invoke-static {v0}, Lcc/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Base/easy_vertex.glsl"

    invoke-static {v1}, Lcc/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[INSERT_CODE]"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[INSERT_EASY_CODE]"

    invoke-static {p1}, Lcc/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcc/d;->b:Lcc/d$b;

    invoke-virtual {v0, p1}, Lcc/d$b;->c(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcc/d;->k:Z

    return-object p0
.end method

.method public v(Lec/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forwardBuilder"
        }
    .end annotation

    iput-object p1, p0, Lcc/d;->c:Lec/c;

    return-void
.end method

.method public w(Lec/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forwardDefaultVariance"
        }
    .end annotation

    iput-object p1, p0, Lcc/d;->j:Lec/i;

    return-void
.end method

.method public x(Ljava/lang/String;)Lcc/d;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const-string v0, "Base/base_frag.glsl"

    invoke-static {v0}, Lcc/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[INSERT_CODE]"

    invoke-static {p1}, Lcc/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcc/d;->a:Lcc/d$b;

    invoke-virtual {v0, p1}, Lcc/d$b;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public y(Ljava/lang/String;)Lcc/d;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const-string v0, "Base/base_vertex.glsl"

    invoke-static {v0}, Lcc/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[INSERT_CODE]"

    invoke-static {p1}, Lcc/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcc/d;->b:Lcc/d$b;

    invoke-virtual {v0, p1}, Lcc/d$b;->c(Ljava/lang/String;)V

    return-object p0
.end method
