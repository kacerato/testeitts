.class public final synthetic Lb0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/body/Parameter;

.field public final synthetic c:Lcom/github/javaparser/ast/validator/ProblemReporter;

.field public final synthetic d:Lcom/github/javaparser/ast/body/RecordDeclaration;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/body/Parameter;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/RecordDeclaration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/m;->b:Lcom/github/javaparser/ast/body/Parameter;

    iput-object p2, p0, Lb0/m;->c:Lcom/github/javaparser/ast/validator/ProblemReporter;

    iput-object p3, p0, Lb0/m;->d:Lcom/github/javaparser/ast/body/RecordDeclaration;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lb0/m;->b:Lcom/github/javaparser/ast/body/Parameter;

    iget-object v1, p0, Lb0/m;->c:Lcom/github/javaparser/ast/validator/ProblemReporter;

    iget-object v2, p0, Lb0/m;->d:Lcom/github/javaparser/ast/body/RecordDeclaration;

    check-cast p1, Lcom/github/javaparser/ast/body/MethodDeclaration;

    invoke-static {v0, v1, v2, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/RecordDeclarationValidator;->d(Lcom/github/javaparser/ast/body/Parameter;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/RecordDeclaration;Lcom/github/javaparser/ast/body/MethodDeclaration;)V

    return-void
.end method
