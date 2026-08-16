.class public final synthetic Lb0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;

.field public final synthetic c:Lcom/github/javaparser/ast/type/VarType;

.field public final synthetic d:Lcom/github/javaparser/ast/validator/ProblemReporter;

.field public final synthetic e:Lcom/github/javaparser/ast/body/VariableDeclarator;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/VariableDeclarator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/p;->b:Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;

    iput-object p2, p0, Lb0/p;->c:Lcom/github/javaparser/ast/type/VarType;

    iput-object p3, p0, Lb0/p;->d:Lcom/github/javaparser/ast/validator/ProblemReporter;

    iput-object p4, p0, Lb0/p;->e:Lcom/github/javaparser/ast/body/VariableDeclarator;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lb0/p;->b:Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;

    iget-object v1, p0, Lb0/p;->c:Lcom/github/javaparser/ast/type/VarType;

    iget-object v2, p0, Lb0/p;->d:Lcom/github/javaparser/ast/validator/ProblemReporter;

    iget-object v3, p0, Lb0/p;->e:Lcom/github/javaparser/ast/body/VariableDeclarator;

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;->e(Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/VariableDeclarator;Lcom/github/javaparser/ast/Node;)V

    return-void
.end method
