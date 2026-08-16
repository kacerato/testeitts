.class public Lorg/eclipse/jdt/internal/compiler/ast/Receiver;
.super Lorg/eclipse/jdt/internal/compiler/ast/Argument;
.source "SourceFile"


# instance fields
.field public qualifyingName:Lorg/eclipse/jdt/internal/compiler/ast/NameReference;


# direct methods
.method public constructor <init>([CJLorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/ast/NameReference;I)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;-><init>([CJLorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    iput-object p5, p0, Lorg/eclipse/jdt/internal/compiler/ast/Receiver;->qualifyingName:Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    return-void
.end method


# virtual methods
.method public isReceiver()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printModifiers(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez v0, :cond_0

    const-string v0, "<no type> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Receiver;->qualifyingName:Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const/16 p1, 0x2e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return-object p2
.end method
