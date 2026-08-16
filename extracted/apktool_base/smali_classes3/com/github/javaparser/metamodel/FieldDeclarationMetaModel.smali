.class public Lcom/github/javaparser/metamodel/FieldDeclarationMetaModel;
.super Lcom/github/javaparser/metamodel/BodyDeclarationMetaModel;
.source "SourceFile"


# instance fields
.field public maximumCommonTypePropertyMetaModel:Lcom/github/javaparser/metamodel/PropertyMetaModel;

.field public modifiersPropertyMetaModel:Lcom/github/javaparser/metamodel/PropertyMetaModel;

.field public variablesPropertyMetaModel:Lcom/github/javaparser/metamodel/PropertyMetaModel;


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

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-class v2, Lcom/github/javaparser/ast/body/FieldDeclaration;

    const-string v3, "FieldDeclaration"

    const-string v4, "com.github.javaparser.ast.body"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/github/javaparser/metamodel/BodyDeclarationMetaModel;-><init>(Ljava/util/Optional;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method
