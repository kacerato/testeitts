.class public Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;
    }
.end annotation


# instance fields
.field public final transient b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "LAc/b;",
            "Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;",
            ">;"
        }
    .end annotation
.end field

.field public c:LJAVARuntime/AnimationMask;

.field private final objectWeights:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->objectWeights:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->b:Ljava/util/Map;

    return-void
.end method

.method public static d(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;-><init>()V

    return-object p0

    :cond_2
    :goto_0
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;-><init>()V

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->objectWeights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public b(LAc/b;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objectUID"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->c(LAc/b;)Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c(LAc/b;)Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objectUID"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->objectWeights:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->objectWeights:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;->b()LAc/b;

    move-result-object v3

    invoke-virtual {p1, v3}, LAc/b;->W(LAc/b;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->b:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objectUID"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, LAc/b;

    invoke-direct {v0, p1}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->b(LAc/b;)Z

    move-result p1

    return p1
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->objectWeights:Ljava/util/List;

    return-object v0
.end method

.method public f(LAc/b;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objectUID"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->c(LAc/b;)Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;->c()F

    move-result p1

    return p1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public g(Ljava/lang/String;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objectUID"
        }
    .end annotation

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_0
    new-instance v0, LAc/b;

    invoke-direct {v0, p1}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->f(LAc/b;)F

    move-result p1

    return p1
.end method

.method public final h()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->objectWeights:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->objectWeights:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->b:Ljava/util/Map;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;->a(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;)LAc/b;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public i(LAc/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objectUID"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->c(LAc/b;)Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->objectWeights:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objectUID"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LAc/b;

    invoke-direct {v0, p1}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->i(LAc/b;)V

    return-void
.end method

.method public k(LAc/b;F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "objectUID",
            "weight"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, LAc/b;->L0()LAc/b;

    move-result-object v0

    invoke-virtual {v0}, LAc/b;->g0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->c(LAc/b;)Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;

    invoke-direct {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;-><init>(LAc/b;F)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->objectWeights:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->b:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;->e(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public l(Ljava/lang/String;F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "objectUID",
            "weight"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LAc/b;

    invoke-direct {v0, p1}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->k(LAc/b;F)V

    return-void
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->objectWeights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public n()LJAVARuntime/AnimationMask;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->c:LJAVARuntime/AnimationMask;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/AnimationMask;

    invoke-direct {v0, p0}, LJAVARuntime/AnimationMask;-><init>(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->c:LJAVARuntime/AnimationMask;

    :cond_0
    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
