.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocFieldReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;


# instance fields
.field public completionFlags:I

.field public separatorPosition:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;III[C)V
    .locals 4

    int-to-long v0, p3

    const/16 p5, 0x20

    shl-long v2, v0, p5

    add-long/2addr v2, v0

    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    const/4 p5, 0x0

    .line 1
    invoke-direct {p0, p5, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;-><init>([CJ)V

    const/4 p5, 0x1

    .line 2
    iput p5, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocFieldReference;->completionFlags:I

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 4
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;->tagSourceStart:I

    .line 5
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;->tagSourceEnd:I

    .line 6
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;->tagValue:I

    .line 7
    iput p4, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocFieldReference;->separatorPosition:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;I[C)V
    .locals 2

    .line 8
    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->token:[C

    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->nameSourcePosition:J

    invoke-direct {p0, p3, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;-><init>([CJ)V

    const/4 p3, 0x1

    .line 9
    iput p3, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocFieldReference;->completionFlags:I

    .line 10
    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 11
    iput p2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocFieldReference;->separatorPosition:I

    .line 12
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;->tagSourceStart:I

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;->tagSourceStart:I

    .line 13
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;->tagSourceEnd:I

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;->tagSourceEnd:I

    .line 14
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;->tagValue:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;->tagValue:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;I)V
    .locals 5

    .line 15
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    iget-wide v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->nameSourcePosition:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    shl-long/2addr v1, v3

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;-><init>([CJ)V

    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocFieldReference;->completionFlags:I

    .line 17
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 18
    iput p2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocFieldReference;->separatorPosition:I

    .line 19
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;->tagSourceStart:I

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;->tagSourceStart:I

    .line 20
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;->tagSourceEnd:I

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;->tagSourceEnd:I

    .line 21
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;->tagValue:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;->tagValue:I

    return-void
.end method


# virtual methods
.method public addCompletionFlags(I)V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocFieldReference;->completionFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocFieldReference;->completionFlags:I

    return-void
.end method

.method public completeAnException()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocFieldReference;->completionFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public completeBaseTypes()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocFieldReference;->completionFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public completeFormalReference()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocFieldReference;->completionFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public completeInText()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocFieldReference;->completionFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCompletionFlags()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocFieldReference;->completionFlags:I

    return v0
.end method

.method public internalResolveType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->token:[C

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;->internalResolveType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_1
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 6

    const-string v0, "<CompleteOnJavadocFieldReference:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocFieldReference;->completionFlags:I

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-lez v1, :cond_8

    const/16 v1, 0xa

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v3

    :goto_0
    if-lt v4, v0, :cond_7

    const-string v0, "infos:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocFieldReference;->completeAnException()Z

    move-result v0

    const/16 v4, 0x2c

    if-eqz v0, :cond_0

    const-string v0, "exception"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v4

    goto :goto_1

    :cond_0
    move v0, v3

    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocFieldReference;->completeInText()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    const-string v0, "text"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v4

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocFieldReference;->completeBaseTypes()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    const-string v0, "base types"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    move v4, v0

    :goto_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocFieldReference;->completeFormalReference()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v4, :cond_5

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    const-string v0, "formal reference"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_7
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    :goto_3
    if-lt v3, p1, :cond_9

    const/16 p1, 0x3e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2

    :cond_9
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method
