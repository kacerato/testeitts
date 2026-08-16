.class public Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;
.super Lorg/eclipse/jdt/internal/compiler/codegen/Label;
.source "SourceFile"


# instance fields
.field private count:I

.field public exceptionType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field public exceptionTypeReference:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

.field public ranges:[I

.field public se7Annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/Label;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    const/4 p1, -0x1

    .line 8
    filled-new-array {p1, p1}, [I

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->ranges:[I

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->count:I

    .line 10
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->exceptionType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/Label;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    const/4 p1, -0x1

    .line 2
    filled-new-array {p1, p1}, [I

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->ranges:[I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->count:I

    .line 4
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->exceptionType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 5
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->exceptionTypeReference:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 6
    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->se7Annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->count:I

    return v0
.end method

.method public place()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->registerExceptionHandler(Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->getPosition()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    return-void
.end method

.method public placeEnd()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->ranges:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->count:I

    add-int/lit8 v3, v2, -0x1

    aget v3, v1, v3

    if-ne v3, v0, :cond_0

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->count:I

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->count:I

    aput v0, v1, v2

    :goto_0
    return-void
.end method

.method public placeStart()V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->count:I

    if-lez v1, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->ranges:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    if-ne v2, v0, :cond_0

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->count:I

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->ranges:[I

    array-length v3, v2

    if-ne v1, v3, :cond_1

    mul-int/lit8 v1, v3, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->ranges:[I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->ranges:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->count:I

    aput v0, v1, v2

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x40

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "(type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->exceptionType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->readableName()[C

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v0, ", position="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ", ranges = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->count:I

    if-nez v0, :cond_1

    const-string v0, "[]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->count:I

    if-lt v0, v3, :cond_3

    and-int/lit8 v0, v3, 0x1

    if-ne v0, v2, :cond_2

    const-string v0, ",?]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_2
    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_4

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->ranges:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_4
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->ranges:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
