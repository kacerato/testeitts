.class public final synthetic Lcom/github/javaparser/ast/validator/language_level_validations/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

.field public final synthetic c:Lcom/github/javaparser/ast/validator/ProblemReporter;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/validator/language_level_validations/W;->b:Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    iput-object p2, p0, Lcom/github/javaparser/ast/validator/language_level_validations/W;->c:Lcom/github/javaparser/ast/validator/ProblemReporter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/W;->b:Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    iget-object v1, p0, Lcom/github/javaparser/ast/validator/language_level_validations/W;->c:Lcom/github/javaparser/ast/validator/ProblemReporter;

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_1Validator;->R(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/Node;)V

    return-void
.end method
