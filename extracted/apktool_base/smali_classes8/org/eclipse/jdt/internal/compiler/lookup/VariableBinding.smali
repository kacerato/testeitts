.class public abstract Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
.source "SourceFile"


# instance fields
.field protected constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

.field public id:I

.field public modifiers:I

.field public name:[C

.field public tagBits:J

.field public type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;


# direct methods
.method public constructor <init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/impl/Constant;)V
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eqz p2, :cond_0

    iget-wide p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    iget-wide p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v0, 0x80

    and-long/2addr p1, v0

    or-long/2addr p1, p3

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    :cond_0
    return-void
.end method


# virtual methods
.method public constant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object v0
.end method

.method public constant(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->constant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1
.end method

.method public abstract getAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
.end method

.method public final isBlankFinal()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isEffectivelyFinal()Z
    .locals 4

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/16 v2, 0x800

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isFinal()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNonNull()Z
    .locals 6

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/high16 v2, 0x100000000000000L

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isNullable()Z
    .locals 6

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/high16 v2, 0x80000000000000L

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public readableName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    return-object v0
.end method

.method public setConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printModifiers(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const-string v1, "[unresolved] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->debugName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "<no type>"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_1

    :cond_2
    const-string v2, "<no name>"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
