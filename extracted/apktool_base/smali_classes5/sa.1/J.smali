.class public final Lsa/J;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsa/J$k;,
        Lsa/J$l;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "material",
            "color"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "Color"

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->b0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :try_start_1
    const-string v0, "color"

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->b0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "material",
            "runtimeAliases",
            "serializedAliases"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lsa/J;->o(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lsa/J$f;

    invoke-direct {p2, p0}, Lsa/J$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    invoke-static {p1, p2}, Lsa/J;->g([Ljava/lang/String;Lsa/J$k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public static c(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "Color"

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->q(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :try_start_1
    const-string v1, "color"

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->q(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    :cond_2
    return-object v0
.end method

.method public static d(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "material",
            "runtimeAliases",
            "serializedAliases"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lsa/J;->o(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lsa/J$a;

    invoke-direct {p2, p0}, Lsa/J$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    invoke-static {p1, p2}, Lsa/J;->g([Ljava/lang/String;Lsa/J$k;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p0

    return-object p0

    :cond_1
    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_3

    aget-object v2, p1, v1

    const-string v3, "emissiveColor"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "emissiveFallback"

    invoke-static {p0, p1}, Lsa/J;->q(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "material",
            "runtimeAliases",
            "serializedAliases",
            "enumClass",
            "fallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Lcom/itsmagic/engine/Engines/Engine/Material/Material;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lsa/J;->l(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Enum;

    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    aget-object v0, p1, p3

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p4
.end method

.method public static f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "fieldName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g([Ljava/lang/String;Lsa/J$k;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "aliases",
            "getter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            "Lsa/J$k<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-interface {p1, v3}, Lsa/J$k;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    return-object v3

    :catch_0
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method public static h(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    invoke-static {p0}, Lsa/J;->j(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-static {v0}, Lsa/J;->c(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static i(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Float;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "material",
            "runtimeAliases",
            "serializedAliases"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lsa/J;->o(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lsa/J$d;

    invoke-direct {p2, p0}, Lsa/J$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    invoke-static {p1, p2}, Lsa/J;->g([Ljava/lang/String;Lsa/J$k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    return-object p0
.end method

.method public static j(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;",
            ")",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Material/Material;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-static {v1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->ModelRenderer:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->n0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getMaterial()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->SkinnedModelRenderer:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->n0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    instance-of v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->getMaterial()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_2
    return-object v0
.end method

.method public static k(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "material",
            "aliases"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const-string v2, "serializedShaderEntries"

    invoke-static {v1, v2}, Lsa/J;->f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/util/List;

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    check-cast p0, Ljava/util/List;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, p1, v2

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const-string v4, "String"

    invoke-static {v3, v4, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->s(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_5
    :goto_2
    return-object v0
.end method

.method public static l(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "material",
            "runtimeAliases",
            "serializedAliases"
        }
    .end annotation

    invoke-static {p0}, Lsa/J;->n(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p2}, Lsa/J;->k(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p2, Lsa/J$h;

    invoke-direct {p2, p0}, Lsa/J$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    invoke-static {p1, p2}, Lsa/J;->g([Ljava/lang/String;Lsa/J$k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static m(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;)Lub/p;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "material",
            "runtimeAliases",
            "serializedAliases"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lsa/J;->o(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lsa/J$b;

    invoke-direct {p2, p0}, Lsa/J$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    invoke-static {p1, p2}, Lsa/J;->g([Ljava/lang/String;Lsa/J$k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lub/p;

    return-object p0
.end method

.method public static n(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->y()Ldc/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->y()Ldc/k;

    move-result-object p0

    invoke-interface {p0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static o(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "material",
            "runtimeAliases",
            "serializedAliases"
        }
    .end annotation

    invoke-static {p0}, Lsa/J;->n(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public static p(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Ljava/lang/String;)Lub/n;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "material",
            "fieldName"
        }
    .end annotation

    invoke-static {p0}, Lsa/J;->n(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->y()Ldc/k;

    move-result-object p0

    invoke-interface {p0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-static {v0, p1}, Lsa/J;->f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lub/n;

    if-eqz p1, :cond_3

    check-cast p0, Lub/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_3
    return-object v1
.end method

.method public static q(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "material",
            "fieldName"
        }
    .end annotation

    invoke-static {p0, p1}, Lsa/J;->p(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Ljava/lang/String;)Lub/n;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v0}, Lub/n;->i(II)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object p1
.end method

.method public static r(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "material",
            "runtimeAliases",
            "serializedAliases",
            "value"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lsa/J;->o(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    new-instance p3, Lsa/J$g;

    invoke-direct {p3, p0}, Lsa/J$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    invoke-static {p1, p2, p3}, Lsa/J;->u([Ljava/lang/String;Ljava/lang/Object;Lsa/J$l;)Z

    return-void
.end method

.method public static s(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "material",
            "runtimeAliases",
            "serializedAliases",
            "color"
        }
    .end annotation

    if-eqz p0, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0, p1, p2}, Lsa/J;->o(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p2

    new-instance v0, Lsa/J$j;

    invoke-direct {v0, p0}, Lsa/J$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    invoke-static {p1, p2, v0}, Lsa/J;->u([Ljava/lang/String;Ljava/lang/Object;Lsa/J$l;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    aget-object v1, p1, v0

    const-string v2, "emissiveColor"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "emissiveFallback"

    invoke-static {p0, v1, p3}, Lsa/J;->y(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static t(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "material",
            "runtimeAliases",
            "serializedAliases",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/Material/Material;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lsa/J;->w(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static u([Ljava/lang/String;Ljava/lang/Object;Lsa/J$l;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "aliases",
            "value",
            "setter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            "TT;",
            "Lsa/J$l<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-interface {p2, v3, p1}, Lsa/J$l;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v0
.end method

.method public static v(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "material",
            "runtimeAliases",
            "serializedAliases",
            "value"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lsa/J;->o(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    new-instance p3, Lsa/J$e;

    invoke-direct {p3, p0}, Lsa/J$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    invoke-static {p1, p2, p3}, Lsa/J;->u([Ljava/lang/String;Ljava/lang/Object;Lsa/J$l;)Z

    return-void
.end method

.method public static w(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "material",
            "runtimeAliases",
            "serializedAliases",
            "value"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lsa/J;->o(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lsa/J$i;

    invoke-direct {p2, p0}, Lsa/J$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    invoke-static {p1, p3, p2}, Lsa/J;->u([Ljava/lang/String;Ljava/lang/Object;Lsa/J$l;)Z

    return-void
.end method

.method public static x(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;Lub/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "material",
            "runtimeAliases",
            "serializedAliases",
            "texture"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lsa/J;->o(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lsa/J$c;

    invoke-direct {p2, p0}, Lsa/J$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    invoke-static {p1, p3, p2}, Lsa/J;->u([Ljava/lang/String;Ljava/lang/Object;Lsa/J$l;)Z

    return-void
.end method

.method public static y(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "material",
            "fieldName",
            "color"
        }
    .end annotation

    invoke-static {p0, p1}, Lsa/J;->p(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Ljava/lang/String;)Lub/n;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p2

    invoke-virtual {p0, p1, p1, p2}, Lub/n;->Y(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    invoke-virtual {p0}, Lub/n;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return p1
.end method
