.class Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$AcceptedType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AcceptedType"
.end annotation


# instance fields
.field public accessibility:I

.field public enclosingTypeNames:[[C

.field public fullyQualifiedName:[C

.field public modifiers:I

.field public mustBeQualified:Z

.field public packageName:[C

.field public qualifiedTypeName:[C

.field public simpleTypeName:[C


# direct methods
.method public constructor <init>([C[C[[CII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$AcceptedType;->mustBeQualified:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$AcceptedType;->fullyQualifiedName:[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$AcceptedType;->qualifiedTypeName:[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$AcceptedType;->packageName:[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$AcceptedType;->simpleTypeName:[C

    iput-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$AcceptedType;->enclosingTypeNames:[[C

    iput p4, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$AcceptedType;->modifiers:I

    iput p5, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$AcceptedType;->accessibility:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$AcceptedType;->packageName:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$AcceptedType;->simpleTypeName:[C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$AcceptedType;->enclosingTypeNames:[[C

    const/16 v2, 0x2e

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
