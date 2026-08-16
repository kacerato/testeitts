.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnBranchStatementLabel;
.super Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;
.source "SourceFile"


# static fields
.field public static final BREAK:I = 0x1

.field public static final CONTINUE:I = 0x2


# instance fields
.field private kind:I

.field public possibleLabels:[[C


# direct methods
.method public constructor <init>(I[CII[[C)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;-><init>([CII)V

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnBranchStatementLabel;->kind:I

    iput-object p5, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnBranchStatementLabel;->possibleLabels:[[C

    return-void
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnBranchStatementLabel;->kind:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "continue "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string p1, "break "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string p1, "<CompleteOnLabel:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->label:[C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string p1, ">;"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    throw v0
.end method
