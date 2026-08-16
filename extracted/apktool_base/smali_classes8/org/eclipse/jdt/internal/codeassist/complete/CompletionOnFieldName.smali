.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnFieldName;
.super Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;
.source "SourceFile"


# static fields
.field private static final FAKENAMESUFFIX:[C


# instance fields
.field public realName:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, " "

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnFieldName;->FAKENAMESUFFIX:[C

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnFieldName;->FAKENAMESUFFIX:[C

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;-><init>([CII)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnFieldName;->realName:[C

    return-void
.end method


# virtual methods
.method public printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "<CompleteOnFieldName:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnFieldName;->realName:[C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p1, :cond_1

    const-string p1, " = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_1
    const-string p1, ">;"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    throw v0
.end method
