.class public final Lorg/eclipse/jdt/internal/compiler/lookup/MemberTypeBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/MemberTypeBinding;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;)V

    return-void
.end method

.method public constructor <init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    .line 2
    iget-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v0, 0x80c

    or-long/2addr p1, v0

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    return-void
.end method


# virtual methods
.method public checkSyntheticArgsAndFields()V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/MemberTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MemberTypeBinding;->checkSyntheticArgsAndFields()V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->addSyntheticArgumentAndField(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public clone(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/MemberTypeBinding;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MemberTypeBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MemberTypeBinding;)V

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    return-object v0
.end method

.method public constantPoolName()[C
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName:[C

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    const/16 v2, 0x24

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName:[C

    return-object v0
.end method

.method public initializeDeprecatedAnnotationTagBits()V
    .locals 8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->initializeDeprecatedAnnotationTagBits()V

    return-void

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide v2, 0x400000000L

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->initializeDeprecatedAnnotationTagBits()V

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide v6, 0x400000000000L

    and-long/2addr v0, v6

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    iget-wide v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long v1, v6, v2

    cmp-long v1, v1, v4

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->initializeDeprecatedAnnotationTagBits()V

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isViewedAsDeprecated()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    and-long/2addr v3, v5

    or-long v0, v1, v3

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_2
    return-void
.end method

.method public module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->annotatedDebugName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Member type : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
