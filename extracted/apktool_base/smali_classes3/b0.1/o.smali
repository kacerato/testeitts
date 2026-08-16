.class public final synthetic Lb0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/body/RecordDeclaration;

.field public final synthetic c:Lcom/github/javaparser/ast/validator/ProblemReporter;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/body/RecordDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/o;->b:Lcom/github/javaparser/ast/body/RecordDeclaration;

    iput-object p2, p0, Lb0/o;->c:Lcom/github/javaparser/ast/validator/ProblemReporter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lb0/o;->b:Lcom/github/javaparser/ast/body/RecordDeclaration;

    iget-object v1, p0, Lb0/o;->c:Lcom/github/javaparser/ast/validator/ProblemReporter;

    check-cast p1, Lcom/github/javaparser/ast/body/Parameter;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/RecordDeclarationValidator;->b(Lcom/github/javaparser/ast/body/RecordDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/Parameter;)V

    return-void
.end method
