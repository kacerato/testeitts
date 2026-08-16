.class public final synthetic Lcom/github/javaparser/ast/validator/language_level_validations/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/validator/ProblemReporter;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/validator/language_level_validations/g0;->b:Lcom/github/javaparser/ast/validator/ProblemReporter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/g0;->b:Lcom/github/javaparser/ast/validator/ProblemReporter;

    check-cast p1, Lcom/github/javaparser/ast/body/MethodDeclaration;

    invoke-static {v0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java8Validator;->Z(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/MethodDeclaration;)V

    return-void
.end method
