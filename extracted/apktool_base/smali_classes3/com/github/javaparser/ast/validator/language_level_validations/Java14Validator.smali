.class public Lcom/github/javaparser/ast/validator/language_level_validations/Java14Validator;
.super Lcom/github/javaparser/ast/validator/language_level_validations/Java13Validator;
.source "SourceFile"


# instance fields
.field final recordAsTypeIdentifierNotAllowed:Lcom/github/javaparser/ast/validator/Validator;

.field final recordDeclarationValidator:Lcom/github/javaparser/ast/validator/Validator;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Java13Validator;-><init>()V

    new-instance v0, Lcom/github/javaparser/ast/validator/RecordAsTypeIdentifierNotAllowed;

    invoke-direct {v0}, Lcom/github/javaparser/ast/validator/RecordAsTypeIdentifierNotAllowed;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java14Validator;->recordAsTypeIdentifierNotAllowed:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v0, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;

    new-instance v1, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/RecordDeclarationValidator;

    invoke-direct {v1}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/RecordDeclarationValidator;-><init>()V

    const-class v2, Lcom/github/javaparser/ast/body/RecordDeclaration;

    invoke-direct {v0, v2, v1}, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;-><init>(Ljava/lang/Class;Lcom/github/javaparser/ast/validator/TypedValidator;)V

    iput-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java14Validator;->recordDeclarationValidator:Lcom/github/javaparser/ast/validator/Validator;

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noSwitchExpressions:Lcom/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/validator/Validators;->remove(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->onlyOneLabelInSwitchCase:Lcom/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/validator/Validators;->remove(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noYield:Lcom/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/validator/Validators;->remove(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    return-void
.end method
