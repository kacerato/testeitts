.class public Lcom/github/javaparser/metamodel/CallableDeclarationMetaModel;
.super Lcom/github/javaparser/metamodel/BodyDeclarationMetaModel;
.source "SourceFile"


# instance fields
.field public modifiersPropertyMetaModel:Lcom/github/javaparser/metamodel/PropertyMetaModel;

.field public namePropertyMetaModel:Lcom/github/javaparser/metamodel/PropertyMetaModel;

.field public parametersPropertyMetaModel:Lcom/github/javaparser/metamodel/PropertyMetaModel;

.field public receiverParameterPropertyMetaModel:Lcom/github/javaparser/metamodel/PropertyMetaModel;

.field public thrownExceptionsPropertyMetaModel:Lcom/github/javaparser/metamodel/PropertyMetaModel;

.field public typeParametersPropertyMetaModel:Lcom/github/javaparser/metamodel/PropertyMetaModel;


# direct methods
.method public constructor <init>(Ljava/util/Optional;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "superBaseNodeMetaModel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/metamodel/BaseNodeMetaModel;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 1
    const-class v2, Lcom/github/javaparser/ast/body/CallableDeclaration;

    const-string v3, "CallableDeclaration"

    const-string v4, "com.github.javaparser.ast.body"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/github/javaparser/metamodel/BodyDeclarationMetaModel;-><init>(Ljava/util/Optional;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Optional;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "superNodeMetaModel",
            "type",
            "name",
            "packageName",
            "isAbstract",
            "hasWildcard"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/metamodel/BaseNodeMetaModel;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/github/javaparser/ast/Node;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 2
    invoke-direct/range {p0 .. p6}, Lcom/github/javaparser/metamodel/BodyDeclarationMetaModel;-><init>(Ljava/util/Optional;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method
