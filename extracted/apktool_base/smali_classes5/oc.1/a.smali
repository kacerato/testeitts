.class public Loc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x6

.field public static final b:I = 0x1

.field public static final c:I = 0x80

.field public static final d:Ljava/lang/String; = "SceneVFXManager"

.field public static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:LLc/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLc/g<",
            "LMc/b<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final g:LLc/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLc/g<",
            "Ljava/util/List<",
            "Lqc/a;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final h:LLc/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLc/g<",
            "Ljava/util/List<",
            "Lqc/b;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final i:LLc/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLc/g<",
            "Ljava/util/List<",
            "Lqc/c;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final j:LLc/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLc/g<",
            "Ljava/util/List<",
            "Lqc/d;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final k:LLc/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLc/g<",
            "Ljava/util/List<",
            "Lqc/e;",
            ">;>;"
        }
    .end annotation
.end field

.field public static l:Z

.field public static m:Z

.field public static n:Loc/b;

.field public static volatile o:Z

.field public static final p:Lpc/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Loc/a;->e:Ljava/util/Set;

    new-instance v0, LLc/g;

    invoke-direct {v0}, LLc/g;-><init>()V

    sput-object v0, Loc/a;->f:LLc/g;

    new-instance v0, LLc/g;

    invoke-direct {v0}, LLc/g;-><init>()V

    sput-object v0, Loc/a;->g:LLc/g;

    new-instance v0, LLc/g;

    invoke-direct {v0}, LLc/g;-><init>()V

    sput-object v0, Loc/a;->h:LLc/g;

    new-instance v0, LLc/g;

    invoke-direct {v0}, LLc/g;-><init>()V

    sput-object v0, Loc/a;->i:LLc/g;

    new-instance v0, LLc/g;

    invoke-direct {v0}, LLc/g;-><init>()V

    sput-object v0, Loc/a;->j:LLc/g;

    new-instance v0, LLc/g;

    invoke-direct {v0}, LLc/g;-><init>()V

    sput-object v0, Loc/a;->k:LLc/g;

    const/4 v0, 0x0

    sput-boolean v0, Loc/a;->l:Z

    sput-boolean v0, Loc/a;->m:Z

    new-instance v0, Lpc/a;

    invoke-direct {v0}, Lpc/a;-><init>()V

    sput-object v0, Loc/a;->p:Lpc/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;Lec/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effect",
            "param"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v0

    sget-object p0, Loc/a$a;->a:[I

    invoke-virtual {p1}, Lec/f;->d()Lcom/google/android/filament/filamat/MaterialBuilder$r;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p0, p0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p0, v2, :cond_4

    const/4 v2, 0x2

    if-eq p0, v2, :cond_3

    const/4 v2, 0x3

    if-eq p0, v2, :cond_2

    const/4 v2, 0x4

    if-eq p0, v2, :cond_1

    const/4 v2, 0x5

    if-ne p0, v2, :cond_0

    sget-object p0, Loc/a;->j:LLc/g;

    invoke-static {p0, v0, v1}, Loc/a;->k(LLc/g;J)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lqc/d;

    invoke-direct {v0, v3, p1}, Lqc/d;-><init>(Lqc/f;Lec/f;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lec/f;->d()Lcom/google/android/filament/filamat/MaterialBuilder$r;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object p0, Loc/a;->i:LLc/g;

    invoke-static {p0, v0, v1}, Loc/a;->k(LLc/g;J)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lqc/c;

    invoke-direct {v0, v3, p1}, Lqc/c;-><init>(Lqc/f;Lec/f;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object p0, Loc/a;->h:LLc/g;

    invoke-static {p0, v0, v1}, Loc/a;->k(LLc/g;J)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lqc/b;

    invoke-direct {v0, v3, p1}, Lqc/b;-><init>(Lqc/f;Lec/f;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object p0, Loc/a;->k:LLc/g;

    invoke-static {p0, v0, v1}, Loc/a;->k(LLc/g;J)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lqc/e;

    invoke-direct {v0, v3, p1}, Lqc/e;-><init>(Lqc/f;Lec/f;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    sget-object p0, Loc/a;->g:LLc/g;

    invoke-static {p0, v0, v1}, Loc/a;->k(LLc/g;J)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lqc/a;

    invoke-direct {v0, v3, p1}, Lqc/a;-><init>(Lqc/f;Lec/f;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "count"
        }
    .end annotation

    sget-object v0, Loc/a;->p:Lpc/a;

    iput p1, v0, Lpc/a;->a:I

    iput-object p0, v0, Lpc/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lda/h;->g(Lda/b;)V

    return-void
.end method

.method public static c(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x80

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    invoke-static {p0}, Loc/a;->e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;)I

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->getMaxSimultaneousEmitters()I

    move-result p0

    invoke-static {p0}, Loc/a;->c(I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    sget-object v0, Loc/a;->f:LLc/g;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lge/X;->u(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LMc/b;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, LMc/b;->size()I

    move-result p0

    return p0
.end method

.method public static f(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;",
            ")",
            "Ljava/util/List<",
            "Lqc/a;",
            ">;"
        }
    .end annotation

    sget-object v0, Loc/a;->g:LLc/g;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lge/X;->u(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static g(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;",
            ")",
            "Ljava/util/List<",
            "Lqc/b;",
            ">;"
        }
    .end annotation

    sget-object v0, Loc/a;->h:LLc/g;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lge/X;->u(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static h(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;",
            ")",
            "Ljava/util/List<",
            "Lqc/c;",
            ">;"
        }
    .end annotation

    sget-object v0, Loc/a;->i:LLc/g;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lge/X;->u(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;",
            ")",
            "Ljava/util/List<",
            "Lqc/d;",
            ">;"
        }
    .end annotation

    sget-object v0, Loc/a;->j:LLc/g;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lge/X;->u(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;",
            ")",
            "Ljava/util/List<",
            "Lqc/e;",
            ">;"
        }
    .end annotation

    sget-object v0, Loc/a;->k:LLc/g;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lge/X;->u(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static k(LLc/g;J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "map",
            "hash"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LLc/g<",
            "Ljava/util/List<",
            "TT;>;>;J)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lge/X;->u(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lge/X;->td(JLjava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static l()Loc/b;
    .locals 1

    sget-object v0, Loc/a;->n:Loc/b;

    return-object v0
.end method

.method public static m()J
    .locals 2

    sget-object v0, Loc/a;->n:Loc/b;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Loc/b;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public static n(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effect",
            "message"
        }
    .end annotation

    invoke-static {p1}, LJ4/d;->b2(Ljava/lang/String;)V

    const-string v0, "SceneVFXManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Loc/a;->s(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;)V

    return-void
.end method

.method public static o()V
    .locals 20

    invoke-static {}, Ln/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Loc/a;->l:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    sput-boolean v0, Loc/a;->l:Z

    new-instance v6, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v5, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "vfx_globals.glsl"

    invoke-static {v7}, Loc/c;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Loc/c;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-class v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;

    invoke-static {v9}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_5

    move v10, v0

    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_5

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v1, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    :cond_1
    :goto_1
    move-object/from16 v16, v1

    move-object/from16 v19, v6

    move-object/from16 v18, v9

    move v15, v10

    goto/16 :goto_3

    :cond_2
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v1, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Loc/a;->s(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;)V

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->getConstructor()Loc/c;

    move-result-object v14

    invoke-static {v11, v14}, Loc/a;->v(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;Loc/c;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_3

    invoke-static {v11, v15}, Loc/a;->n(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->getUID()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v12, Lec/f;

    sget-object v13, Lcom/google/android/filament/filamat/MaterialBuilder$r;->INT:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "vfx_pr_"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->getUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "count"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v15, Lcom/google/android/filament/filamat/MaterialBuilder$g;->LOW:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    invoke-direct {v12, v13, v0, v15}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;Lcom/google/android/filament/filamat/MaterialBuilder$g;)V

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->getMaxSimultaneousEmitters()I

    move-result v0

    invoke-static {v0}, Loc/a;->c(I)I

    move-result v0

    new-instance v12, Lec/f;

    sget-object v13, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT3:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    invoke-static {v11}, Loc/c;->j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v1

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    invoke-direct {v12, v13, v15, v1, v0}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;Lcom/google/android/filament/filamat/MaterialBuilder$g;I)V

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Loc/a;->i:LLc/g;

    move-object v13, v9

    move v15, v10

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v9

    invoke-static {v1, v9, v10}, Loc/a;->k(LLc/g;J)Ljava/util/List;

    move-result-object v1

    new-instance v9, Lqc/c;

    sget-object v10, Lqc/f;->POSITION:Lqc/f;

    invoke-direct {v9, v10, v12}, Lqc/c;-><init>(Lqc/f;Lec/f;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Loc/c;->f()Ljava/util/List;

    move-result-object v1

    const/4 v9, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_4

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lec/f;

    new-instance v12, Lec/f;

    move-object/from16 v17, v1

    invoke-virtual {v10}, Lec/f;->d()Lcom/google/android/filament/filamat/MaterialBuilder$r;

    move-result-object v1

    move-object/from16 v18, v13

    invoke-virtual {v10}, Lec/f;->a()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v19, v6

    invoke-virtual {v10}, Lec/f;->b()Lcom/google/android/filament/filamat/MaterialBuilder$g;

    move-result-object v6

    invoke-direct {v12, v1, v13, v6, v0}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;Lcom/google/android/filament/filamat/MaterialBuilder$g;I)V

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v11, v10}, Loc/a;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;Lec/f;)V

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v17

    move-object/from16 v13, v18

    move-object/from16 v6, v19

    goto :goto_2

    :cond_4
    move-object/from16 v19, v6

    move-object/from16 v18, v13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Loc/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Loc/c;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Loc/c;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    move-object v7, v3

    move-object v3, v0

    :goto_3
    add-int/lit8 v10, v15, 0x1

    move-object/from16 v1, v16

    move-object/from16 v9, v18

    move-object/from16 v6, v19

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v19, v6

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    sput-object v0, Loc/a;->n:Loc/b;

    goto :goto_4

    :cond_6
    new-instance v0, Loc/b;

    move-object v1, v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v7

    move-object/from16 v6, v19

    invoke-direct/range {v1 .. v6}, Loc/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Loc/a;->n:Loc/b;

    :goto_4
    new-instance v0, Lpc/g;

    invoke-direct {v0}, Lpc/g;-><init>()V

    invoke-static {v0}, Lda/h;->g(Lda/b;)V

    const/4 v0, 0x1

    sput-boolean v0, Loc/a;->o:Z

    :cond_7
    return-void
.end method

.method public static p(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    invoke-static {}, Ln/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Loc/a;->f:LLc/g;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lge/X;->u(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LMc/b;

    if-nez v1, :cond_1

    new-instance v1, LMc/b;

    invoke-direct {v1}, LMc/b;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Lge/X;->td(JLjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1, p0}, LMc/b;->add(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v1}, LMc/b;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->setIndex(I)V

    sput-boolean v2, Loc/a;->m:Z

    sput-boolean v2, Loc/a;->o:Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p0}, LMc/b;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->setIndex(I)V

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    sget-object v0, Loc/a;->e:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sput-boolean v2, Loc/a;->l:Z

    :cond_4
    return-void
.end method

.method public static q(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    invoke-static {}, Ln/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Loc/a;->f:LLc/g;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lge/X;->u(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMc/b;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, LMc/b;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, LMc/b;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, LMc/b;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->setIndex(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    sput-boolean v2, Loc/a;->m:Z

    sput-boolean v2, Loc/a;->o:Z

    invoke-virtual {v0}, LMc/b;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->getUID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Loc/a;->b(Ljava/lang/String;I)V

    sget-object v0, Loc/a;->f:LLc/g;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lge/X;->e(J)Ljava/lang/Object;

    sget-object v0, Loc/a;->g:LLc/g;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lge/X;->e(J)Ljava/lang/Object;

    sget-object v0, Loc/a;->h:LLc/g;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lge/X;->e(J)Ljava/lang/Object;

    sget-object v0, Loc/a;->i:LLc/g;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lge/X;->e(J)Ljava/lang/Object;

    sget-object v0, Loc/a;->j:LLc/g;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lge/X;->e(J)Ljava/lang/Object;

    sget-object v0, Loc/a;->k:LLc/g;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lge/X;->e(J)Ljava/lang/Object;

    sget-object v0, Loc/a;->e:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sput-boolean v2, Loc/a;->l:Z

    :cond_3
    return-void
.end method

.method public static r()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Loc/a;->l:Z

    sput-boolean v0, Loc/a;->m:Z

    return-void
.end method

.method public static s(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vfxEffect"
        }
    .end annotation

    sget-object v0, Loc/a;->g:LLc/g;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Loc/a;->t(LLc/g;J)V

    sget-object v0, Loc/a;->h:LLc/g;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Loc/a;->t(LLc/g;J)V

    sget-object v0, Loc/a;->i:LLc/g;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Loc/a;->t(LLc/g;J)V

    sget-object v0, Loc/a;->j:LLc/g;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Loc/a;->t(LLc/g;J)V

    sget-object v0, Loc/a;->k:LLc/g;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Loc/a;->t(LLc/g;J)V

    return-void
.end method

.method public static t(LLc/g;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "map",
            "hash"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LLc/g<",
            "Ljava/util/List<",
            "TT;>;>;J)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lge/X;->u(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lge/X;->td(JLjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static u()V
    .locals 8

    invoke-static {}, Ln/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Loc/a;->l:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-boolean v0, Loc/a;->m:Z

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    sput-boolean v2, Loc/a;->m:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    move v4, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Loc/a;->d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;)I

    move-result v6

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->getUID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Loc/a;->b(Ljava/lang/String;I)V

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    sget-boolean v0, Loc/a;->o:Z

    if-eqz v0, :cond_6

    sput-boolean v2, Loc/a;->o:Z

    invoke-static {v1}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->reuploadParams()V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public static v(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;Loc/c;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effect",
            "constructor"
        }
    .end annotation

    invoke-virtual {p1}, Loc/c;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fragment"

    invoke-static {p0, v1, v0}, Loc/d;->j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "subMaterial"

    invoke-virtual {p1}, Loc/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Loc/d;->j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "vertex"

    invoke-virtual {p1}, Loc/c;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Loc/d;->j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
