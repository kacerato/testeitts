.class public Lorg/eclipse/jdt/internal/core/SourceModule;
.super Lorg/eclipse/jdt/internal/core/NamedMember;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/AbstractModule;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/NamedMember;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCategories()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->getCategories()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public getFlags()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getHandleMementoDelimiter()C
    .locals 1

    const/16 v0, 0x60

    return v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    invoke-interface {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/AbstractModule;->toStringContent(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/JavaModelException;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
