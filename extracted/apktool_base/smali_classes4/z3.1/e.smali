.class public Lz3/e;
.super Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz3/e$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 5

    new-instance v0, Lz3/e$a;

    invoke-direct {v0}, Lz3/e$a;-><init>()V

    const-string v1, "jr.doc"

    const-string v2, "Returns documentation for a JAVARuntime API method."

    invoke-direct {p0, v1, v2, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/u;)V

    const-string v0, "JAVARuntime method target, e.g. javaruntime.Vector3.setX."

    const/4 v1, 0x1

    const-string v2, "target"

    invoke-virtual {p0, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->B(Ljava/lang/String;)V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;->JAVA_CODING:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;->LUA_CODING:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;->EXPLAIN:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;->PLANNING:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;->NORMAL:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->A([Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;)V

    return-void
.end method

.method public static synthetic C(Ljava/lang/String;)Lz3/e$c;
    .locals 0

    invoke-static {p0}, Lz3/e;->H(Ljava/lang/String;)Lz3/e$c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 0

    invoke-static {p0, p1}, Lz3/e;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lz3/e;->G(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cls",
            "methodName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static G(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "cls"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, LJAVARuntime/JRDoc_EN;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, LJAVARuntime/JRDoc_EN;

    const-class v3, LJAVARuntime/JRDoc_PT;

    invoke-virtual {p0, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, LJAVARuntime/JRDoc_PT;

    const-string v4, "pt-br"

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, LJAVARuntime/JRDoc_PT;->value()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, LJAVARuntime/JRDoc_EN;->value()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    :cond_1
    :goto_0
    aget-object v1, v0, v2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "pt"

    goto :goto_1

    :cond_3
    const-string p1, "en"

    :goto_1
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_4

    const-string p0, "ERROR: no context available"

    return-object p0

    :cond_4
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Editor/Doc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".txt"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    new-instance v1, Lz3/e$b;

    invoke-direct {v1, p0, v0}, Lz3/e$b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {p1, v1}, LIc/o;->i(Ljava/io/InputStream;LIc/o$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_2
    aget-object p0, v0, v2

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    aget-object p0, v0, v2

    return-object p0

    :cond_7
    :goto_3
    const-string p0, "ERROR: documentation not found"

    return-object p0
.end method

.method public static H(Ljava/lang/String;)Lz3/e$c;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "javaruntime."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v1, Lz3/e$c;

    invoke-direct {v1, v2, p0, v0}, Lz3/e$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lz3/e$a;)V

    return-object v1

    :cond_4
    :goto_0
    return-object v0
.end method
