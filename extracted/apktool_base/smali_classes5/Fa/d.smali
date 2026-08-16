.class public abstract LFa/d;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
.source "SourceFile"

# interfaces
.implements Lga/c;


# static fields
.field public static final j:Ljava/lang/String; = "0.0001"


# instance fields
.field public final g:Ljava/lang/String;

.field public final h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public final i:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v1, Lga/H;->NUMBER:Lga/H;

    const-string v2, "A"

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_A:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v3, "B"

    invoke-direct {v2, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_B:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    filled-new-array {v0, v1}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    iput-object v0, p0, LFa/d;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v1, Lga/H;->BRANCH:Lga/H;

    const-string v2, "True"

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_TRUE:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v3, "False"

    invoke-direct {v2, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_FALSE:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    filled-new-array {v0, v1}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    iput-object v0, p0, LFa/d;->i:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    iput-object p1, p0, LFa/d;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, LFa/d;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public G0(ZZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "current",
            "componentResult"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract H0(FF)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation
.end method

.method public I0(Ljava/lang/Object;Ljava/lang/Object;Lga/H;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "aValue",
            "bValue",
            "compareType"
        }
    .end annotation

    sget-object v0, Lga/H;->COLOR:Lga/H;

    if-ne p3, v0, :cond_1

    invoke-static {p1}, Lga/m;->Q(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    invoke-static {p2}, Lga/m;->Q(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p2

    invoke-virtual {p0}, LFa/d;->K0()Z

    move-result p3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    invoke-static {p1, v0}, Lga/m;->h(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;I)F

    move-result v1

    invoke-static {p2, v0}, Lga/m;->h(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;I)F

    move-result v2

    invoke-virtual {p0, v1, v2}, LFa/d;->H0(FF)Z

    move-result v1

    invoke-virtual {p0, p3, v1}, LFa/d;->G0(ZZ)Z

    move-result p3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p3

    :cond_1
    sget-object v0, Lga/H;->FLOAT4:Lga/H;

    if-eq p3, v0, :cond_5

    sget-object v0, Lga/H;->QUATERNION:Lga/H;

    if-ne p3, v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lga/H;->FLOAT3:Lga/H;

    if-ne p3, v0, :cond_3

    invoke-static {p1}, Lga/m;->n0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-static {p2}, Lga/m;->n0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p2

    invoke-virtual {p0}, LFa/d;->K0()Z

    move-result p3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual {p0, v0, v1}, LFa/d;->H0(FF)Z

    move-result v0

    invoke-virtual {p0, p3, v0}, LFa/d;->G0(ZZ)Z

    move-result p3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, LFa/d;->H0(FF)Z

    move-result v0

    invoke-virtual {p0, p3, v0}, LFa/d;->G0(ZZ)Z

    move-result p3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    invoke-virtual {p0, p1, p2}, LFa/d;->H0(FF)Z

    move-result p1

    invoke-virtual {p0, p3, p1}, LFa/d;->G0(ZZ)Z

    move-result p1

    return p1

    :cond_3
    sget-object v0, Lga/H;->FLOAT2:Lga/H;

    if-ne p3, v0, :cond_4

    invoke-static {p1}, Lga/m;->l0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-static {p2}, Lga/m;->l0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p2

    invoke-virtual {p0}, LFa/d;->K0()Z

    move-result p3

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-virtual {p0, v0, v1}, LFa/d;->H0(FF)Z

    move-result v0

    invoke-virtual {p0, p3, v0}, LFa/d;->G0(ZZ)Z

    move-result p3

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget p2, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {p0, p1, p2}, LFa/d;->H0(FF)Z

    move-result p1

    invoke-virtual {p0, p3, p1}, LFa/d;->G0(ZZ)Z

    move-result p1

    return p1

    :cond_4
    invoke-static {p1}, Lga/m;->V(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p2}, Lga/m;->V(Ljava/lang/Object;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, LFa/d;->H0(FF)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    invoke-static {p1}, Lga/m;->p0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object p1

    invoke-static {p2}, Lga/m;->p0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object p2

    invoke-virtual {p0}, LFa/d;->K0()Z

    move-result p3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getX()F

    move-result v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getX()F

    move-result v1

    invoke-virtual {p0, v0, v1}, LFa/d;->H0(FF)Z

    move-result v0

    invoke-virtual {p0, p3, v0}, LFa/d;->G0(ZZ)Z

    move-result p3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getY()F

    move-result v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, LFa/d;->H0(FF)Z

    move-result v0

    invoke-virtual {p0, p3, v0}, LFa/d;->G0(ZZ)Z

    move-result p3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getZ()F

    move-result v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getZ()F

    move-result v1

    invoke-virtual {p0, v0, v1}, LFa/d;->H0(FF)Z

    move-result v0

    invoke-virtual {p0, p3, v0}, LFa/d;->G0(ZZ)Z

    move-result p3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->f()F

    move-result p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->f()F

    move-result p2

    invoke-virtual {p0, p1, p2}, LFa/d;->H0(FF)Z

    move-result p1

    invoke-virtual {p0, p3, p1}, LFa/d;->G0(ZZ)Z

    move-result p1

    return p1
.end method

.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, LFa/d;->i:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public abstract J0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation
.end method

.method public K0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public M()Lga/B;
    .locals 1

    sget-object v0, Lga/B;->BOTH:Lga/B;

    return-object v0
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    iget-object p1, p0, LFa/d;->g:Ljava/lang/String;

    return-object p1
.end method

.method public m0()V
    .locals 7

    iget-object v0, p0, LFa/d;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, LFa/d;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v4, :cond_0

    new-instance v5, Lga/A;

    invoke-direct {v5, v4}, Lga/A;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    invoke-virtual {v5, p0, v1}, Lga/A;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;I)Lga/H;

    move-result-object v4

    new-instance v5, Lga/A;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-direct {v5, v6}, Lga/A;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    invoke-virtual {v5, p0, v3}, Lga/A;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;I)Lga/H;

    move-result-object v5

    invoke-static {v4, v5}, Lga/C;->i(Lga/H;Lga/H;)Lga/H;

    move-result-object v4

    goto :goto_0

    :cond_0
    sget-object v4, Lga/H;->NUMBER:Lga/H;

    :goto_0
    invoke-virtual {p0, v0, v2, v4}, LFa/d;->I0(Ljava/lang/Object;Ljava/lang/Object;Lga/H;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LFa/d;->i:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, LFa/d;->i:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    :goto_1
    return-void
.end method
