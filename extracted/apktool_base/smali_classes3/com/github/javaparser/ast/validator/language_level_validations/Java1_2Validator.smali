.class public Lcom/github/javaparser/ast/validator/language_level_validations/Java1_2Validator;
.super Lcom/github/javaparser/ast/validator/language_level_validations/Java1_1Validator;
.source "SourceFile"


# instance fields
.field final modifiersWithoutDefaultAndStaticInterfaceMethodsAndPrivateInterfaceMethods:Lcom/github/javaparser/ast/validator/Validator;

.field final strictfpNotAllowed:Lcom/github/javaparser/ast/validator/Validator;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_1Validator;-><init>()V

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;-><init>(ZZZ)V

    iput-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_2Validator;->modifiersWithoutDefaultAndStaticInterfaceMethodsAndPrivateInterfaceMethods:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v1, Lcom/github/javaparser/ast/validator/ReservedKeywordValidator;

    const-string v2, "strictfp"

    invoke-direct {v1, v2}, Lcom/github/javaparser/ast/validator/ReservedKeywordValidator;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_2Validator;->strictfpNotAllowed:Lcom/github/javaparser/ast/validator/Validator;

    iget-object v2, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->modifiersWithoutStrictfpAndDefaultAndStaticInterfaceMethodsAndPrivateInterfaceMethods:Lcom/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v2, v0}, Lcom/github/javaparser/ast/validator/Validators;->replace(Lcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    invoke-virtual {p0, v1}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    return-void
.end method
