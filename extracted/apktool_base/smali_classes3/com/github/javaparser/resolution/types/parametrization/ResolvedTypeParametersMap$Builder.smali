.class public Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private nameToDeclaration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;",
            ">;"
        }
    .end annotation
.end field

.field private nameToValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;->nameToValue:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;->nameToDeclaration:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nameToValue",
            "nameToDeclaration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;->nameToValue:Ljava/util/Map;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;->nameToDeclaration:Ljava/util/Map;

    .line 9
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;
    .locals 4

    new-instance v0, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;->nameToValue:Ljava/util/Map;

    iget-object v2, p0, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;->nameToDeclaration:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$1;)V

    return-object v0
.end method

.method public setValue(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeParameter",
            "value"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;->nameToValue:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;->nameToDeclaration:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
