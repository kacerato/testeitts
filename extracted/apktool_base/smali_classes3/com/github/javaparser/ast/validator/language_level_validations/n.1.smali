.class public final synthetic Lcom/github/javaparser/ast/validator/language_level_validations/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    check-cast p2, Lcom/github/javaparser/ast/validator/ProblemReporter;

    invoke-static {p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->f(Lcom/github/javaparser/ast/modules/ModuleDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method
