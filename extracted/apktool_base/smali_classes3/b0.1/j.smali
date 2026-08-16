.class public final synthetic Lb0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;

.field public final synthetic c:Lcom/github/javaparser/ast/validator/ProblemReporter;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/j;->b:Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;

    iput-object p2, p0, Lb0/j;->c:Lcom/github/javaparser/ast/validator/ProblemReporter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lb0/j;->b:Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;

    iget-object v1, p0, Lb0/j;->c:Lcom/github/javaparser/ast/validator/ProblemReporter;

    check-cast p1, Lcom/github/javaparser/ast/body/Parameter;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;->B3(Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/Parameter;)V

    return-void
.end method
