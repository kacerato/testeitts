.class public Loc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loc/c$b;,
        Loc/c$c;
    }
.end annotation


# static fields
.field public static final f:Ljava/lang/String; = "base_vfx_frag.glsl"

.field public static final g:Ljava/lang/String; = "base_vfx_sub_mat.glsl"

.field public static final h:Ljava/lang/String; = "base_vfx_vertex.glsl"

.field public static final i:Ljava/lang/String; = "vfx_fn_"

.field public static final j:Ljava/lang/String; = "VFX_STRUCT_"

.field public static final k:Ljava/lang/String; = "vfx_pr_"

.field public static final l:Ljava/lang/String; = "emitterPosition"

.field public static final m:Ljava/lang/String; = "count"


# instance fields
.field public final a:Loc/c$b;

.field public final b:Loc/c$b;

.field public final c:Loc/c$b;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lec/f;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Loc/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Loc/c$b;-><init>(Loc/c$a;)V

    iput-object v0, p0, Loc/c;->a:Loc/c$b;

    new-instance v0, Loc/c$b;

    invoke-direct {v0, v1}, Loc/c$b;-><init>(Loc/c$a;)V

    iput-object v0, p0, Loc/c;->b:Loc/c$b;

    new-instance v0, Loc/c$b;

    invoke-direct {v0, v1}, Loc/c$b;-><init>(Loc/c$a;)V

    iput-object v0, p0, Loc/c;->c:Loc/c$b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Loc/c;->d:Ljava/util/List;

    iput-object p1, p0, Loc/c;->e:Ljava/lang/String;

    return-void
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "UID"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vfx_pr_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "count"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vfx_pr_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->getUID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "emitterPosition"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "UID"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vfx_pr_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "emitterPosition"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    new-instance v0, Loc/c$a;

    invoke-direct {v0}, Loc/c$a;-><init>()V

    invoke-static {p0, v0}, Loc/c;->n(Ljava/lang/String;Lcc/d$c;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/String;Lcc/d$c;)Ljava/lang/String;
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

    const-string v0, "Shaders/VFX/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmc/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vfx_pr_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Loc/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Loc/c;->d:Ljava/util/List;

    new-instance v1, Lec/f;

    invoke-direct {v1, p1, p3, p2}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;Lcom/google/android/filament/filamat/MaterialBuilder$g;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)V
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vfx_pr_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Loc/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Loc/c;->d:Ljava/util/List;

    new-instance v1, Lec/f;

    invoke-direct {v1, p1, p2}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Ljava/lang/String;Lec/h$c;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "source"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Loc/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vfx_fn_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VFX_STRUCT_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "materialParams.vfx_pr_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Loc/c;->e:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "vfxParams."

    const-string v3, "[emitter.index]"

    invoke-virtual {p0, p1, p2, v3, v2}, Loc/c;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Loc/c;->e:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "vfxParam."

    invoke-virtual {p0, p1, p2, v3, v0}, Loc/c;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
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

