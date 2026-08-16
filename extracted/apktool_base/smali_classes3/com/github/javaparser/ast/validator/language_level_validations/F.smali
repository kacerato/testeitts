.class public final synthetic Lcom/github/javaparser/ast/validator/language_level_validations/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/validator/TypedValidator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    check-cast p1, Lcom/github/javaparser/ast/stmt/SwitchEntry;

    invoke-static {p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->N(Lcom/github/javaparser/ast/stmt/SwitchEntry;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method
