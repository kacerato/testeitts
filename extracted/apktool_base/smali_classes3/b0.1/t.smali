.class public final synthetic Lb0/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;

.field public final synthetic c:Lcom/github/javaparser/ast/validator/ProblemReporter;

.field public final synthetic d:Lcom/github/javaparser/ast/type/VarType;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/type/VarType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/t;->b:Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;

    iput-object p2, p0, Lb0/t;->c:Lcom/github/javaparser/ast/validator/ProblemReporter;

    iput-object p3, p0, Lb0/t;->d:Lcom/github/javaparser/ast/type/VarType;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lb0/t;->b:Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;

    iget-object v1, p0, Lb0/t;->c:Lcom/github/javaparser/ast/validator/ProblemReporter;

    iget-object v2, p0, Lb0/t;->d:Lcom/github/javaparser/ast/type/VarType;

    check-cast p1, Lcom/github/javaparser/ast/body/VariableDeclarator;

    invoke-static {v0, v1, v2, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;->d(Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/body/VariableDeclarator;)V

    return-void
.end method
