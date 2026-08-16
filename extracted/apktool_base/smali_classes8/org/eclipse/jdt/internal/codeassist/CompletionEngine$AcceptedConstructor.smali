.class Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$AcceptedConstructor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AcceptedConstructor"
.end annotation


# instance fields
.field public accessibility:I

.field public extraFlags:I

.field public fullyQualifiedName:[C

.field public modifiers:I

.field public mustBeQualified:Z

.field public packageName:[C

.field public parameterCount:I

.field public parameterNames:[[C

.field public parameterTypes:[[C

.field public proposeConstructor:Z

.field public proposeType:Z

.field public signature:[C

.field public simpleTypeName:[C

.field public typeModifiers:I


# direct methods
.method public constructor <init>(I[CI[C[[C[[CI[CII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$AcceptedConstructor;->proposeType:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$AcceptedConstructor;->proposeConstructor:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$AcceptedConstructor;->fullyQualifiedName:[C

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$AcceptedConstructor;->mustBeQualified:Z

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$AcceptedConstructor;->modifiers:I

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$AcceptedConstructor;->simpleTypeName:[C

    iput p3, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$AcceptedConstructor;->parameterCount:I

    iput-object p4, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$AcceptedConstructor;->signature:[C

    iput-object p5, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$AcceptedConstructor;->parameterTypes:[[C

    iput-object p6, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$AcceptedConstructor;->parameterNames:[[C

    iput p7, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$AcceptedConstructor;->typeModifiers:I

    iput-object p8, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$AcceptedConstructor;->packageName:[C

    iput p9, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$AcceptedConstructor;->extraFlags:I

    iput p10, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$AcceptedConstructor;->accessibility:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$AcceptedConstructor;->packageName:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$AcceptedConstructor;->simpleTypeName:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
