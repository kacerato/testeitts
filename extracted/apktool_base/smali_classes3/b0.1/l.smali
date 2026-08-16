.class public final synthetic Lb0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/github/javaparser/ast/body/MethodDeclaration;

    invoke-static {p1}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/RecordDeclarationValidator;->a(Lcom/github/javaparser/ast/body/MethodDeclaration;)Z

    move-result p1

    return p1
.end method
