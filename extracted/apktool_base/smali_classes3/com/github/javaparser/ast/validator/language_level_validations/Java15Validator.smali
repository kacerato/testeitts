.class public Lcom/github/javaparser/ast/validator/language_level_validations/Java15Validator;
.super Lcom/github/javaparser/ast/validator/language_level_validations/Java14Validator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Java14Validator;-><init>()V

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noTextBlockLiteral:Lcom/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/validator/Validators;->remove(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    return-void
.end method
