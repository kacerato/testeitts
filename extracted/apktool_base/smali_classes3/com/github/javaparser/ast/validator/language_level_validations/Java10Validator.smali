.class public Lcom/github/javaparser/ast/validator/language_level_validations/Java10Validator;
.super Lcom/github/javaparser/ast/validator/language_level_validations/Java9Validator;
.source "SourceFile"


# instance fields
.field final varOnlyOnLocalVariableDefinitionAndForAndTry:Lcom/github/javaparser/ast/validator/Validator;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Java9Validator;-><init>()V

    new-instance v0, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;

    new-instance v1, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;-><init>(Z)V

    const-class v2, Lcom/github/javaparser/ast/type/VarType;

    invoke-direct {v0, v2, v1}, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;-><init>(Ljava/lang/Class;Lcom/github/javaparser/ast/validator/TypedValidator;)V

    iput-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java10Validator;->varOnlyOnLocalVariableDefinitionAndForAndTry:Lcom/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    return-void
.end method
