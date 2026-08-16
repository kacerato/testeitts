.class public Lorg/eclipse/jdt/internal/eval/GlobalVariable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field declarationStart:I

.field initExpressionStart:I

.field initializer:[C

.field initializerLineStart:I

.field initializerStart:I

.field name:[C

.field typeName:[C


# direct methods
.method public constructor <init>([C[C[C)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->declarationStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->initializerStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->initializerLineStart:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->typeName:[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->name:[C

    iput-object p3, p0, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->initializer:[C

    return-void
.end method


# virtual methods
.method public getInitializer()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->initializer:[C

    return-object v0
.end method

.method public getName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->name:[C

    return-object v0
.end method

.method public getTypeName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->typeName:[C

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->typeName:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->name:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->initializer:[C

    if-eqz v1, :cond_0

    const-string v1, "= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/GlobalVariable;->initializer:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
