.class public Lcom/github/javaparser/metamodel/FieldAccessExprMetaModel;
.super Lcom/github/javaparser/metamodel/ExpressionMetaModel;
.source "SourceFile"


# instance fields
.field public namePropertyMetaModel:Lcom/github/javaparser/metamodel/PropertyMetaModel;

.field public scopePropertyMetaModel:Lcom/github/javaparser/metamodel/PropertyMetaModel;

.field public typeArgumentsPropertyMetaModel:Lcom/github/javaparser/metamodel/PropertyMetaModel;

.field public usingDiamondOperatorPropertyMetaModel:Lcom/github/javaparser/metamodel/PropertyMetaModel;


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

    const-class v2, Lcom/github/javaparser/ast/expr/FieldAccessExpr;

    const-string v3, "FieldAccessExpr"

    const-string v4, "com.github.javaparser.ast.expr"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/github/javaparser/metamodel/ExpressionMetaModel;-><init>(Ljava/util/Optional;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method
