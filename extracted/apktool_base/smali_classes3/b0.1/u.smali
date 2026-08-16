.class public final synthetic Lb0/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/validator/ProblemReporter;

.field public final synthetic c:Lcom/github/javaparser/ast/type/VarType;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/type/VarType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/u;->b:Lcom/github/javaparser/ast/validator/ProblemReporter;

    iput-object p2, p0, Lb0/u;->c:Lcom/github/javaparser/ast/type/VarType;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lb0/u;->b:Lcom/github/javaparser/ast/validator/ProblemReporter;

    iget-object v1, p0, Lb0/u;->c:Lcom/github/javaparser/ast/type/VarType;

    check-cast p1, Lcom/github/javaparser/ast/expr/Expression;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;->a(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/expr/Expression;)V

    return-void
.end method