.method public e()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Loc/c;->a:Loc/c$b;

    iget-object v0, v0, Loc/c$b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "base_vfx_frag.glsl"

    invoke-static {v0}, Loc/c;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[INSERT_VFX_CODE]"

    const-string v2, "void vfx_fn_fragment(inout VFXMaterialInputs material, VFXEmitter emitter) {\n}\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lec/h$c;->FRAG:Lec/h$c;

    invoke-virtual {p0, v0, v1}, Loc/c;->c(Ljava/lang/String;Lec/h$c;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Loc/c;->a:Loc/c$b;

    iput-object v0, v1, Loc/c$b;->a:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lec/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Loc/c;->d:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Loc/c;->b:Loc/c$b;

    iget-object v0, v0, Loc/c$b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "base_vfx_sub_mat.glsl"

    invoke-static {v0}, Loc/c;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[INSERT_VFX_CODE]"

    const-string v2, "void vfx_fn_subMaterial(inout SubMaterialData smData, VFXEmitter emitter) {\n}\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lec/h$c;->SUBMAT:Lec/h$c;

    invoke-virtual {p0, v0, v1}, Loc/c;->c(Ljava/lang/String;Lec/h$c;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Loc/c;->b:Loc/c$b;

    iput-object v0, v1, Loc/c$b;->a:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Loc/c;->c:Loc/c$b;

    iget-object v0, v0, Loc/c$b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "base_vfx_vertex.glsl"

    invoke-static {v0}, Loc/c;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[INSERT_VFX_CODE]"

    const-string v2, "void vfx_fn_vertex(inout MaterialVertexInputs v, VFXEmitter emitter) {\n}\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lec/h$c;->VERTEX:Lec/h$c;

    invoke-virtual {p0, v0, v1}, Loc/c;->c(Ljava/lang/String;Lec/h$c;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Loc/c;->c:Loc/c$b;

    iput-object v0, v1, Loc/c$b;->a:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public final l(C)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x5f

    if-ne p1, v0, :cond_0

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

.method public final o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "materialParamPrefix",
            "indexAccessSnippet",
            "sourcePrefix"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    move v3, v2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Loc/c;->l(C)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    if-le v3, v2, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/lang/String;)Loc/c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dc"
        }
    .end annotation

    const-string v0, "base_vfx_frag.glsl"

    invoke-static {v0}, Loc/c;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[INSERT_VFX_CODE]"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lec/h$c;->FRAG:Lec/h$c;

    invoke-virtual {p0, p1, v0}, Loc/c;->c(Ljava/lang/String;Lec/h$c;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Loc/c;->a:Loc/c$b;

    invoke-virtual {v0, p1}, Loc/c$b;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public q(Ljava/lang/String;)Loc/c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dc"
        }
    .end annotation

    const-string v0, "base_vfx_sub_mat.glsl"

    invoke-static {v0}, Loc/c;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[INSERT_VFX_CODE]"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lec/h$c;->SUBMAT:Lec/h$c;

    invoke-virtual {p0, p1, v0}, Loc/c;->c(Ljava/lang/String;Lec/h$c;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Loc/c;->b:Loc/c$b;

    invoke-virtual {v0, p1}, Loc/c$b;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public r(Ljava/lang/String;)Loc/c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dc"
        }
    .end annotation

    const-string v0, "base_vfx_vertex.glsl"

    invoke-static {v0}, Loc/c;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[INSERT_VFX_CODE]"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lec/h$c;->VERTEX:Lec/h$c;

    invoke-virtual {p0, p1, v0}, Loc/c;->c(Ljava/lang/String;Lec/h$c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Loc/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Loc/c;->c:Loc/c$b;

    invoke-virtual {v0, p1}, Loc/c$b;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public s(Ljava/lang/String;)Loc/c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const-string v0, "base_vfx_frag.glsl"

    invoke-static {v0}, Loc/c;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[INSERT_VFX_CODE]"

    invoke-static {p1}, Loc/c;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lec/h$c;->FRAG:Lec/h$c;

    invoke-virtual {p0, p1, v0}, Loc/c;->c(Ljava/lang/String;Lec/h$c;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Loc/c;->a:Loc/c$b;

    invoke-virtual {v0, p1}, Loc/c$b;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public t(Ljava/lang/String;)Loc/c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const-string v0, "base_vfx_sub_mat.glsl"

    invoke-static {v0}, Loc/c;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[INSERT_VFX_CODE]"

    invoke-static {p1}, Loc/c;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lec/h$c;->SUBMAT:Lec/h$c;

    invoke-virtual {p0, p1, v0}, Loc/c;->c(Ljava/lang/String;Lec/h$c;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Loc/c;->b:Loc/c$b;

    invoke-virtual {v0, p1}, Loc/c$b;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public u(Ljava/lang/String;)Loc/c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const-string v0, "base_vfx_vertex.glsl"

    invoke-static {v0}, Loc/c;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[INSERT_VFX_CODE]"

    invoke-static {p1}, Loc/c;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lec/h$c;->VERTEX:Lec/h$c;

    invoke-virtual {p0, p1, v0}, Loc/c;->c(Ljava/lang/String;Lec/h$c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Loc/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Loc/c;->c:Loc/c$b;

    invoke-virtual {v0, p1}, Loc/c$b;->c(Ljava/lang/String;)V

    return-object p0
.end method
