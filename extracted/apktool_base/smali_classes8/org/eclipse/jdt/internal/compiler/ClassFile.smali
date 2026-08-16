.class public Lorg/eclipse/jdt/internal/compiler/ClassFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;
.implements Lorg/eclipse/jdt/internal/compiler/lookup/TypeIds;


# static fields
.field public static final INITIAL_CONTENTS_SIZE:I = 0x190

.field public static final INITIAL_HEADER_SIZE:I = 0x5dc

.field public static final INNER_CLASSES_SIZE:I = 0x5

.field public static final NESTED_MEMBER_SIZE:I = 0x5


# instance fields
.field public bootstrapMethods:Ljava/util/List;

.field private bytes:[B

.field public codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

.field public constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

.field public constantPoolOffset:I

.field public contents:[B

.field public contentsOffset:I

.field protected creatingProblemType:Z

.field public enclosingClassFile:Lorg/eclipse/jdt/internal/compiler/ClassFile;

.field public header:[B

.field public headerOffset:I

.field public innerClassesBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isNestedType:Z

.field isShared:Z

.field public methodCount:I

.field public methodCountOffset:I

.field public missingTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            ">;"
        }
    .end annotation
.end field

.field public produceAttributes:I

.field public referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

.field public targetJDK:J

.field public visitedTypes:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->bootstrapMethods:Ljava/util/List;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->isShared:Z

    .line 4
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->missingTypes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->bootstrapMethods:Ljava/util/List;

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->isShared:Z

    .line 30
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->missingTypes:Ljava/util/List;

    .line 31
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;-><init>(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    .line 32
    iget-wide p1, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->targetJDK:J

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->targetJDK:J

    const/4 p1, 0x1

    .line 33
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    .line 34
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->isNestedType:Z

    .line 35
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;-><init>(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    .line 36
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->initByteArrays(I)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V
    .locals 5

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->bootstrapMethods:Ljava/util/List;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->isShared:Z

    .line 8
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->missingTypes:Ljava/util/List;

    .line 9
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;-><init>(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    .line 10
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    .line 11
    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->targetJDK:J

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->targetJDK:J

    .line 12
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->produceDebugAttributes:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    .line 13
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    .line 14
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->isNestedType:Z

    .line 15
    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->targetJDK:J

    const-wide/32 v3, 0x320000

    cmp-long p1, v1, v3

    if-ltz p1, :cond_1

    .line 16
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    or-int/lit8 v3, p1, 0x8

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    const-wide/32 v3, 0x340000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    or-int/lit8 p1, p1, 0x28

    .line 17
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    .line 18
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/codegen/TypeAnnotationCodeStream;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/TypeAnnotationCodeStream;-><init>(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    .line 19
    iget-boolean p1, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->produceMethodParameters:Z

    if-eqz p1, :cond_3

    .line 20
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;-><init>(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    goto :goto_0

    :cond_1
    const-wide/32 v3, 0x2d0004

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    const-wide/32 v0, 0x2d0003

    .line 22
    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->targetJDK:J

    .line 23
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    .line 24
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;-><init>(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    goto :goto_0

    .line 25
    :cond_2
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;-><init>(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    .line 26
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    array-length p1, p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    array-length v0, v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->initByteArrays(I)V

    return-void
.end method

.method private add(Ljava/util/Map;Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;)V
    .locals 1

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->pc:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addFieldAttributes(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;I)I
    .locals 8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->constant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateConstantValueAttribute(Lorg/eclipse/jdt/internal/compiler/impl/Constant;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;I)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->targetJDK:J

    const-wide/32 v3, 0x310000

    cmp-long v0, v0, v3

    if-gez v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateSyntheticAttribute()I

    move-result v0

    add-int/2addr p2, v0

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isDeprecated()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateDeprecatedAttribute()I

    move-result v0

    add-int/2addr p2, v0

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->genericSignature()[C

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateSignatureAttribute([C)I

    move-result v0

    add-int/2addr p2, v0

    :cond_3
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->targetJDK:J

    const-wide/32 v3, 0x300000

    cmp-long v0, v0, v3

    if-ltz v0, :cond_9

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->sourceField()Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v1, :cond_4

    const-wide v3, 0x2000000000L

    invoke-direct {p0, v1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateRuntimeAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;J)I

    move-result v3

    add-int/2addr p2, v3

    :cond_4
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_9

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/16 v4, 0x13

    const/high16 v5, 0x100000

    if-eqz v1, :cond_5

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_5

    invoke-virtual {v0, v4, v3}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getAllAnnotationContexts(ILjava/util/List;)V

    :cond_5
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_6

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_6

    invoke-virtual {v0, v4, v3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getAllAnnotationContexts(ILjava/util/List;)V

    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_9

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move v4, v2

    move v5, v4

    :goto_1
    if-lt v2, v0, :cond_7

    invoke-direct {p0, v1, v4, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateRuntimeTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;II)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_3

    :cond_7
    aget-object v6, v1, v2

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->visibility:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_8

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    add-int/lit8 v4, v4, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    :goto_3
    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->missingTypes:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectMissingTypes(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->missingTypes:Ljava/util/List;

    :cond_a
    return p2
.end method

.method private addFieldInfo(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/16 v1, 0x8

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v2, v2

    if-lt v0, v2, :cond_0

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->getAccessFlags()I

    move-result v0

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->targetJDK:J

    const-wide/32 v3, 0x310000

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    and-int/lit16 v0, v0, -0x1001

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    const/4 v4, 0x2

    add-int/2addr v2, v4

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    add-int/2addr v2, v4

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    add-int/lit8 v5, v2, 0x2

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    add-int/lit8 v0, v2, 0x4

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-direct {p0, p1, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addFieldAttributes(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;I)I

    move-result p1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/2addr v0, v4

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v1, v1

    if-lt v0, v1, :cond_2

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v2, v2, 0x3

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void
.end method

.method private addMissingAbstractProblemMethod(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 6

    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    and-int/lit16 p1, p1, -0xd01

    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoHeader(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I)V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoAttributes(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateCodeAttributeHeader()V

    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v4, 0x19

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\t"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Lorg/eclipse/jdt/core/compiler/IProblem;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Messages;->compilation_unresolvedProblem:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v4, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->init(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iput-boolean v1, v4, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->preserveUnusedLocals:Z

    invoke-virtual {v4, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->initializeMaxLocals(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateCodeAttributeForProblemMethod(Ljava/lang/String;)V

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getLineSeparatorPositions()[I

    move-result-object p4

    invoke-interface {p3}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceLineNumber()I

    move-result p3

    invoke-virtual {p0, p2, v2, p4, p3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeCodeAttributeForMissingAbstractProblemMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I[II)V

    invoke-virtual {p0, p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeMethodInfo(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;II)V

    return-void
.end method

.method private addRealJumpTarget(Ljava/util/Set;I)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private completeArgumentAnnotationInfo([Lorg/eclipse/jdt/internal/compiler/ast/Argument;Ljava/util/List;)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    aget-object v2, p1, v1

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    const/16 v3, 0x16

    invoke-virtual {v2, v3, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->getAllAnnotationContexts(IILjava/util/List;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static createProblemType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 11

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    .line 3
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->getNewInstance(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)Lorg/eclipse/jdt/internal/compiler/ClassFile;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->initialize(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ClassFile;Z)V

    .line 5
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->hasMemberTypes()Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 7
    array-length v4, p1

    move v5, v3

    :goto_0
    if-lt v5, v4, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    aget-object v6, p1, v5

    invoke-virtual {v1, v6}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->recordInnerClasses(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->recordInnerClasses(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 11
    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object p1

    .line 12
    array-length v4, p1

    move v5, v3

    :goto_2
    if-lt v5, v4, :cond_11

    .line 13
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 14
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_FIELDS:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eq p1, v4, :cond_3

    .line 15
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addFieldInfos()V

    goto :goto_3

    .line 16
    :cond_3
    iget-object p1, v1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    aput-byte v3, p1, v4

    add-int/lit8 v4, v4, 0x2

    .line 17
    iput v4, v1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    aput-byte v3, p1, v5

    .line 18
    :goto_3
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->setForMethodInfos()V

    .line 19
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getErrors()[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object p1

    if-nez p1, :cond_4

    .line 20
    new-array p1, v3, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    .line 21
    :cond_4
    array-length v4, p1

    new-array v5, v4, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    .line 22
    invoke-static {p1, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz p1, :cond_d

    .line 24
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 25
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v4

    iget-wide v6, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v8, 0x340000

    cmp-long v4, v6, v8

    if-gez v4, :cond_5

    goto :goto_4

    :cond_5
    move v2, v3

    .line 26
    :goto_4
    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addProblemClinit([Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    goto :goto_5

    :cond_6
    move v2, v3

    .line 27
    :goto_5
    array-length v4, p1

    move v6, v3

    :goto_6
    if-lt v6, v4, :cond_7

    .line 28
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addDefaultAbstractMethods()V

    goto :goto_8

    .line 29
    :cond_7
    aget-object v7, p1, v6

    .line 30
    iget-object v8, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v8, :cond_8

    goto :goto_7

    :cond_8
    if-eqz v2, :cond_9

    const/16 v9, 0x401

    .line 31
    iput v9, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    .line 32
    :cond_9
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 33
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_7

    .line 34
    :cond_a
    invoke-virtual {v1, v7, v8, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addProblemConstructor(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    goto :goto_7

    .line 35
    :cond_b
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 36
    invoke-virtual {v1, v7, v8}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addAbstractMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    goto :goto_7

    .line 37
    :cond_c
    invoke-virtual {v1, v7, v8, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addProblemMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 38
    :cond_d
    :goto_8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz p1, :cond_10

    .line 39
    array-length p1, p1

    :goto_9
    if-lt v3, p1, :cond_e

    goto :goto_a

    .line 40
    :cond_e
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v2, v2, v3

    .line 41
    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v4, :cond_f

    .line 42
    invoke-static {v2, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->createProblemType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 43
    :cond_10
    :goto_a
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addAttributes()V

    .line 44
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object p0

    invoke-virtual {p2, p0, v1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->record([CLorg/eclipse/jdt/internal/compiler/ClassFile;)V

    return-void

    .line 45
    :cond_11
    aget-object v6, p1, v5

    .line 46
    iget-wide v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v9, 0x800

    and-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_12

    .line 47
    invoke-static {v1, v6}, Lorg/eclipse/jdt/internal/compiler/util/Util;->recordNestedType(Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2
.end method

.method public static createProblemType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->createProblemType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    return-void
.end method

.method private dumpLocations([I)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v2, v2

    if-lt p1, v2, :cond_0

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    aput-byte v0, p1, v1

    goto :goto_1

    :cond_1
    array-length v1, p1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v3, v3

    if-lt v2, v3, :cond_2

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    array-length v4, p1

    div-int/lit8 v4, v4, 0x2

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    :goto_0
    if-lt v0, v1, :cond_3

    :goto_1
    return-void

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    aget v4, p1, v0

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private dumpTargetTypeContents(ILorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;)V
    .locals 11

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/16 v1, 0x16

    if-eq p1, v1, :cond_4

    const/16 v1, 0x17

    if-eq p1, v1, :cond_3

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->info:I

    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    add-int/lit8 v3, v0, 0x2

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->info2:I

    int-to-byte p2, p2

    aput-byte p2, p1, v3

    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->info:I

    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    add-int/lit8 v3, v0, 0x2

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->info2:I

    int-to-byte p2, p2

    aput-byte p2, p1, v3

    goto/16 :goto_1

    :pswitch_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->info:I

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte p2, p2

    aput-byte p2, p1, v1

    goto/16 :goto_1

    :pswitch_3
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->variableBinding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationCount:I

    mul-int/lit8 p2, v2, 0x6

    add-int/lit8 p2, p2, 0x2

    add-int v3, p1, p2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v4, v4

    if-lt v3, v4, :cond_0

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_0
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 p2, p2, 0x2

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 p2, 0x0

    move v3, p2

    :goto_0
    if-lt p2, v2, :cond_1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, v3, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, p1

    int-to-byte p1, v3

    aput-byte p1, p2, v0

    goto/16 :goto_1

    :cond_1
    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationPCs:[I

    shl-int/lit8 v5, p2, 0x1

    aget v6, v4, v5

    add-int/2addr v5, v0

    aget v4, v4, v5

    if-eq v6, v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v9, v6, 0x8

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    add-int/lit8 v9, v7, 0x2

    iput v9, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v10, v6

    aput-byte v10, v5, v8

    sub-int/2addr v4, v6

    add-int/lit8 v6, v7, 0x3

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v8, v4, 0x8

    int-to-byte v8, v8

    aput-byte v8, v5, v9

    add-int/lit8 v8, v7, 0x4

    iput v8, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v4, v4

    aput-byte v4, v5, v6

    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    add-int/lit8 v6, v7, 0x5

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v9, v4, 0x8

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    add-int/lit8 v7, v7, 0x6

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v4, v4

    aput-byte v4, v5, v6

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->info:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->info2:I

    int-to-byte p2, p2

    aput-byte p2, p1, v1

    goto :goto_1

    :pswitch_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->info:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->info2:I

    int-to-byte p2, p2

    aput-byte p2, p1, v1

    goto :goto_1

    :cond_3
    :pswitch_6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->info:I

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte p2, p2

    aput-byte p2, p1, v1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->info:I

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->info:I

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private filterFakeFrames(Ljava/util/Set;Ljava/util/Map;I)Ljava/util/List;
    .locals 1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/ClassFile$3;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile$3;-><init>(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    invoke-static {p3, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p3

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;

    if-eqz v0, :cond_0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private generateAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)V
    .locals 13

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 v1, 0x4

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v2, v2

    if-lt v0, v2, :cond_0

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_1

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->recordInnerClasses(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/lit8 v5, v3, 0x2

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v0, v0

    aput-byte v0, v2, v4

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;

    const/4 v4, 0x2

    const/4 v6, 0x0

    if-eqz v0, :cond_8

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;->memberValuePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    if-eqz p1, :cond_7

    add-int/lit8 p2, v3, 0x4

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    array-length v0, p1

    move v1, v6

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_3

    goto :goto_1

    :cond_3
    aget-object v7, p1, v1

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/2addr v8, v4

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v9, v9

    if-lt v8, v9, :cond_4

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_4
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object v9, v7, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    invoke-virtual {v8, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v8

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v10, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v12, v8, 0x8

    int-to-byte v12, v12

    aput-byte v12, v9, v10

    add-int/2addr v10, v4

    iput v10, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v8, v8

    aput-byte v8, v9, v11

    iget-object v8, v7, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v8, :cond_5

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    goto :goto_2

    :cond_5
    :try_start_0
    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {p0, v7, v8, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateElementValue(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    if-ne v7, v5, :cond_6

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v9, v7, 0x1

    iput v9, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    aput-byte v6, v8, v7

    add-int/lit8 v7, v7, 0x2

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    aput-byte v6, v8, v9
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jdt/internal/compiler/problem/ShouldNotImplement; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v3, v3, 0x3

    shr-int/lit8 p2, v2, 0x8

    int-to-byte p2, p2

    aput-byte p2, p1, v5

    int-to-byte p2, v2

    aput-byte p2, p1, v3

    goto/16 :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    move p2, v7

    goto :goto_2

    :catch_0
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    goto :goto_2

    :catch_1
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    add-int/lit8 p1, v3, 0x3

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    aput-byte v6, v2, v5

    add-int/2addr v3, v1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    aput-byte v6, v2, p1

    goto :goto_3

    :cond_8
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;

    if-eqz v0, :cond_b

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;

    add-int/lit8 v0, v3, 0x3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    aput-byte v6, v2, v5

    add-int/lit8 v1, v3, 0x4

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 v1, 0x1

    aput-byte v1, v2, v0

    add-int/lit8 v3, v3, 0x6

    array-length v0, v2

    if-lt v3, v0, :cond_9

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUE:[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    add-int/2addr v2, v4

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;->memberValuePairs()[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    move-result-object v0

    aget-object v0, v0, v6

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v0, :cond_a

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    goto :goto_3

    :cond_a
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    :try_start_1
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;->memberValue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateElementValue(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    if-ne p1, v1, :cond_c

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/eclipse/jdt/internal/compiler/problem/ShouldNotImplement; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_2
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    goto :goto_3

    :catch_3
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    goto :goto_3

    :cond_b
    add-int/lit8 p1, v3, 0x3

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    aput-byte v6, v2, v5

    add-int/2addr v3, v1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    aput-byte v6, v2, p1

    :cond_c
    :goto_3
    return-void
.end method

.method private generateAnnotationDefaultAttribute(Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;I)I
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->AnnotationDefaultName:[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 v2, 0x6

    add-int/2addr v1, v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v3, v3

    if-lt v1, v3, :cond_0

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v4, v2, 0x2

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    add-int/lit8 v0, v2, 0x6

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;->defaultValue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateElementValue(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    if-eq p1, p2, :cond_1

    sub-int/2addr p1, v4

    add-int/lit8 p1, p1, -0x4

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v0, v2, 0x3

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v4

    add-int/lit8 v1, v2, 0x4

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, v0

    add-int/lit8 v2, v2, 0x5

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    int-to-byte p1, p1

    aput-byte p1, p2, v2

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private generateBootstrapMethods(Ljava/util/List;)I
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangInvokeMethodHandlesLookup()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->recordInnerClasses(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangInvokeLambdaMetafactory()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    iget v10, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    mul-int/lit8 v3, v9, 0xa

    add-int/lit8 v3, v3, 0x8

    add-int v4, v3, v10

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v5, v5

    if-lt v4, v5, :cond_1

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_1
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->BootstrapMethodsName:[C

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v3

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v5, v10, 0x1

    shr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v10

    add-int/lit8 v11, v10, 0x2

    int-to-byte v3, v3

    aput-byte v3, v4, v5

    add-int/lit8 v3, v10, 0x6

    add-int/lit8 v5, v10, 0x7

    shr-int/lit8 v6, v9, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v3

    add-int/lit8 v3, v10, 0x8

    int-to-byte v6, v9

    aput-byte v6, v4, v5

    move v13, v2

    move v14, v13

    move v15, v14

    move v12, v3

    :goto_0
    const/16 v16, 0x1

    if-lt v13, v9, :cond_2

    sub-int v1, v12, v11

    add-int/lit8 v1, v1, -0x4

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v3, v10, 0x3

    shr-int/lit8 v4, v1, 0x18

    int-to-byte v4, v4

    aput-byte v4, v2, v11

    add-int/lit8 v4, v10, 0x4

    shr-int/lit8 v5, v1, 0x10

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/lit8 v10, v10, 0x5

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    int-to-byte v1, v1

    aput-byte v1, v2, v10

    iput v12, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    return v16

    :cond_2
    move-object/from16 v8, p1

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->getRequiredBridges()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v6

    instance-of v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    const/16 v4, 0xa

    if-eqz v3, :cond_4

    move-object v3, v7

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->getMarkerInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move-object v8, v7

    move-object v7, v3

    goto/16 :goto_5

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-nez v6, :cond_3

    iget-boolean v5, v7, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->isSerializable:Z

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v12, 0xa

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v5, v5

    if-lt v3, v5, :cond_6

    invoke-direct {v0, v4}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_6
    if-nez v14, :cond_7

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->METAFACTORY:[C

    sget-object v14, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JAVA_LANG_INVOKE_LAMBDAMETAFACTORY_METAFACTORY_SIGNATURE:[C

    const/16 v16, 0x0

    const/4 v4, 0x6

    move-object v5, v1

    move-object/from16 v17, v7

    move-object v7, v14

    move/from16 v8, v16

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForMethodHandle(ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[C[CZ)I

    move-result v14

    goto :goto_3

    :cond_7
    move-object/from16 v17, v7

    :goto_3
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v12, 0x1

    shr-int/lit8 v5, v14, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v12

    add-int/lit8 v5, v12, 0x2

    int-to-byte v6, v14

    aput-byte v6, v3, v4

    add-int/lit8 v4, v12, 0x3

    aput-byte v2, v3, v5

    add-int/lit8 v5, v12, 0x4

    const/4 v6, 0x3

    aput-byte v6, v3, v4

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    move-object/from16 v8, v17

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->signature()[C

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForMethodType([C)I

    move-result v3

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v6, v12, 0x5

    shr-int/lit8 v7, v3, 0x8

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    add-int/lit8 v5, v12, 0x6

    int-to-byte v3, v3

    aput-byte v3, v4, v6

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    instance-of v6, v4, Lorg/eclipse/jdt/internal/compiler/lookup/PolymorphicMethodBinding;

    if-eqz v6, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v4

    :goto_4
    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForMethodHandle(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result v3

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v6, v12, 0x7

    shr-int/lit8 v7, v3, 0x8

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    add-int/lit8 v5, v12, 0x8

    int-to-byte v3, v3

    aput-byte v3, v4, v6

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->signature()[C

    move-result-object v3

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForMethodType([C)I

    move-result v3

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v6, v12, 0x9

    shr-int/lit8 v7, v3, 0x8

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    add-int/lit8 v12, v12, 0xa

    int-to-byte v3, v3

    aput-byte v3, v4, v6

    move-object/from16 v18, v1

    goto/16 :goto_d

    :goto_5
    const/4 v3, 0x2

    if-eqz v7, :cond_9

    array-length v5, v7

    mul-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x4

    goto :goto_6

    :cond_9
    move v5, v3

    :goto_6
    if-eqz v6, :cond_a

    array-length v2, v6

    mul-int/2addr v2, v3

    add-int/2addr v2, v3

    add-int/2addr v5, v2

    :cond_a
    add-int/2addr v5, v4

    add-int v2, v5, v12

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v3, v3

    if-lt v2, v3, :cond_b

    invoke-direct {v0, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_b
    if-nez v15, :cond_c

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ALTMETAFACTORY:[C

    sget-object v15, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JAVA_LANG_INVOKE_LAMBDAMETAFACTORY_ALTMETAFACTORY_SIGNATURE:[C

    const/16 v18, 0x0

    const/4 v4, 0x6

    move-object v5, v1

    move-object/from16 v19, v6

    move-object v6, v2

    move-object v2, v7

    move-object v7, v15

    move-object v15, v8

    move/from16 v8, v18

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForMethodHandle(ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[C[CZ)I

    move-result v3

    move-object/from16 v20, v15

    move v15, v3

    move-object/from16 v3, v20

    goto :goto_7

    :cond_c
    move-object/from16 v19, v6

    move-object v2, v7

    move-object v3, v8

    :goto_7
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v5, v12, 0x1

    shr-int/lit8 v6, v15, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v12

    add-int/lit8 v6, v12, 0x2

    int-to-byte v7, v15

    aput-byte v7, v4, v5

    add-int/lit8 v5, v12, 0x3

    const/4 v7, 0x0

    aput-byte v7, v4, v6

    add-int/lit8 v6, v12, 0x4

    if-nez v2, :cond_d

    move v8, v7

    goto :goto_8

    :cond_d
    array-length v8, v2

    add-int/lit8 v8, v8, 0x1

    :goto_8
    add-int/lit8 v8, v8, 0x4

    move-object/from16 v7, v19

    move-object/from16 v18, v1

    if-nez v7, :cond_e

    const/4 v1, 0x0

    goto :goto_9

    :cond_e
    array-length v1, v7

    add-int/lit8 v1, v1, 0x1

    :goto_9
    add-int/2addr v8, v1

    int-to-byte v1, v8

    aput-byte v1, v4, v5

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->signature()[C

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForMethodType([C)I

    move-result v1

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v5, v12, 0x5

    shr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    aput-byte v8, v4, v6

    add-int/lit8 v6, v12, 0x6

    int-to-byte v1, v1

    aput-byte v1, v4, v5

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForMethodHandle(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result v1

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v5, v12, 0x7

    shr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    aput-byte v8, v4, v6

    add-int/lit8 v6, v12, 0x8

    int-to-byte v1, v1

    aput-byte v1, v4, v5

    iget-object v1, v3, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->signature()[C

    move-result-object v1

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v4, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForMethodType([C)I

    move-result v1

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v5, v12, 0x9

    shr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    aput-byte v8, v4, v6

    add-int/lit8 v6, v12, 0xa

    int-to-byte v1, v1

    aput-byte v1, v4, v5

    iget-boolean v1, v3, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->isSerializable:Z

    if-eqz v2, :cond_f

    or-int/lit8 v1, v1, 0x2

    :cond_f
    if-eqz v7, :cond_10

    or-int/lit8 v1, v1, 0x4

    :cond_10
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex(I)I

    move-result v1

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v12, 0xb

    shr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v6

    add-int/lit8 v5, v12, 0xc

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    if-eqz v2, :cond_12

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    array-length v3, v2

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex(I)I

    move-result v1

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v12, 0xd

    shr-int/lit8 v6, v1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v12, v12, 0xe

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    array-length v1, v2

    move v5, v12

    const/4 v3, 0x0

    :goto_a
    if-lt v3, v1, :cond_11

    goto :goto_b

    :cond_11
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    aget-object v6, v2, v3

    invoke-virtual {v4, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v4

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v8, v5, 0x1

    shr-int/lit8 v12, v4, 0x8

    int-to-byte v12, v12

    aput-byte v12, v6, v5

    add-int/lit8 v5, v5, 0x2

    int-to-byte v4, v4

    aput-byte v4, v6, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_12
    :goto_b
    if-eqz v7, :cond_13

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    array-length v2, v7

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex(I)I

    move-result v1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v3, v5, 0x1

    shr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v5

    add-int/lit8 v5, v5, 0x2

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    array-length v1, v7

    const/4 v2, 0x0

    :goto_c
    if-lt v2, v1, :cond_14

    :cond_13
    move v12, v5

    goto :goto_d

    :cond_14
    aget-object v3, v7, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->signature()[C

    move-result-object v3

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForMethodType([C)I

    move-result v3

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v8, v3, 0x8

    int-to-byte v8, v8

    aput-byte v8, v4, v5

    add-int/lit8 v5, v5, 0x2

    int-to-byte v3, v3

    aput-byte v3, v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :goto_d
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v18

    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private generateConstantValueAttribute(Lorg/eclipse/jdt/internal/compiler/impl/Constant;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;I)I
    .locals 8

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v0, 0x8

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v2, v2

    const/16 v3, 0x8

    if-lt v1, v2, :cond_0

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->ConstantValueName:[C

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    add-int/lit8 v5, v0, 0x2

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    add-int/lit8 v1, v0, 0x3

    const/4 v4, 0x0

    aput-byte v4, v2, v5

    add-int/lit8 v5, v0, 0x4

    aput-byte v4, v2, v1

    add-int/lit8 v1, v0, 0x5

    aput-byte v4, v2, v5

    add-int/lit8 v5, v0, 0x6

    const/4 v6, 0x2

    aput-byte v6, v2, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/impl/StringConstant;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/StringConstant;->stringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_5

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->creatingProblemType:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-nez v0, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    array-length p3, v0

    move v1, p3

    :goto_0
    if-lt v4, v1, :cond_2

    :goto_1
    move v4, v2

    goto/16 :goto_2

    :cond_2
    aget-object p3, v0, v4

    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-ne p3, p2, :cond_3

    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p3

    aget-object v3, v0, v4

    invoke-virtual {p3, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->stringConstantIsExceedingUtf8Limit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    goto/16 :goto_2

    :cond_5
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 p3, v0, 0x7

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v5

    add-int/lit8 v5, v0, 0x8

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    goto :goto_1

    :pswitch_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex(F)I

    move-result p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 p3, v0, 0x7

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v5

    add-int/lit8 v5, v0, 0x8

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    goto :goto_1

    :pswitch_3
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide v6

    invoke-virtual {p2, v6, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex(D)I

    move-result p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 p3, v0, 0x7

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v5

    add-int/lit8 v5, v0, 0x8

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    goto :goto_1

    :pswitch_4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide v6

    invoke-virtual {p2, v6, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex(J)I

    move-result p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 p3, v0, 0x7

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v5

    add-int/lit8 v5, v0, 0x8

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    goto :goto_1

    :pswitch_5
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex(I)I

    move-result p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 p3, v0, 0x7

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v5

    add-int/lit8 v5, v0, 0x8

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    goto/16 :goto_1

    :pswitch_6
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex(I)I

    move-result p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 p3, v0, 0x7

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v5

    add-int/lit8 v5, v0, 0x8

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    goto/16 :goto_1

    :goto_2
    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    return v4

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method

.method private generateDeprecatedAttribute()I
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v0, 0x6

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v2, v2

    const/4 v3, 0x6

    if-lt v1, v2, :cond_0

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->DeprecatedName:[C

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    add-int/lit8 v5, v0, 0x2

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    add-int/lit8 v1, v0, 0x3

    const/4 v4, 0x0

    aput-byte v4, v2, v5

    add-int/lit8 v5, v0, 0x4

    aput-byte v4, v2, v1

    add-int/lit8 v1, v0, 0x5

    aput-byte v4, v2, v5

    add-int/2addr v0, v3

    aput-byte v4, v2, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 v0, 0x1

    return v0
.end method

.method private generateElementValue(ILorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/impl/Constant;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 3

    .line 17
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 v1, 0x3

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 18
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    .line 19
    :cond_0
    iget p4, p4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    packed-switch p4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 20
    :pswitch_1
    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/16 v1, 0x73

    aput-byte v1, p4, v0

    .line 21
    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/impl/StringConstant;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/impl/StringConstant;->stringValue()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    invoke-virtual {p4, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result p3

    const/4 p4, -0x1

    if-ne p3, p4, :cond_2

    .line 22
    iget-boolean p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->creatingProblemType:Z

    if-nez p3, :cond_1

    .line 23
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    .line 24
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->stringConstantIsExceedingUtf8Limit(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto/16 :goto_0

    .line 25
    :cond_1
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    goto/16 :goto_0

    .line 26
    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 p4, p2, 0x1

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v0, p3, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x2

    .line 27
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte p2, p3

    aput-byte p2, p1, p4

    goto/16 :goto_0

    .line 28
    :pswitch_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 p4, p2, 0x1

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/16 p4, 0x49

    aput-byte p4, p1, p2

    .line 29
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex(I)I

    move-result p1

    .line 30
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 p4, p3, 0x1

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 p3, p3, 0x2

    .line 31
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte p1, p1

    aput-byte p1, p2, p4

    goto/16 :goto_0

    .line 32
    :pswitch_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 p4, p2, 0x1

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/16 p4, 0x46

    aput-byte p4, p1, p2

    .line 33
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex(F)I

    move-result p1

    .line 34
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 p4, p3, 0x1

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 p3, p3, 0x2

    .line 35
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte p1, p1

    aput-byte p1, p2, p4

    goto/16 :goto_0

    .line 36
    :pswitch_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 p4, p2, 0x1

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/16 p4, 0x44

    aput-byte p4, p1, p2

    .line 37
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex(D)I

    move-result p1

    .line 38
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 p4, p3, 0x1

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 p3, p3, 0x2

    .line 39
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte p1, p1

    aput-byte p1, p2, p4

    goto/16 :goto_0

    .line 40
    :pswitch_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 p4, p2, 0x1

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/16 p4, 0x4a

    aput-byte p4, p1, p2

    .line 41
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex(J)I

    move-result p1

    .line 42
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 p4, p3, 0x1

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 p3, p3, 0x2

    .line 43
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte p1, p1

    aput-byte p1, p2, p4

    goto/16 :goto_0

    .line 44
    :pswitch_6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 p4, p2, 0x1

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/16 p4, 0x5a

    aput-byte p4, p1, p2

    .line 45
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex(I)I

    move-result p1

    .line 46
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 p4, p3, 0x1

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 p3, p3, 0x2

    .line 47
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte p1, p1

    aput-byte p1, p2, p4

    goto/16 :goto_0

    .line 48
    :pswitch_7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 p4, p2, 0x1

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/16 p4, 0x53

    aput-byte p4, p1, p2

    .line 49
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex(I)I

    move-result p1

    .line 50
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 p4, p3, 0x1

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 p3, p3, 0x2

    .line 51
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte p1, p1

    aput-byte p1, p2, p4

    goto :goto_0

    .line 52
    :pswitch_8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 p4, p2, 0x1

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/16 p4, 0x42

    aput-byte p4, p1, p2

    .line 53
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex(I)I

    move-result p1

    .line 54
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 p4, p3, 0x1

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 p3, p3, 0x2

    .line 55
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte p1, p1

    aput-byte p1, p2, p4

    goto :goto_0

    .line 56
    :pswitch_9
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 p4, p2, 0x1

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/16 p4, 0x43

    aput-byte p4, p1, p2

    .line 57
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex(I)I

    move-result p1

    .line 58
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 p4, p3, 0x1

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 p3, p3, 0x2

    .line 59
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte p1, p1

    aput-byte p1, p2, p4

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private generateElementValue(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V
    .locals 8

    .line 1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    .line 2
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v1, :cond_0

    .line 3
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->recordInnerClasses(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 6
    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->recordInnerClasses(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 8
    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v2

    if-nez v2, :cond_4

    .line 9
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 v3, 0x3

    add-int/2addr v2, v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v4, v4

    if-lt v2, v4, :cond_3

    .line 10
    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    .line 11
    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/16 v6, 0x5b

    aput-byte v6, v2, v4

    add-int/lit8 v6, v4, 0x2

    .line 12
    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 v7, 0x0

    aput-byte v7, v2, v5

    add-int/2addr v4, v3

    .line 13
    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 v3, 0x1

    aput-byte v3, v2, v6

    :cond_4
    if-eqz v0, :cond_5

    .line 14
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v0, v2, :cond_5

    .line 15
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    invoke-direct {p0, p3, p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateElementValue(ILorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/impl/Constant;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_0

    .line 16
    :cond_5
    invoke-direct {p0, p1, p3, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateElementValueForNonConstantExpression(Lorg/eclipse/jdt/internal/compiler/ast/Expression;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_0
    return-void
.end method

.method private generateElementValueForNonConstantExpression(Lorg/eclipse/jdt/internal/compiler/ast/Expression;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 8

    if-eqz p3, :cond_d

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_3

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 v0, 0x5

    add-int/2addr p3, v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v1, v1

    if-lt p3, v1, :cond_0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_0
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/16 v1, 0x65

    aput-byte v1, p3, v0

    instance-of p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    if-eqz p3, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    goto :goto_0

    :cond_1
    instance-of p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    if-eqz p3, :cond_2

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    goto :goto_0

    :cond_2
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_e

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result p2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result p1

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p3, v0

    add-int/lit8 v2, v0, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte p2, p2

    aput-byte p2, p3, v1

    add-int/lit8 p2, v0, 0x3

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p3, v2

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte p1, p1

    aput-byte p1, p3, p2

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isAnnotationType()Z

    move-result v0

    if-eqz v0, :cond_5

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 v0, 0x1

    add-int/2addr p3, v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v1, v1

    if-lt p3, v1, :cond_4

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_4
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/16 v1, 0x40

    aput-byte v1, p3, v0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)V

    goto/16 :goto_3

    :cond_5
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v2, v2

    if-lt v0, v2, :cond_6

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/16 v4, 0x5b

    aput-byte v4, v0, v2

    instance-of v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    if-eqz v4, :cond_9

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    array-length v4, v4

    goto :goto_1

    :cond_7
    move v4, v5

    :goto_1
    add-int/lit8 v6, v2, 0x2

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v7, v4, 0x8

    int-to-byte v7, v7

    aput-byte v7, v0, v3

    add-int/2addr v2, v1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v1, v4

    aput-byte v1, v0, v6

    :goto_2
    if-lt v5, v4, :cond_8

    goto :goto_3

    :cond_8
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v0, v0, v5

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateElementValue(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    goto :goto_3

    :cond_a
    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/2addr p3, v1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v0, v0

    if-lt p3, v0, :cond_b

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_b
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/16 v1, 0x63

    aput-byte v1, p3, v0

    instance-of p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ClassLiteralAccess;

    if-eqz p3, :cond_c

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ClassLiteralAccess;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ClassLiteralAccess;->targetType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    add-int/lit8 p3, p3, 0x2

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte p1, p1

    aput-byte p1, p2, v0

    goto :goto_3

    :cond_c
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    goto :goto_3

    :cond_d
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    :cond_e
    :goto_3
    return-void
.end method

.method private generateEnclosingMethodAttribute()I
    .locals 8

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v0, 0xa

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v2, v2

    const/16 v3, 0xa

    if-lt v1, v2, :cond_0

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->EnclosingMethodName:[C

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    add-int/lit8 v5, v0, 0x2

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    add-int/lit8 v1, v0, 0x3

    const/4 v4, 0x0

    aput-byte v4, v2, v5

    add-int/lit8 v5, v0, 0x4

    aput-byte v4, v2, v1

    add-int/lit8 v1, v0, 0x5

    aput-byte v4, v2, v5

    add-int/lit8 v5, v0, 0x6

    const/4 v6, 0x4

    aput-byte v6, v2, v1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v6, v0, 0x7

    shr-int/lit8 v7, v1, 0x8

    int-to-byte v7, v7

    aput-byte v7, v2, v5

    add-int/lit8 v5, v0, 0x8

    int-to-byte v1, v1

    aput-byte v1, v2, v6

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->enclosingMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->signature(Lorg/eclipse/jdt/internal/compiler/ClassFile;)[C

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForNameAndType([C[C)I

    move-result v1

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v4, v2

    int-to-byte v1, v1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v6, v0, 0x9

    aput-byte v4, v2, v5

    add-int/2addr v0, v3

    aput-byte v1, v2, v6

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 v0, 0x1

    return v0
.end method

.method private generateExceptionsAttribute([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)I
    .locals 7

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    array-length v1, p1

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x8

    add-int v4, v3, v0

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v5, v5

    if-lt v4, v5, :cond_0

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->ExceptionsName:[C

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    add-int/lit8 v6, v0, 0x2

    int-to-byte v3, v3

    aput-byte v3, v4, v5

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v0, 0x3

    shr-int/lit8 v5, v2, 0x18

    int-to-byte v5, v5

    aput-byte v5, v4, v6

    add-int/lit8 v5, v0, 0x4

    shr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    aput-byte v6, v4, v3

    add-int/lit8 v3, v0, 0x5

    shr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v0, 0x6

    int-to-byte v2, v2

    aput-byte v2, v4, v3

    add-int/lit8 v2, v0, 0x7

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v4, v5

    add-int/lit8 v0, v0, 0x8

    int-to-byte v3, v1

    aput-byte v3, v4, v2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    add-int/lit8 v0, v0, 0x2

    int-to-byte v3, v3

    aput-byte v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private generateHierarchyInconsistentAttribute()I
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v0, 0x6

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v2, v2

    const/4 v3, 0x6

    if-lt v1, v2, :cond_0

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->InconsistentHierarchy:[C

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    add-int/lit8 v5, v0, 0x2

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    add-int/lit8 v1, v0, 0x3

    const/4 v4, 0x0

    aput-byte v4, v2, v5

    add-int/lit8 v5, v0, 0x4

    aput-byte v4, v2, v1

    add-int/lit8 v1, v0, 0x5

    aput-byte v4, v2, v5

    add-int/2addr v0, v3

    aput-byte v4, v2, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 v0, 0x1

    return v0
.end method

.method private generateInnerClassAttribute(I[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)I
    .locals 10

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    mul-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x8

    add-int v2, v1, v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v3, v3

    if-lt v2, v3, :cond_0

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->InnerClassName:[C

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    add-int/lit8 v4, v0, 0x2

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    shl-int/lit8 v1, p1, 0x3

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v3, v0, 0x3

    shr-int/lit8 v5, v1, 0x18

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v0, 0x4

    shr-int/lit8 v5, v1, 0x10

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/lit8 v3, v0, 0x5

    shr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v0, 0x6

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    add-int/lit8 v1, v0, 0x7

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    add-int/lit8 v0, v0, 0x8

    int-to-byte v3, p1

    aput-byte v3, v2, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, p1, :cond_1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 p1, 0x1

    return p1

    :cond_1
    aget-object v3, p2, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getAccessFlags()I

    move-result v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result v5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v7, v0, 0x1

    shr-int/lit8 v8, v5, 0x8

    int-to-byte v8, v8

    aput-byte v8, v6, v0

    add-int/lit8 v8, v0, 0x2

    int-to-byte v5, v5

    aput-byte v5, v6, v7

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result v5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v7, v0, 0x3

    shr-int/lit8 v9, v5, 0x8

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    add-int/lit8 v0, v0, 0x4

    int-to-byte v5, v5

    aput-byte v5, v6, v7

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v6, v0, 0x3

    aput-byte v1, v5, v8

    add-int/lit8 v0, v0, 0x4

    aput-byte v1, v5, v6

    :goto_1
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v7, v0, 0x1

    shr-int/lit8 v8, v5, 0x8

    int-to-byte v8, v8

    aput-byte v8, v6, v0

    add-int/lit8 v0, v0, 0x2

    int-to-byte v5, v5

    aput-byte v5, v6, v7

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v6, v0, 0x1

    aput-byte v1, v5, v0

    add-int/lit8 v0, v0, 0x2

    aput-byte v1, v5, v6

    :goto_2
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v5

    if-eqz v5, :cond_4

    and-int/lit8 v4, v4, -0x11

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_5

    or-int/lit8 v4, v4, 0x8

    :cond_5
    :goto_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    add-int/lit8 v0, v0, 0x2

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private generateLineNumberAttribute()I
    .locals 12

    .line 1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    .line 2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMap:[I

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 3
    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMapSize:I

    if-eqz v1, :cond_3

    .line 4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->LineNumberTableName:[C

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v1

    add-int/lit8 v4, v0, 0x8

    .line 5
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v5, v5

    if-lt v4, v5, :cond_0

    const/16 v4, 0x8

    .line 6
    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    .line 7
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, v1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    add-int/lit8 v6, v0, 0x2

    int-to-byte v1, v1

    .line 8
    aput-byte v1, v4, v5

    add-int/lit8 v1, v0, 0x8

    .line 9
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMapSize:I

    move v5, v3

    :goto_0
    if-lt v3, v4, :cond_1

    mul-int/lit8 v2, v5, 0x4

    add-int/lit8 v2, v2, 0x2

    .line 10
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v0, 0x3

    shr-int/lit8 v7, v2, 0x18

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    add-int/lit8 v6, v0, 0x4

    shr-int/lit8 v7, v2, 0x10

    int-to-byte v7, v7

    .line 11
    aput-byte v7, v3, v4

    add-int/lit8 v4, v0, 0x5

    shr-int/lit8 v7, v2, 0x8

    int-to-byte v7, v7

    .line 12
    aput-byte v7, v3, v6

    add-int/lit8 v6, v0, 0x6

    int-to-byte v2, v2

    .line 13
    aput-byte v2, v3, v4

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v2, v5, 0x8

    int-to-byte v2, v2

    .line 14
    aput-byte v2, v3, v6

    int-to-byte v2, v5

    .line 15
    aput-byte v2, v3, v0

    const/4 v3, 0x1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v1, 0x4

    .line 16
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v8, v8

    if-lt v7, v8, :cond_2

    const/4 v7, 0x4

    .line 17
    invoke-direct {p0, v7}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_2
    add-int/lit8 v7, v3, 0x1

    .line 18
    aget v8, v2, v3

    .line 19
    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v10, v1, 0x1

    shr-int/lit8 v11, v8, 0x8

    int-to-byte v11, v11

    aput-byte v11, v9, v1

    add-int/lit8 v11, v1, 0x2

    int-to-byte v8, v8

    .line 20
    aput-byte v8, v9, v10

    add-int/lit8 v3, v3, 0x2

    .line 21
    aget v7, v2, v7

    add-int/lit8 v8, v1, 0x3

    shr-int/lit8 v10, v7, 0x8

    int-to-byte v10, v10

    .line 22
    aput-byte v10, v9, v11

    add-int/lit8 v1, v1, 0x4

    int-to-byte v7, v7

    .line 23
    aput-byte v7, v9, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 24
    :cond_3
    :goto_1
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    return v3
.end method

.method private generateLineNumberAttribute(I)I
    .locals 7

    .line 25
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v0, 0xc

    .line 26
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v2, v2

    const/16 v3, 0xc

    if-lt v1, v2, :cond_0

    .line 27
    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    .line 28
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->LineNumberTableName:[C

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v1

    .line 29
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    add-int/lit8 v5, v0, 0x2

    int-to-byte v1, v1

    .line 30
    aput-byte v1, v2, v4

    add-int/lit8 v1, v0, 0x3

    const/4 v4, 0x0

    .line 31
    aput-byte v4, v2, v5

    add-int/lit8 v5, v0, 0x4

    .line 32
    aput-byte v4, v2, v1

    add-int/lit8 v1, v0, 0x5

    .line 33
    aput-byte v4, v2, v5

    add-int/lit8 v5, v0, 0x6

    const/4 v6, 0x6

    .line 34
    aput-byte v6, v2, v1

    add-int/lit8 v1, v0, 0x7

    .line 35
    aput-byte v4, v2, v5

    add-int/lit8 v5, v0, 0x8

    const/4 v6, 0x1

    .line 36
    aput-byte v6, v2, v1

    add-int/lit8 v1, v0, 0x9

    .line 37
    aput-byte v4, v2, v5

    add-int/lit8 v5, v0, 0xa

    .line 38
    aput-byte v4, v2, v1

    add-int/lit8 v1, v0, 0xb

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    .line 39
    aput-byte v4, v2, v5

    add-int/2addr v0, v3

    int-to-byte p1, p1

    .line 40
    aput-byte p1, v2, v1

    .line 41
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    return v6
.end method

.method private generateLocalVariableTableAttribute(IZZ)I
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->LocalVariableTableName:[C

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v3

    xor-int/lit8 v4, p2, 0x1

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x8

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget v8, v7, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->allLocalsCounter:I

    if-lt v6, v8, :cond_15

    add-int v6, v2, v4

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v7, v7

    if-lt v6, v7, :cond_0

    invoke-direct {v0, v4}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_0
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v6, v2, 0x1

    shr-int/lit8 v7, v3, 0x8

    int-to-byte v7, v7

    aput-byte v7, v4, v2

    add-int/lit8 v8, v2, 0x2

    int-to-byte v3, v3

    aput-byte v3, v4, v6

    add-int/lit8 v3, v2, 0x8

    const/4 v6, 0x0

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    add-int/lit8 v7, v2, 0x9

    aput-byte v5, v4, v3

    add-int/lit8 v3, v2, 0xa

    aput-byte v5, v4, v7

    add-int/lit8 v7, v2, 0xb

    shr-int/lit8 v10, v1, 0x8

    int-to-byte v10, v10

    aput-byte v10, v4, v3

    add-int/lit8 v3, v2, 0xc

    int-to-byte v10, v1

    aput-byte v10, v4, v7

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->This:[C

    invoke-virtual {v4, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v4

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v10, v2, 0xd

    shr-int/lit8 v11, v4, 0x8

    int-to-byte v11, v11

    aput-byte v11, v7, v3

    add-int/lit8 v3, v2, 0xe

    int-to-byte v4, v4

    aput-byte v4, v7, v10

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v7, :cond_1

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :goto_1
    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_2

    :cond_1
    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lambdaExpression:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_1

    :goto_2
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->signature()[C

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v7

    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v11, v2, 0xf

    shr-int/lit8 v12, v7, 0x8

    int-to-byte v12, v12

    aput-byte v12, v10, v3

    add-int/lit8 v3, v2, 0x10

    int-to-byte v7, v7

    aput-byte v7, v10, v11

    add-int/lit8 v7, v2, 0x11

    aput-byte v5, v10, v3

    add-int/lit8 v3, v2, 0x12

    aput-byte v5, v10, v7

    move-object v10, v4

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    move v4, v5

    move-object v10, v6

    :goto_3
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget v11, v7, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->allLocalsCounter:I

    move v7, v5

    move v12, v7

    move v13, v12

    :goto_4
    if-lt v12, v11, :cond_b

    mul-int/lit8 v11, v4, 0xa

    const/4 v14, 0x2

    add-int/2addr v11, v14

    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v15, v2, 0x3

    shr-int/lit8 v9, v11, 0x18

    int-to-byte v9, v9

    aput-byte v9, v12, v8

    add-int/lit8 v8, v2, 0x4

    shr-int/lit8 v9, v11, 0x10

    int-to-byte v9, v9

    aput-byte v9, v12, v15

    add-int/lit8 v9, v2, 0x5

    shr-int/lit8 v15, v11, 0x8

    int-to-byte v15, v15

    aput-byte v15, v12, v8

    add-int/lit8 v8, v2, 0x6

    int-to-byte v11, v11

    aput-byte v11, v12, v9

    add-int/lit8 v2, v2, 0x7

    shr-int/lit8 v9, v4, 0x8

    int-to-byte v9, v9

    aput-byte v9, v12, v8

    int-to-byte v4, v4

    aput-byte v4, v12, v2

    if-nez p2, :cond_3

    if-eqz v10, :cond_3

    iget-object v2, v10, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v2, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_5

    :cond_3
    move v2, v5

    :goto_5
    if-nez v7, :cond_5

    if-eqz v2, :cond_4

    goto :goto_6

    :cond_4
    const/4 v9, 0x1

    goto/16 :goto_8

    :cond_5
    :goto_6
    add-int/2addr v13, v2

    mul-int/lit8 v4, v13, 0xa

    add-int/lit8 v8, v4, 0x8

    add-int v9, v3, v8

    array-length v11, v12

    if-lt v9, v11, :cond_6

    invoke-direct {v0, v8}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_6
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->LocalVariableTypeTableName:[C

    invoke-virtual {v8, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v8

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v11, v3, 0x1

    shr-int/lit8 v12, v8, 0x8

    int-to-byte v12, v12

    aput-byte v12, v9, v3

    add-int/lit8 v12, v3, 0x2

    int-to-byte v8, v8

    aput-byte v8, v9, v11

    add-int/2addr v4, v14

    add-int/lit8 v8, v3, 0x3

    shr-int/lit8 v11, v4, 0x18

    int-to-byte v11, v11

    aput-byte v11, v9, v12

    add-int/lit8 v11, v3, 0x4

    shr-int/lit8 v12, v4, 0x10

    int-to-byte v12, v12

    aput-byte v12, v9, v8

    add-int/lit8 v8, v3, 0x5

    shr-int/lit8 v12, v4, 0x8

    int-to-byte v12, v12

    aput-byte v12, v9, v11

    add-int/lit8 v11, v3, 0x6

    int-to-byte v4, v4

    aput-byte v4, v9, v8

    add-int/lit8 v4, v3, 0x7

    shr-int/lit8 v8, v13, 0x8

    int-to-byte v8, v8

    aput-byte v8, v9, v11

    add-int/lit8 v8, v3, 0x8

    int-to-byte v11, v13

    aput-byte v11, v9, v4

    if-eqz v2, :cond_7

    add-int/lit8 v2, v3, 0x9

    aput-byte v5, v9, v8

    add-int/lit8 v4, v3, 0xa

    aput-byte v5, v9, v2

    add-int/lit8 v2, v3, 0xb

    shr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    aput-byte v8, v9, v4

    add-int/lit8 v4, v3, 0xc

    int-to-byte v1, v1

    aput-byte v1, v9, v2

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->This:[C

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v8, v3, 0xd

    shr-int/lit8 v9, v1, 0x8

    int-to-byte v9, v9

    aput-byte v9, v2, v4

    add-int/lit8 v4, v3, 0xe

    int-to-byte v1, v1

    aput-byte v1, v2, v8

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->genericTypeSignature()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v8, v3, 0xf

    shr-int/lit8 v9, v1, 0x8

    int-to-byte v9, v9

    aput-byte v9, v2, v4

    add-int/lit8 v4, v3, 0x10

    int-to-byte v1, v1

    aput-byte v1, v2, v8

    add-int/lit8 v1, v3, 0x11

    aput-byte v5, v2, v4

    add-int/lit8 v8, v3, 0x12

    aput-byte v5, v2, v1

    :cond_7
    move v9, v5

    move v3, v8

    :goto_7
    if-lt v9, v7, :cond_8

    move v9, v14

    :goto_8
    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    return v9

    :cond_8
    aget-object v15, v6, v9

    move v1, v5

    :goto_9
    iget v2, v15, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationCount:I

    if-lt v1, v2, :cond_9

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_9
    iget-object v2, v15, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationPCs:[I

    shl-int/lit8 v4, v1, 0x1

    aget v8, v2, v4

    const/4 v10, 0x1

    add-int/2addr v4, v10

    aget v2, v2, v4

    if-eq v8, v2, :cond_a

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v10, v3, 0x1

    shr-int/lit8 v11, v8, 0x8

    int-to-byte v11, v11

    aput-byte v11, v4, v3

    add-int/lit8 v11, v3, 0x2

    int-to-byte v12, v8

    aput-byte v12, v4, v10

    sub-int/2addr v2, v8

    add-int/lit8 v8, v3, 0x3

    shr-int/lit8 v10, v2, 0x8

    int-to-byte v10, v10

    aput-byte v10, v4, v11

    add-int/lit8 v10, v3, 0x4

    int-to-byte v2, v2

    aput-byte v2, v4, v8

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object v4, v15, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v2

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v8, v3, 0x5

    shr-int/lit8 v11, v2, 0x8

    int-to-byte v11, v11

    aput-byte v11, v4, v10

    add-int/lit8 v10, v3, 0x6

    int-to-byte v2, v2

    aput-byte v2, v4, v8

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object v4, v15, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->genericTypeSignature()[C

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v2

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v8, v3, 0x7

    shr-int/lit8 v11, v2, 0x8

    int-to-byte v11, v11

    aput-byte v11, v4, v10

    add-int/lit8 v10, v3, 0x8

    int-to-byte v2, v2

    aput-byte v2, v4, v8

    iget v2, v15, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    add-int/lit8 v8, v3, 0x9

    shr-int/lit8 v11, v2, 0x8

    int-to-byte v11, v11

    aput-byte v11, v4, v10

    add-int/lit8 v3, v3, 0xa

    int-to-byte v2, v2

    aput-byte v2, v4, v8

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_b
    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aget-object v9, v9, v12

    iget v14, v9, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationCount:I

    if-nez v14, :cond_c

    goto :goto_d

    :cond_c
    iget-object v15, v9, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-nez v15, :cond_d

    goto :goto_d

    :cond_d
    iget-object v15, v9, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v17

    if-nez v17, :cond_e

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v17

    if-nez v17, :cond_e

    move/from16 v17, v5

    goto :goto_a

    :cond_e
    const/16 v17, 0x1

    :goto_a
    if-eqz v17, :cond_10

    if-nez v6, :cond_f

    new-array v6, v11, [Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    :cond_f
    add-int/lit8 v18, v7, 0x1

    aput-object v9, v6, v7

    move/from16 v19, v18

    move-object/from16 v18, v6

    goto :goto_b

    :cond_10
    move-object/from16 v18, v6

    move/from16 v19, v7

    :goto_b
    move v6, v5

    :goto_c
    if-lt v6, v14, :cond_11

    move-object/from16 v6, v18

    move/from16 v7, v19

    :goto_d
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    :cond_11
    iget-object v7, v9, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationPCs:[I

    shl-int/lit8 v20, v6, 0x1

    aget v5, v7, v20

    const/16 v16, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v7, v7, v20

    if-eq v5, v7, :cond_14

    const/4 v1, -0x1

    if-ne v7, v1, :cond_12

    iget-object v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    move/from16 v20, v2

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/util/Messages;->abort_invalidAttribute:Ljava/lang/String;

    move/from16 v21, v8

    new-instance v8, Ljava/lang/String;

    move-object/from16 v22, v10

    iget-object v10, v9, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-direct {v8, v10}, Ljava/lang/String;-><init>([C)V

    invoke-static {v2, v8}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v8, v9, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v8

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-virtual {v1, v2, v8}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->abortDueToInternalError(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_e

    :cond_12
    move/from16 v20, v2

    move/from16 v21, v8

    move-object/from16 v22, v10

    :goto_e
    if-eqz v17, :cond_13

    add-int/lit8 v13, v13, 0x1

    :cond_13
    add-int/lit8 v4, v4, 0x1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v8, v5, 0x8

    int-to-byte v8, v8

    aput-byte v8, v1, v3

    add-int/lit8 v8, v3, 0x2

    int-to-byte v10, v5

    aput-byte v10, v1, v2

    sub-int/2addr v7, v5

    add-int/lit8 v2, v3, 0x3

    shr-int/lit8 v5, v7, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v8

    add-int/lit8 v5, v3, 0x4

    int-to-byte v7, v7

    aput-byte v7, v1, v2

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object v2, v9, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v7, v3, 0x5

    shr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    aput-byte v8, v2, v5

    add-int/lit8 v5, v3, 0x6

    int-to-byte v1, v1

    aput-byte v1, v2, v7

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v7, v3, 0x7

    shr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    aput-byte v8, v2, v5

    add-int/lit8 v5, v3, 0x8

    int-to-byte v1, v1

    aput-byte v1, v2, v7

    iget v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    add-int/lit8 v7, v3, 0x9

    shr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    aput-byte v8, v2, v5

    add-int/lit8 v3, v3, 0xa

    int-to-byte v1, v1

    aput-byte v1, v2, v7

    goto :goto_f

    :cond_14
    move/from16 v20, v2

    move/from16 v21, v8

    move-object/from16 v22, v10

    :goto_f
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, p1

    move/from16 v2, v20

    move/from16 v8, v21

    move-object/from16 v10, v22

    const/4 v5, 0x0

    goto/16 :goto_c

    :cond_15
    move/from16 v20, v2

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aget-object v1, v1, v6

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationCount:I

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v4, v1

    add-int/lit8 v6, v6, 0x1

    move/from16 v1, p1

    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method private generateMethodParameters(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceLambda()Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v5

    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v7, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isEnum()Z

    move-result v8

    const v9, 0x8000

    const/16 v10, 0x1000

    if-eqz v8, :cond_2

    if-eqz v5, :cond_1

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->EnumName:[C

    invoke-direct {v0, v8, v10, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->writeArgumentName([CII)I

    move-result v8

    sget-object v11, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->EnumOrdinal:[C

    invoke-direct {v0, v11, v10, v8}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->writeArgumentName([CII)I

    move-result v8

    goto :goto_0

    :cond_1
    instance-of v8, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    if-eqz v8, :cond_2

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ValueOf:[C

    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-static {v8, v11}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Name:[C

    invoke-direct {v0, v6, v9, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->writeArgumentName([CII)I

    move-result v8

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_2
    move v8, v3

    :goto_0
    if-eqz v5, :cond_3

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_1
    if-eqz v5, :cond_c

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v12

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    goto :goto_2

    :cond_4
    move v12, v3

    :goto_2
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v13

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v13, 0x1

    goto :goto_3

    :cond_5
    move v13, v3

    :goto_3
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isPrivate()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v14

    if-eqz v14, :cond_7

    :cond_6
    if-nez v12, :cond_7

    const/4 v12, 0x1

    goto :goto_4

    :cond_7
    move v12, v3

    :goto_4
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->syntheticEnclosingInstanceTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v14

    if-eqz v14, :cond_b

    array-length v15, v14

    move v9, v3

    :goto_5
    if-lt v9, v15, :cond_8

    goto :goto_8

    :cond_8
    if-eqz v13, :cond_9

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    aget-object v11, v14, v9

    invoke-virtual {v3, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_6

    :cond_9
    const/4 v3, 0x1

    :goto_6
    if-eqz v3, :cond_a

    if-eqz v12, :cond_a

    const v3, 0x8000

    goto :goto_7

    :cond_a
    move v3, v10

    :goto_7
    sget-object v11, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->SYNTHETIC_ENCLOSING_INSTANCE_PREFIX:[C

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    invoke-static {v11, v10}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v10

    or-int/lit8 v3, v3, 0x10

    invoke-direct {v0, v10, v3, v8}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->writeArgumentName([CII)I

    move-result v8

    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    const/16 v10, 0x1000

    goto :goto_5

    :cond_b
    :goto_8
    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    if-eqz v3, :cond_c

    move-object v3, v1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->targetMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v6, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v4

    :cond_c
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eq v6, v3, :cond_11

    const/4 v3, 0x0

    if-eqz v4, :cond_d

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz v4, :cond_d

    goto :goto_9

    :cond_d
    move-object v4, v3

    :goto_9
    array-length v9, v6

    if-eqz v4, :cond_e

    array-length v10, v4

    goto :goto_a

    :cond_e
    const/4 v10, 0x0

    :goto_a
    const/4 v11, 0x0

    :goto_b
    if-lt v11, v9, :cond_f

    goto :goto_d

    :cond_f
    if-le v10, v11, :cond_10

    aget-object v12, v4, v11

    if-eqz v12, :cond_10

    iget-object v13, v12, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    iget-object v12, v12, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget v12, v12, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    invoke-direct {v0, v13, v12, v8}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->writeArgumentName([CII)I

    move-result v8

    goto :goto_c

    :cond_10
    const/16 v12, 0x1000

    invoke-direct {v0, v3, v12, v8}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->writeArgumentName([CII)I

    move-result v8

    :goto_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_11
    :goto_d
    if-eqz v5, :cond_15

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->syntheticOuterLocalVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    move-result-object v3

    if-nez v3, :cond_12

    const/4 v4, 0x0

    goto :goto_e

    :cond_12
    array-length v4, v3

    :goto_e
    const/4 v5, 0x0

    :goto_f
    if-lt v5, v4, :cond_14

    array-length v3, v6

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v7, v4

    :goto_10
    if-lt v3, v7, :cond_13

    goto :goto_11

    :cond_13
    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->constantPoolName()[C

    move-result-object v4

    const/16 v9, 0x1000

    invoke-direct {v0, v4, v9, v8}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->writeArgumentName([CII)I

    move-result v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_14
    const/16 v9, 0x1000

    aget-object v7, v3, v5

    iget-object v10, v7, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    iget v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    or-int/2addr v7, v9

    invoke-direct {v0, v10, v7, v8}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->writeArgumentName([CII)I

    move-result v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_15
    :goto_11
    if-lez v8, :cond_17

    mul-int/lit8 v1, v8, 0x4

    add-int/lit8 v3, v1, 0x1

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v4, v4, 0x6

    add-int/2addr v4, v3

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v5, v5

    if-lt v4, v5, :cond_16

    add-int/lit8 v1, v1, 0x7

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_16
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->MethodParametersName:[C

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v1

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v5, v2, 0x1

    shr-int/lit8 v6, v1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    add-int/lit8 v6, v2, 0x2

    int-to-byte v1, v1

    aput-byte v1, v4, v5

    add-int/lit8 v1, v2, 0x3

    shr-int/lit8 v5, v3, 0x18

    int-to-byte v5, v5

    aput-byte v5, v4, v6

    add-int/lit8 v5, v2, 0x4

    shr-int/lit8 v6, v3, 0x10

    int-to-byte v6, v6

    aput-byte v6, v4, v1

    add-int/lit8 v1, v2, 0x5

    shr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v2, v2, 0x6

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    int-to-byte v1, v8

    aput-byte v1, v4, v2

    const/4 v1, 0x1

    return v1

    :cond_17
    const/4 v1, 0x0

    return v1
.end method

.method private generateMissingTypesAttribute()V
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->missingTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->missingTypes:Ljava/util/List;

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/ClassFile$2;

    invoke-direct {v3, p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile$2;-><init>(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-lt v3, v0, :cond_3

    mul-int/lit8 v0, v5, 0x2

    add-int/lit8 v3, v0, 0x2

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x6

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v6, v6

    if-lt v4, v6, :cond_1

    add-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->MissingTypesName:[C

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v8, v0, 0x8

    int-to-byte v8, v8

    aput-byte v8, v4, v6

    add-int/lit8 v8, v6, 0x2

    iput v8, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v0, v0

    aput-byte v0, v4, v7

    add-int/lit8 v0, v6, 0x3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v7, v3, 0x18

    int-to-byte v7, v7

    aput-byte v7, v4, v8

    add-int/lit8 v7, v6, 0x4

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v8, v3, 0x10

    int-to-byte v8, v8

    aput-byte v8, v4, v0

    add-int/lit8 v0, v6, 0x5

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v8, v3, 0x8

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    add-int/lit8 v7, v6, 0x6

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    add-int/lit8 v0, v6, 0x7

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v3, v5, 0x8

    int-to-byte v3, v3

    aput-byte v3, v4, v7

    add-int/lit8 v6, v6, 0x8

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v3, v5

    aput-byte v3, v4, v0

    :goto_1
    if-lt v2, v5, :cond_2

    return-void

    :cond_2
    aget v0, v1, v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v7, v0, 0x8

    int-to-byte v7, v7

    aput-byte v7, v3, v4

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v0, v0

    aput-byte v0, v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->missingTypes:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v6

    if-ne v4, v6, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v5, 0x1

    aput v6, v1, v5

    move v5, v4

    move v4, v6

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method private generateModuleAttribute(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v4, v3, 0xa

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v5, v5

    if-lt v4, v5, :cond_0

    const/16 v4, 0xa

    invoke-direct {v0, v4}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_0
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->ModuleName:[C

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v4

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v6, v3, 0x1

    shr-int/lit8 v7, v4, 0x8

    int-to-byte v7, v7

    aput-byte v7, v5, v3

    add-int/lit8 v7, v3, 0x2

    int-to-byte v4, v4

    aput-byte v4, v5, v6

    add-int/lit8 v4, v3, 0x6

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object v6, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->moduleName:[C

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForModule([C)I

    move-result v5

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v8, v3, 0x7

    shr-int/lit8 v9, v5, 0x8

    int-to-byte v9, v9

    aput-byte v9, v6, v4

    add-int/lit8 v4, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v6, v8

    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->modifiers:I

    const v8, -0x8001

    and-int/2addr v5, v8

    add-int/lit8 v8, v3, 0x9

    shr-int/lit8 v9, v5, 0x8

    int-to-byte v9, v9

    aput-byte v9, v6, v4

    add-int/lit8 v4, v3, 0xa

    int-to-byte v5, v5

    aput-byte v5, v6, v8

    add-int/lit8 v5, v3, 0xb

    const/4 v8, 0x0

    int-to-byte v9, v8

    aput-byte v9, v6, v4

    add-int/lit8 v4, v3, 0xc

    int-to-byte v10, v8

    aput-byte v10, v6, v5

    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->requiresCount:I

    mul-int/lit8 v11, v5, 0x6

    add-int/lit8 v11, v11, 0x2

    add-int v12, v4, v11

    array-length v6, v6

    if-lt v12, v6, :cond_1

    invoke-direct {v0, v11}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_1
    add-int/lit8 v6, v3, 0xe

    const/4 v11, 0x0

    move v12, v8

    :goto_0
    iget v13, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->requiresCount:I

    if-lt v12, v13, :cond_19

    iget-object v12, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->moduleName:[C

    sget-object v13, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_BASE:[C

    invoke-static {v12, v13}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v12

    const/4 v13, 0x6

    if-nez v12, :cond_3

    if-nez v11, :cond_3

    add-int/lit8 v11, v6, 0x6

    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v12, v12

    if-lt v11, v12, :cond_2

    invoke-direct {v0, v13}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_2
    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->javaBaseModule()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v2

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->moduleName:[C

    invoke-virtual {v11, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForModule([C)I

    move-result v2

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v12, v6, 0x1

    shr-int/lit8 v14, v2, 0x8

    int-to-byte v14, v14

    aput-byte v14, v11, v6

    add-int/lit8 v14, v6, 0x2

    int-to-byte v2, v2

    aput-byte v2, v11, v12

    add-int/lit8 v2, v6, 0x3

    const/16 v12, 0x80

    int-to-byte v12, v12

    aput-byte v12, v11, v14

    add-int/lit8 v12, v6, 0x4

    const v14, 0x8000

    int-to-byte v14, v14

    aput-byte v14, v11, v2

    add-int/lit8 v2, v6, 0x5

    aput-byte v9, v11, v12

    add-int/lit8 v6, v6, 0x6

    aput-byte v10, v11, v2

    add-int/lit8 v5, v5, 0x1

    :cond_3
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v9, v3, 0xd

    shr-int/lit8 v10, v5, 0x8

    int-to-byte v10, v10

    aput-byte v10, v2, v4

    int-to-byte v4, v5

    aput-byte v4, v2, v9

    mul-int/2addr v5, v13

    add-int/lit8 v5, v5, 0x8

    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->exportsCount:I

    mul-int/2addr v4, v13

    add-int/lit8 v14, v4, 0x2

    add-int v4, v6, v14

    array-length v2, v2

    if-lt v4, v2, :cond_4

    invoke-direct {v0, v14}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_4
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v6, 0x1

    iget v9, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->exportsCount:I

    shr-int/lit8 v10, v9, 0x8

    int-to-byte v10, v10

    aput-byte v10, v2, v6

    add-int/lit8 v6, v6, 0x2

    int-to-byte v9, v9

    aput-byte v9, v2, v4

    move v2, v8

    :goto_1
    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->exportsCount:I

    const/16 v9, 0x2f

    const/16 v10, 0x2e

    if-lt v2, v4, :cond_13

    add-int/2addr v5, v14

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->opensCount:I

    mul-int/2addr v2, v13

    add-int/lit8 v11, v2, 0x2

    add-int v2, v6, v11

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v4, v4

    if-lt v2, v4, :cond_5

    invoke-direct {v0, v11}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_5
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v6, 0x1

    iget v12, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->opensCount:I

    shr-int/lit8 v14, v12, 0x8

    int-to-byte v14, v14

    aput-byte v14, v2, v6

    add-int/lit8 v6, v6, 0x2

    int-to-byte v12, v12

    aput-byte v12, v2, v4

    move v2, v8

    :goto_2
    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->opensCount:I

    if-lt v2, v4, :cond_d

    add-int v12, v5, v11

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->usesCount:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v14, v2, 0x2

    add-int v2, v6, v14

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v4, v4

    if-lt v2, v4, :cond_6

    invoke-direct {v0, v14}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_6
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v6, 0x1

    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->usesCount:I

    shr-int/lit8 v9, v5, 0x8

    int-to-byte v9, v9

    aput-byte v9, v2, v6

    add-int/lit8 v6, v6, 0x2

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    move v2, v8

    :goto_3
    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->usesCount:I

    if-lt v2, v4, :cond_c

    add-int/2addr v12, v14

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->servicesCount:I

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v4, v2, 0x2

    add-int v2, v6, v4

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v5, v5

    if-lt v2, v5, :cond_7

    invoke-direct {v0, v4}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_7
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v5, v6, 0x1

    iget v9, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->servicesCount:I

    shr-int/lit8 v10, v9, 0x8

    int-to-byte v10, v10

    aput-byte v10, v2, v6

    add-int/lit8 v6, v6, 0x2

    int-to-byte v9, v9

    aput-byte v9, v2, v5

    move v9, v8

    move v5, v12

    :goto_4
    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->servicesCount:I

    if-lt v9, v2, :cond_8

    add-int/2addr v5, v4

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v2, v3, 0x3

    shr-int/lit8 v4, v5, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v7

    add-int/lit8 v4, v3, 0x4

    shr-int/lit8 v7, v5, 0x10

    int-to-byte v7, v7

    aput-byte v7, v1, v2

    add-int/lit8 v3, v3, 0x5

    shr-int/lit8 v2, v5, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    int-to-byte v2, v5

    aput-byte v2, v1, v3

    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 v1, 0x1

    return v1

    :cond_8
    add-int/lit8 v10, v6, 0x4

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v11, v11

    if-lt v10, v11, :cond_9

    sub-int/2addr v2, v9

    mul-int/lit8 v2, v2, 0x4

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_9
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object v10, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->services:[Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;

    aget-object v10, v10, v9

    iget-object v10, v10, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->serviceInterface:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v10, v10, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->constantPoolName()[C

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result v2

    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v11, v6, 0x1

    shr-int/lit8 v12, v2, 0x8

    int-to-byte v12, v12

    aput-byte v12, v10, v6

    add-int/lit8 v12, v6, 0x2

    int-to-byte v2, v2

    aput-byte v2, v10, v11

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->services:[Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;

    aget-object v2, v2, v9

    iget-object v11, v2, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->implementations:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v13, v11

    add-int/lit8 v2, v6, 0x3

    shr-int/lit8 v14, v13, 0x8

    int-to-byte v14, v14

    aput-byte v14, v10, v12

    add-int/lit8 v6, v6, 0x4

    int-to-byte v12, v13

    aput-byte v12, v10, v2

    mul-int/lit8 v15, v13, 0x2

    add-int v2, v6, v15

    array-length v10, v10

    if-lt v2, v10, :cond_a

    invoke-direct {v0, v15}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_a
    move v2, v8

    :goto_5
    if-lt v2, v13, :cond_b

    add-int/2addr v5, v15

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_b
    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    aget-object v12, v11, v2

    iget-object v12, v12, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->constantPoolName()[C

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result v10

    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v14, v6, 0x1

    shr-int/lit8 v8, v10, 0x8

    int-to-byte v8, v8

    aput-byte v8, v12, v6

    add-int/lit8 v6, v6, 0x2

    int-to-byte v8, v10

    aput-byte v8, v12, v14

    add-int/lit8 v2, v2, 0x1

    const/4 v8, 0x0

    goto :goto_5

    :cond_c
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->uses:[Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;

    aget-object v5, v5, v2

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;->serviceInterface:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->constantPoolName()[C

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result v4

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v8, v6, 0x1

    shr-int/lit8 v9, v4, 0x8

    int-to-byte v9, v9

    aput-byte v9, v5, v6

    add-int/lit8 v6, v6, 0x2

    int-to-byte v4, v4

    aput-byte v4, v5, v8

    add-int/lit8 v2, v2, 0x1

    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_d
    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->opens:[Lorg/eclipse/jdt/internal/compiler/ast/OpensStatement;

    aget-object v8, v8, v2

    add-int/lit8 v12, v6, 0x6

    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v14, v14

    if-lt v12, v14, :cond_e

    sub-int/2addr v4, v2

    mul-int/2addr v4, v13

    invoke-direct {v0, v4}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_e
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object v12, v8, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->pkgName:[C

    invoke-static {v12, v10, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForPackage([C)I

    move-result v4

    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v14, v6, 0x1

    shr-int/lit8 v15, v4, 0x8

    int-to-byte v15, v15

    aput-byte v15, v12, v6

    add-int/lit8 v15, v6, 0x2

    int-to-byte v4, v4

    aput-byte v4, v12, v14

    add-int/lit8 v4, v6, 0x3

    const/4 v14, 0x0

    aput-byte v14, v12, v15

    add-int/lit8 v15, v6, 0x4

    aput-byte v14, v12, v4

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->isQualified()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    array-length v14, v4

    goto :goto_6

    :cond_f
    const/4 v14, 0x0

    :goto_6
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v12, v6, 0x5

    shr-int/lit8 v9, v14, 0x8

    int-to-byte v9, v9

    aput-byte v9, v4, v15

    add-int/lit8 v6, v6, 0x6

    int-to-byte v9, v14

    aput-byte v9, v4, v12

    if-lez v14, :cond_12

    mul-int/lit8 v9, v14, 0x2

    add-int v12, v6, v9

    array-length v4, v4

    if-lt v12, v4, :cond_10

    invoke-direct {v0, v9}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_10
    const/4 v4, 0x0

    :goto_7
    if-lt v4, v14, :cond_11

    add-int/2addr v5, v9

    goto :goto_8

    :cond_11
    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object v15, v8, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    aget-object v15, v15, v4

    iget-object v15, v15, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->moduleName:[C

    invoke-virtual {v12, v15}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForModule([C)I

    move-result v12

    iget-object v15, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v17, v6, 0x1

    shr-int/lit8 v10, v12, 0x8

    int-to-byte v10, v10

    aput-byte v10, v15, v6

    add-int/lit8 v6, v6, 0x2

    int-to-byte v10, v12

    aput-byte v10, v15, v17

    add-int/lit8 v4, v4, 0x1

    const/16 v10, 0x2e

    goto :goto_7

    :cond_12
    :goto_8
    add-int/lit8 v2, v2, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x2f

    const/16 v10, 0x2e

    goto/16 :goto_2

    :cond_13
    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->exports:[Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

    aget-object v8, v8, v2

    add-int/lit8 v9, v6, 0x6

    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v10, v10

    if-lt v9, v10, :cond_14

    sub-int/2addr v4, v2

    mul-int/2addr v4, v13

    invoke-direct {v0, v4}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_14
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object v9, v8, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->pkgName:[C

    const/16 v10, 0x2f

    const/16 v11, 0x2e

    invoke-static {v9, v11, v10}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForPackage([C)I

    move-result v4

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v10, v6, 0x1

    shr-int/lit8 v11, v4, 0x8

    int-to-byte v11, v11

    aput-byte v11, v9, v6

    add-int/lit8 v11, v6, 0x2

    int-to-byte v4, v4

    aput-byte v4, v9, v10

    add-int/lit8 v4, v6, 0x3

    const/4 v15, 0x0

    aput-byte v15, v9, v11

    add-int/lit8 v10, v6, 0x4

    aput-byte v15, v9, v4

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->isQualified()Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    array-length v4, v4

    goto :goto_9

    :cond_15
    move v4, v15

    :goto_9
    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v11, v6, 0x5

    shr-int/lit8 v12, v4, 0x8

    int-to-byte v12, v12

    aput-byte v12, v9, v10

    add-int/lit8 v6, v6, 0x6

    int-to-byte v10, v4

    aput-byte v10, v9, v11

    if-lez v4, :cond_18

    mul-int/lit8 v10, v4, 0x2

    add-int v11, v6, v10

    array-length v9, v9

    if-lt v11, v9, :cond_16

    invoke-direct {v0, v10}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_16
    move v9, v15

    :goto_a
    if-lt v9, v4, :cond_17

    add-int/2addr v5, v10

    goto :goto_b

    :cond_17
    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object v12, v8, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    aget-object v12, v12, v9

    iget-object v12, v12, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->moduleName:[C

    invoke-virtual {v11, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForModule([C)I

    move-result v11

    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v16, v6, 0x1

    shr-int/lit8 v13, v11, 0x8

    int-to-byte v13, v13

    aput-byte v13, v12, v6

    add-int/lit8 v6, v6, 0x2

    int-to-byte v11, v11

    aput-byte v11, v12, v16

    add-int/lit8 v9, v9, 0x1

    const/4 v13, 0x6

    goto :goto_a

    :cond_18
    :goto_b
    add-int/lit8 v2, v2, 0x1

    move v8, v15

    const/4 v13, 0x6

    goto/16 :goto_1

    :cond_19
    move v15, v8

    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->requires:[Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;

    aget-object v8, v8, v12

    iget-object v13, v8, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->resolvedBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iget-object v14, v13, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->moduleName:[C

    sget-object v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_BASE:[C

    invoke-static {v14, v15}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v14

    if-eqz v14, :cond_1a

    move-object v11, v13

    :cond_1a
    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object v13, v13, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->moduleName:[C

    invoke-virtual {v14, v13}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForModule([C)I

    move-result v13

    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v15, v6, 0x1

    shr-int/lit8 v0, v13, 0x8

    int-to-byte v0, v0

    aput-byte v0, v14, v6

    add-int/lit8 v0, v6, 0x2

    int-to-byte v13, v13

    aput-byte v13, v14, v15

    iget v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->modifiers:I

    add-int/lit8 v13, v6, 0x3

    shr-int/lit8 v15, v8, 0x8

    int-to-byte v15, v15

    aput-byte v15, v14, v0

    add-int/lit8 v0, v6, 0x4

    int-to-byte v8, v8

    aput-byte v8, v14, v13

    add-int/lit8 v8, v6, 0x5

    aput-byte v9, v14, v0

    add-int/lit8 v6, v6, 0x6

    aput-byte v10, v14, v8

    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_0
.end method

.method private generateModuleMainClassAttribute([C)I
    .locals 7

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v0, 0x8

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v2, v2

    const/16 v3, 0x8

    if-lt v1, v2, :cond_0

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->ModuleMainClass:[C

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    add-int/lit8 v5, v0, 0x2

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    add-int/lit8 v1, v0, 0x3

    const/4 v4, 0x0

    int-to-byte v6, v4

    aput-byte v6, v2, v5

    add-int/lit8 v5, v0, 0x4

    int-to-byte v6, v4

    aput-byte v6, v2, v1

    add-int/lit8 v1, v0, 0x5

    int-to-byte v4, v4

    aput-byte v4, v2, v5

    add-int/lit8 v4, v0, 0x6

    const/4 v5, 0x2

    int-to-byte v5, v5

    aput-byte v5, v2, v1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v2, v0, 0x7

    shr-int/lit8 v5, p1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/2addr v0, v3

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 p1, 0x1

    return p1
.end method

.method private generateModulePackagesAttribute([[C)I
    .locals 11

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x6

    add-int v2, v0, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v3, v3

    if-lt v2, v3, :cond_0

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->ModulePackages:[C

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    add-int/lit8 v4, v0, 0x2

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    add-int/lit8 v1, v0, 0x6

    add-int/lit8 v2, v0, 0x8

    array-length v3, p1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-lt v5, v3, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v3, v0, 0x7

    shr-int/lit8 v5, v6, 0x8

    int-to-byte v5, v5

    aput-byte v5, p1, v1

    int-to-byte v1, v6

    aput-byte v1, p1, v3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v1, v0, 0x3

    shr-int/lit8 v3, v6, 0x18

    int-to-byte v3, v3

    aput-byte v3, p1, v4

    add-int/lit8 v3, v0, 0x4

    shr-int/lit8 v4, v6, 0x10

    int-to-byte v4, v4

    aput-byte v4, p1, v1

    add-int/lit8 v0, v0, 0x5

    shr-int/lit8 v1, v6, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v3

    int-to-byte v1, v6

    aput-byte v1, p1, v0

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 p1, 0x1

    return p1

    :cond_1
    aget-object v7, p1, v5

    if-eqz v7, :cond_3

    array-length v8, v7

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForPackage([C)I

    move-result v7

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v9, v2, 0x1

    shr-int/lit8 v10, v7, 0x8

    int-to-byte v10, v10

    aput-byte v10, v8, v2

    add-int/lit8 v2, v2, 0x2

    int-to-byte v7, v7

    aput-byte v7, v8, v9

    add-int/lit8 v6, v6, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private generateNestAttributes()I
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateNestMembersAttribute()I

    move-result v0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateNestHostAttribute()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private generateNestHostAttribute()I
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getNestHost()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v3, v2, 0xa

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v4, v4

    if-lt v3, v4, :cond_1

    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->NestHost:[C

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v5, v2, 0x1

    shr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    add-int/lit8 v6, v2, 0x2

    int-to-byte v3, v3

    aput-byte v3, v4, v5

    add-int/lit8 v3, v2, 0x3

    aput-byte v1, v4, v6

    add-int/lit8 v5, v2, 0x4

    aput-byte v1, v4, v3

    add-int/lit8 v3, v2, 0x5

    aput-byte v1, v4, v5

    add-int/lit8 v1, v2, 0x6

    const/4 v5, 0x2

    aput-byte v5, v4, v3

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v2, 0x7

    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    add-int/lit8 v2, v2, 0x8

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 v0, 0x1

    return v0
.end method

.method private generateNestMembersAttribute()I
    .locals 9

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getNestMembers()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-nez v3, :cond_1

    return v2

    :cond_1
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x8

    add-int v5, v4, v0

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v6, v6

    if-lt v5, v6, :cond_2

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->NestMembers:[C

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v6, v0, 0x1

    shr-int/lit8 v7, v4, 0x8

    int-to-byte v7, v7

    aput-byte v7, v5, v0

    add-int/lit8 v7, v0, 0x2

    int-to-byte v4, v4

    aput-byte v4, v5, v6

    shl-int/lit8 v4, v3, 0x1

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v6, v0, 0x3

    shr-int/lit8 v8, v4, 0x18

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    add-int/lit8 v7, v0, 0x4

    shr-int/lit8 v8, v4, 0x10

    int-to-byte v8, v8

    aput-byte v8, v5, v6

    add-int/lit8 v6, v0, 0x5

    shr-int/lit8 v8, v4, 0x8

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    add-int/lit8 v7, v0, 0x6

    int-to-byte v4, v4

    aput-byte v4, v5, v6

    add-int/lit8 v4, v0, 0x7

    shr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    aput-byte v6, v5, v7

    add-int/lit8 v0, v0, 0x8

    int-to-byte v6, v3

    aput-byte v6, v5, v4

    :goto_1
    if-lt v2, v3, :cond_3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 v0, 0x1

    return v0

    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v6, v0, 0x1

    shr-int/lit8 v7, v4, 0x8

    int-to-byte v7, v7

    aput-byte v7, v5, v0

    add-int/lit8 v0, v0, 0x2

    int-to-byte v4, v4

    aput-byte v4, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private generateRuntimeAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;J)I
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    array-length v4, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-lt v6, v4, :cond_14

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/16 v13, 0xa

    if-eqz v7, :cond_9

    add-int/lit8 v14, v6, 0xa

    iget-object v15, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v15, v15

    if-lt v14, v15, :cond_0

    invoke-direct {v0, v13}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_0
    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v15, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeInvisibleAnnotationsName:[C

    invoke-virtual {v14, v15}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v14

    iget-object v15, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v13, v5, 0x1

    iput v13, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v11, v14, 0x8

    int-to-byte v11, v11

    aput-byte v11, v15, v5

    add-int/lit8 v11, v5, 0x2

    iput v11, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v12, v14

    aput-byte v12, v15, v13

    add-int/lit8 v12, v5, 0x6

    add-int/lit8 v13, v5, 0x8

    iput v13, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-lt v13, v4, :cond_1

    goto :goto_2

    :cond_1
    if-nez v7, :cond_3

    :goto_2
    if-eqz v14, :cond_2

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v7, v5, 0x7

    shr-int/lit8 v13, v14, 0x8

    int-to-byte v13, v13

    aput-byte v13, v6, v12

    int-to-byte v12, v14

    aput-byte v12, v6, v7

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    sub-int/2addr v7, v11

    add-int/lit8 v7, v7, -0x4

    add-int/lit8 v12, v5, 0x3

    shr-int/lit8 v13, v7, 0x18

    int-to-byte v13, v13

    aput-byte v13, v6, v11

    add-int/lit8 v11, v5, 0x4

    shr-int/lit8 v13, v7, 0x10

    int-to-byte v13, v13

    aput-byte v13, v6, v12

    add-int/lit8 v5, v5, 0x5

    shr-int/lit8 v12, v7, 0x8

    int-to-byte v12, v12

    aput-byte v12, v6, v11

    int-to-byte v7, v7

    aput-byte v7, v6, v5

    const/4 v5, 0x1

    goto :goto_7

    :cond_2
    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    goto :goto_6

    :cond_3
    aget-object v15, v1, v13

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->getPersistibleAnnotation()Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v15

    if-nez v15, :cond_4

    goto :goto_5

    :cond_4
    iget-object v9, v15, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->getAnnotationTagBits()J

    move-result-wide v9

    const-wide v20, 0x20600ff800000000L    # 9.583895004233563E-153

    and-long v9, v9, v20

    :goto_3
    const-wide/16 v18, 0x0

    goto :goto_4

    :cond_5
    const-wide/16 v9, 0x0

    goto :goto_3

    :goto_4
    cmp-long v22, v9, v18

    if-eqz v22, :cond_6

    and-long v22, v9, v2

    cmp-long v22, v22, v18

    if-nez v22, :cond_6

    invoke-direct {v0, v9, v10, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->jdk16packageInfoAnnotation(JJ)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->isRuntimeInvisible()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->isRuntimeTypeInvisible()Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_7
    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-direct {v0, v15, v9}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)V

    add-int/lit8 v7, v7, -0x1

    iget v10, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    if-eq v10, v9, :cond_8

    add-int/lit8 v14, v14, 0x1

    :cond_8
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_9
    :goto_6
    const/4 v5, 0x0

    :goto_7
    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    if-eqz v8, :cond_13

    add-int/lit8 v7, v6, 0xa

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v9, v9

    if-lt v7, v9, :cond_a

    const/16 v7, 0xa

    invoke-direct {v0, v7}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_a
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeVisibleAnnotationsName:[C

    invoke-virtual {v7, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v7

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v10, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v12, v7, 0x8

    int-to-byte v12, v12

    aput-byte v12, v9, v10

    add-int/lit8 v12, v10, 0x2

    iput v12, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v7, v7

    aput-byte v7, v9, v11

    add-int/lit8 v7, v10, 0x6

    add-int/lit8 v9, v10, 0x8

    iput v9, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    move v11, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_8
    if-lt v8, v4, :cond_b

    goto :goto_9

    :cond_b
    if-nez v11, :cond_d

    :goto_9
    if-eqz v9, :cond_c

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v2, v10, 0x7

    shr-int/lit8 v3, v9, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v7

    int-to-byte v3, v9

    aput-byte v3, v1, v2

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    sub-int/2addr v2, v12

    add-int/lit8 v2, v2, -0x4

    add-int/lit8 v3, v10, 0x3

    shr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v12

    add-int/lit8 v4, v10, 0x4

    shr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    add-int/lit8 v10, v10, 0x5

    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_c
    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    goto :goto_d

    :cond_d
    aget-object v13, v1, v8

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->getPersistibleAnnotation()Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v13

    if-nez v13, :cond_e

    goto :goto_c

    :cond_e
    iget-object v14, v13, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v14, :cond_f

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->getAnnotationTagBits()J

    move-result-wide v14

    const-wide v16, 0x20600ff800000000L    # 9.583895004233563E-153

    and-long v14, v14, v16

    :goto_a
    const-wide/16 v16, 0x0

    goto :goto_b

    :cond_f
    const-wide/16 v14, 0x0

    goto :goto_a

    :goto_b
    cmp-long v18, v14, v16

    if-eqz v18, :cond_10

    and-long v18, v14, v2

    cmp-long v22, v18, v16

    if-nez v22, :cond_10

    invoke-direct {v0, v14, v15, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->jdk16packageInfoAnnotation(JJ)Z

    move-result v14

    if-nez v14, :cond_10

    goto :goto_c

    :cond_10
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->isRuntimeVisible()Z

    move-result v14

    if-nez v14, :cond_11

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->isRuntimeTypeVisible()Z

    move-result v14

    if-eqz v14, :cond_12

    :cond_11
    add-int/lit8 v11, v11, -0x1

    iget v14, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-direct {v0, v13, v14}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)V

    iget v13, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    if-eq v13, v14, :cond_12

    add-int/lit8 v9, v9, 0x1

    :cond_12
    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_8

    :cond_13
    :goto_d
    return v5

    :cond_14
    aget-object v5, v1, v6

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->getPersistibleAnnotation()Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v5

    if-nez v5, :cond_15

    goto :goto_11

    :cond_15
    iget-object v9, v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v9, :cond_16

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->getAnnotationTagBits()J

    move-result-wide v9

    const-wide v11, 0x20600ff800000000L    # 9.583895004233563E-153

    and-long/2addr v9, v11

    :goto_e
    const-wide/16 v11, 0x0

    goto :goto_f

    :cond_16
    const-wide/16 v9, 0x0

    goto :goto_e

    :goto_f
    cmp-long v13, v9, v11

    if-eqz v13, :cond_17

    and-long v13, v9, v2

    cmp-long v11, v13, v11

    if-nez v11, :cond_17

    invoke-direct {v0, v9, v10, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->jdk16packageInfoAnnotation(JJ)Z

    move-result v9

    if-nez v9, :cond_17

    goto :goto_11

    :cond_17
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->isRuntimeInvisible()Z

    move-result v9

    if-nez v9, :cond_1a

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->isRuntimeTypeInvisible()Z

    move-result v9

    if-eqz v9, :cond_18

    goto :goto_10

    :cond_18
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->isRuntimeVisible()Z

    move-result v9

    if-nez v9, :cond_19

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->isRuntimeTypeVisible()Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_19
    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    :cond_1a
    :goto_10
    add-int/lit8 v7, v7, 0x1

    :cond_1b
    :goto_11
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method private generateRuntimeAnnotationsForParameters([Lorg/eclipse/jdt/internal/compiler/ast/Argument;)I
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v6, 0x0

    aput v2, v4, v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_0
    if-lt v7, v2, :cond_1a

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 v10, 0x7

    if-eqz v8, :cond_c

    add-int/lit8 v11, v7, 0x7

    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v14, v14

    if-lt v11, v14, :cond_0

    invoke-direct {v0, v10}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_0
    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v14, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeInvisibleParameterAnnotationsName:[C

    invoke-virtual {v11, v14}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v11

    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v15, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v10, v15, 0x1

    iput v10, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v12, v11, 0x8

    int-to-byte v12, v12

    aput-byte v12, v14, v15

    add-int/lit8 v12, v15, 0x2

    iput v12, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v11, v11

    aput-byte v11, v14, v10

    add-int/lit8 v10, v15, 0x6

    add-int/lit8 v11, v15, 0x7

    iput v11, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v11, v2

    aput-byte v11, v14, v10

    move v10, v6

    move v11, v10

    :goto_1
    if-lt v10, v2, :cond_2

    if-eqz v11, :cond_1

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    sub-int/2addr v8, v12

    add-int/lit8 v8, v8, -0x4

    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v11, v15, 0x3

    shr-int/lit8 v13, v8, 0x18

    int-to-byte v13, v13

    aput-byte v13, v10, v12

    add-int/lit8 v12, v15, 0x4

    shr-int/lit8 v13, v8, 0x10

    int-to-byte v13, v13

    aput-byte v13, v10, v11

    add-int/lit8 v15, v15, 0x5

    shr-int/lit8 v11, v8, 0x8

    int-to-byte v11, v11

    aput-byte v11, v10, v12

    int-to-byte v8, v8

    aput-byte v8, v10, v15

    goto/16 :goto_9

    :cond_1
    iput v7, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    goto/16 :goto_8

    :cond_2
    iget v13, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/2addr v13, v3

    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v14, v14

    if-lt v13, v14, :cond_3

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_3
    if-nez v8, :cond_4

    iget-object v13, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v14, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v5, v14, 0x1

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    aput-byte v6, v13, v14

    add-int/2addr v14, v3

    iput v14, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    aput-byte v6, v13, v5

    goto/16 :goto_7

    :cond_4
    aget-object v5, v4, v10

    const/4 v13, 0x1

    aget v5, v5, v13

    iget v13, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v14, v13, 0x2

    iput v14, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    if-eqz v5, :cond_b

    aget-object v5, v1, v10

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    array-length v14, v5

    move/from16 v24, v6

    :goto_2
    if-lt v6, v14, :cond_5

    move/from16 v3, v24

    goto :goto_6

    :cond_5
    aget-object v25, v5, v6

    invoke-virtual/range {v25 .. v25}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->getPersistibleAnnotation()Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v3

    if-nez v3, :cond_6

    move-object/from16 v25, v5

    goto :goto_5

    :cond_6
    move-object/from16 v25, v5

    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->getAnnotationTagBits()J

    move-result-wide v26

    const-wide v21, 0x20600ff800000000L    # 9.583895004233563E-153

    and-long v26, v26, v21

    move-wide/from16 v18, v26

    :goto_3
    const-wide/16 v26, 0x0

    goto :goto_4

    :cond_7
    const-wide/16 v18, 0x0

    goto :goto_3

    :goto_4
    cmp-long v5, v18, v26

    if-eqz v5, :cond_8

    const-wide v16, 0x8000000000L

    and-long v18, v18, v16

    cmp-long v5, v18, v26

    if-nez v5, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->isRuntimeInvisible()Z

    move-result v5

    if-eqz v5, :cond_a

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-direct {v0, v3, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)V

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    if-eq v3, v5, :cond_9

    add-int/lit8 v24, v24, 0x1

    add-int/lit8 v11, v11, 0x1

    :cond_9
    add-int/lit8 v8, v8, -0x1

    :cond_a
    :goto_5
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v5, v25

    const/4 v3, 0x2

    goto :goto_2

    :cond_b
    const/4 v3, 0x0

    :goto_6
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v6, v13, 0x1

    shr-int/lit8 v14, v3, 0x8

    int-to-byte v14, v14

    aput-byte v14, v5, v13

    int-to-byte v3, v3

    aput-byte v3, v5, v6

    :goto_7
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_c
    :goto_8
    const/4 v5, 0x0

    :goto_9
    if-eqz v9, :cond_19

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 v6, 0x7

    add-int/2addr v3, v6

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v8, v8

    if-lt v3, v8, :cond_d

    invoke-direct {v0, v6}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_d
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeVisibleParameterAnnotationsName:[C

    invoke-virtual {v3, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v3

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v10, v8, 0x1

    iput v10, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v11, v3, 0x8

    int-to-byte v11, v11

    aput-byte v11, v6, v8

    add-int/lit8 v11, v8, 0x2

    iput v11, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v3, v3

    aput-byte v3, v6, v10

    add-int/lit8 v3, v8, 0x6

    add-int/lit8 v10, v8, 0x7

    iput v10, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v10, v2

    aput-byte v10, v6, v3

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_a
    if-lt v3, v2, :cond_f

    if-eqz v6, :cond_e

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    sub-int/2addr v1, v11

    add-int/lit8 v1, v1, -0x4

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v3, v8, 0x3

    shr-int/lit8 v4, v1, 0x18

    int-to-byte v4, v4

    aput-byte v4, v2, v11

    add-int/lit8 v4, v8, 0x4

    shr-int/lit8 v6, v1, 0x10

    int-to-byte v6, v6

    aput-byte v6, v2, v3

    add-int/lit8 v8, v8, 0x5

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    int-to-byte v1, v1

    aput-byte v1, v2, v8

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_11

    :cond_e
    iput v7, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    goto/16 :goto_11

    :cond_f
    iget v10, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 v12, 0x2

    add-int/2addr v10, v12

    iget-object v13, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v13, v13

    if-lt v10, v13, :cond_10

    invoke-direct {v0, v12}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_10
    if-nez v9, :cond_11

    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v13, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v14, v13, 0x1

    iput v14, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 v15, 0x0

    aput-byte v15, v10, v13

    add-int/2addr v13, v12

    iput v13, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    aput-byte v15, v10, v14

    move/from16 v24, v2

    goto/16 :goto_10

    :cond_11
    const/4 v15, 0x0

    aget-object v10, v4, v3

    aget v10, v10, v15

    iget v13, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v14, v13, 0x2

    iput v14, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    if-eqz v10, :cond_18

    aget-object v10, v1, v3

    iget-object v10, v10, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    array-length v14, v10

    const/4 v15, 0x0

    const/16 v20, 0x0

    :goto_b
    if-lt v15, v14, :cond_12

    move/from16 v24, v2

    move/from16 v15, v20

    goto :goto_f

    :cond_12
    aget-object v23, v10, v15

    invoke-virtual/range {v23 .. v23}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->getPersistibleAnnotation()Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v12

    if-nez v12, :cond_13

    move/from16 v24, v2

    goto :goto_e

    :cond_13
    move/from16 v24, v2

    iget-object v2, v12, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->getAnnotationTagBits()J

    move-result-wide v26

    const-wide v21, 0x20600ff800000000L    # 9.583895004233563E-153

    and-long v26, v26, v21

    move-wide/from16 v18, v26

    :goto_c
    const-wide/16 v26, 0x0

    goto :goto_d

    :cond_14
    const-wide/16 v18, 0x0

    goto :goto_c

    :goto_d
    cmp-long v2, v18, v26

    if-eqz v2, :cond_15

    const-wide v16, 0x8000000000L

    and-long v18, v18, v16

    cmp-long v2, v18, v26

    if-nez v2, :cond_15

    goto :goto_e

    :cond_15
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->isRuntimeVisible()Z

    move-result v2

    if-eqz v2, :cond_17

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-direct {v0, v12, v2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)V

    iget v12, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    if-eq v12, v2, :cond_16

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v6, v6, 0x1

    :cond_16
    add-int/lit8 v9, v9, -0x1

    :cond_17
    :goto_e
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v24

    const/4 v12, 0x2

    goto :goto_b

    :cond_18
    move/from16 v24, v2

    const/4 v15, 0x0

    :goto_f
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v10, v13, 0x1

    shr-int/lit8 v12, v15, 0x8

    int-to-byte v12, v12

    aput-byte v12, v2, v13

    int-to-byte v12, v15

    aput-byte v12, v2, v10

    :goto_10
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v24

    goto/16 :goto_a

    :cond_19
    :goto_11
    return v5

    :cond_1a
    move/from16 v24, v2

    aget-object v2, v1, v7

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v2, :cond_1b

    array-length v3, v2

    const/4 v15, 0x0

    :goto_12
    if-lt v15, v3, :cond_1c

    :cond_1b
    const/4 v6, 0x1

    const/4 v14, 0x0

    goto :goto_16

    :cond_1c
    aget-object v5, v2, v15

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->getPersistibleAnnotation()Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v5

    if-nez v5, :cond_1d

    const/4 v6, 0x1

    const-wide/16 v10, 0x0

    const-wide v12, 0x20600ff800000000L    # 9.583895004233563E-153

    const/4 v14, 0x0

    const-wide v16, 0x8000000000L

    goto :goto_15

    :cond_1d
    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v6, :cond_1e

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->getAnnotationTagBits()J

    move-result-wide v10

    const-wide v12, 0x20600ff800000000L    # 9.583895004233563E-153

    and-long v26, v10, v12

    const-wide/16 v10, 0x0

    goto :goto_13

    :cond_1e
    const-wide v12, 0x20600ff800000000L    # 9.583895004233563E-153

    const-wide/16 v10, 0x0

    const-wide/16 v26, 0x0

    :goto_13
    cmp-long v6, v26, v10

    const-wide v16, 0x8000000000L

    if-eqz v6, :cond_1f

    and-long v18, v26, v16

    cmp-long v6, v18, v10

    if-nez v6, :cond_1f

    const/4 v6, 0x1

    goto :goto_14

    :cond_1f
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->isRuntimeInvisible()Z

    move-result v6

    if-eqz v6, :cond_21

    aget-object v5, v4, v7

    const/4 v6, 0x1

    aget v14, v5, v6

    add-int/2addr v14, v6

    aput v14, v5, v6

    add-int/lit8 v8, v8, 0x1

    :cond_20
    :goto_14
    const/4 v14, 0x0

    goto :goto_15

    :cond_21
    const/4 v6, 0x1

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->isRuntimeVisible()Z

    move-result v5

    if-eqz v5, :cond_20

    aget-object v5, v4, v7

    const/4 v14, 0x0

    aget v18, v5, v14

    add-int/lit8 v18, v18, 0x1

    aput v18, v5, v14

    add-int/lit8 v9, v9, 0x1

    :goto_15
    add-int/lit8 v15, v15, 0x1

    goto :goto_12

    :goto_16
    add-int/lit8 v7, v7, 0x1

    move v5, v6

    move v6, v14

    move/from16 v2, v24

    const/4 v3, 0x2

    goto/16 :goto_0
.end method

.method private generateRuntimeTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;II)I
    .locals 12

    array-length v0, p1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/16 v2, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_5

    add-int/lit8 v5, v1, 0xa

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v6, v6

    if-lt v5, v6, :cond_0

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_0
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeInvisibleTypeAnnotationsName:[C

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v9, v5, 0x8

    int-to-byte v9, v9

    aput-byte v9, v6, v7

    add-int/lit8 v9, v7, 0x2

    iput v9, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v5, v5

    aput-byte v5, v6, v8

    add-int/lit8 v5, v7, 0x6

    add-int/lit8 v6, v7, 0x8

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    move v6, v4

    move v8, v6

    :goto_0
    if-lt v6, v0, :cond_1

    goto :goto_1

    :cond_1
    if-nez p3, :cond_3

    :goto_1
    if-eqz v8, :cond_2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v1, v7, 0x7

    shr-int/lit8 v6, v8, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    int-to-byte v5, v8

    aput-byte v5, p3, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    sub-int/2addr v1, v9

    add-int/lit8 v1, v1, -0x4

    add-int/lit8 v5, v7, 0x3

    shr-int/lit8 v6, v1, 0x18

    int-to-byte v6, v6

    aput-byte v6, p3, v9

    add-int/lit8 v6, v7, 0x4

    shr-int/lit8 v8, v1, 0x10

    int-to-byte v8, v8

    aput-byte v8, p3, v5

    add-int/lit8 v7, v7, 0x5

    shr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    aput-byte v5, p3, v6

    int-to-byte v1, v1

    aput-byte v1, p3, v7

    move p3, v3

    goto :goto_3

    :cond_2
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    goto :goto_2

    :cond_3
    aget-object v10, p1, v6

    iget v11, v10, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->visibility:I

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_4

    iget v11, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-direct {p0, v10, v11}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;I)V

    add-int/lit8 p3, p3, -0x1

    iget v10, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    if-eq v10, v11, :cond_4

    add-int/lit8 v8, v8, 0x1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    move p3, v4

    :goto_3
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    if-eqz p2, :cond_b

    add-int/lit8 v5, v1, 0xa

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v6, v6

    if-lt v5, v6, :cond_6

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_6
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeVisibleTypeAnnotationsName:[C

    invoke-virtual {v2, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v8, v2, 0x8

    int-to-byte v8, v8

    aput-byte v8, v5, v6

    add-int/lit8 v8, v6, 0x2

    iput v8, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v2, v2

    aput-byte v2, v5, v7

    add-int/lit8 v2, v6, 0x6

    add-int/lit8 v5, v6, 0x8

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    move v5, v4

    :goto_4
    if-lt v4, v0, :cond_7

    goto :goto_5

    :cond_7
    if-nez p2, :cond_9

    :goto_5
    if-eqz v5, :cond_8

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 p2, v6, 0x7

    shr-int/lit8 v0, v5, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    int-to-byte v0, v5

    aput-byte v0, p1, p2

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    sub-int/2addr p2, v8

    add-int/lit8 p2, p2, -0x4

    add-int/lit8 v0, v6, 0x3

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v8

    add-int/lit8 v1, v6, 0x4

    shr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v6, v6, 0x5

    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    int-to-byte p2, p2

    aput-byte p2, p1, v6

    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    :cond_8
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    goto :goto_6

    :cond_9
    aget-object v7, p1, v4

    iget v9, v7, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->visibility:I

    and-int/2addr v9, v3

    if-eqz v9, :cond_a

    add-int/lit8 p2, p2, -0x1

    iget v9, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-direct {p0, v7, v9}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;I)V

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    if-eq v7, v9, :cond_a

    add-int/lit8 v5, v5, 0x1

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    :goto_6
    return p3
.end method

.method private generateSignatureAttribute([C)I
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v0, 0x8

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v2, v2

    const/16 v3, 0x8

    if-lt v1, v2, :cond_0

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->SignatureName:[C

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    add-int/lit8 v5, v0, 0x2

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    add-int/lit8 v1, v0, 0x3

    const/4 v4, 0x0

    aput-byte v4, v2, v5

    add-int/lit8 v5, v0, 0x4

    aput-byte v4, v2, v1

    add-int/lit8 v1, v0, 0x5

    aput-byte v4, v2, v5

    add-int/lit8 v4, v0, 0x6

    const/4 v5, 0x2

    aput-byte v5, v2, v1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v2, v0, 0x7

    shr-int/lit8 v5, p1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/2addr v0, v3

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 p1, 0x1

    return p1
.end method

.method private generateSourceAttribute(Ljava/lang/String;)I
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v0, 0x8

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v2, v2

    const/16 v3, 0x8

    if-lt v1, v2, :cond_0

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->SourceName:[C

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    add-int/lit8 v5, v0, 0x2

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    add-int/lit8 v1, v0, 0x3

    const/4 v4, 0x0

    aput-byte v4, v2, v5

    add-int/lit8 v5, v0, 0x4

    aput-byte v4, v2, v1

    add-int/lit8 v1, v0, 0x5

    aput-byte v4, v2, v5

    add-int/lit8 v4, v0, 0x6

    const/4 v5, 0x2

    aput-byte v5, v2, v1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v2, v0, 0x7

    shr-int/lit8 v5, p1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/2addr v0, v3

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 p1, 0x1

    return p1
.end method

.method private generateStackMapAttribute(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;IIIZ)I
    .locals 22

    move-object/from16 v8, p0

    iget v9, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;

    move/from16 v5, p2

    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->removeFramePosition(I)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->hasFramePositions()Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_4

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz p5, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, p3, 0xe

    move-object/from16 v0, p0

    move/from16 v2, p4

    move/from16 v5, p2

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->traverse(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I[BIILjava/util/Map;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    add-int/lit8 v3, v9, 0x8

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v4, v4

    const/16 v5, 0x8

    if-lt v3, v4, :cond_1

    invoke-direct {v8, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_1
    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->StackMapName:[C

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v3

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v6, v9, 0x1

    shr-int/lit8 v7, v3, 0x8

    int-to-byte v7, v7

    aput-byte v7, v4, v9

    add-int/lit8 v7, v9, 0x2

    int-to-byte v3, v3

    aput-byte v3, v4, v6

    add-int/lit8 v3, v9, 0x6

    add-int/lit8 v6, v9, 0xa

    array-length v4, v4

    const/4 v11, 0x4

    if-lt v6, v4, :cond_2

    invoke-direct {v8, v11}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_2
    add-int/lit8 v4, v9, 0x8

    add-int/lit8 v6, v9, 0xa

    iget-object v12, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v12, v12

    const/4 v13, 0x2

    if-lt v6, v12, :cond_3

    invoke-direct {v8, v13}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_3
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;

    move v6, v2

    :goto_1
    if-lt v6, v1, :cond_5

    add-int/lit8 v1, v1, -0x1

    if-eqz v1, :cond_4

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v5, v9, 0x7

    shr-int/lit8 v6, v1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    sub-int v1, v4, v7

    sub-int/2addr v1, v11

    add-int/lit8 v3, v9, 0x3

    shr-int/lit8 v5, v1, 0x18

    int-to-byte v5, v5

    aput-byte v5, v0, v7

    add-int/lit8 v5, v9, 0x4

    shr-int/lit8 v6, v1, 0x10

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    add-int/lit8 v9, v9, 0x5

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    int-to-byte v1, v1

    aput-byte v1, v0, v9

    move v10, v2

    move v9, v4

    goto/16 :goto_10

    :cond_4
    move v5, v10

    goto/16 :goto_f

    :cond_5
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;

    iget v14, v12, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->pc:I

    add-int/lit8 v15, v4, 0x5

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v2, v2

    const/4 v11, 0x5

    if-lt v15, v2, :cond_6

    invoke-direct {v8, v11}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_6
    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v15, v4, 0x1

    shr-int/lit8 v13, v14, 0x8

    int-to-byte v13, v13

    aput-byte v13, v2, v4

    add-int/lit8 v13, v4, 0x2

    int-to-byte v14, v14

    aput-byte v14, v2, v15

    add-int/lit8 v2, v4, 0x4

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->getNumberOfLocals()I

    move-result v14

    iget-object v15, v12, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    if-nez v15, :cond_7

    move v15, v10

    goto :goto_2

    :cond_7
    array-length v15, v15

    :goto_2
    move v5, v10

    move v11, v5

    move/from16 v16, v11

    :goto_3
    if-ge v11, v15, :cond_8

    if-lt v5, v14, :cond_9

    :cond_8
    move-object/from16 v19, v0

    move/from16 v20, v1

    move/from16 v21, v3

    move/from16 v10, v16

    goto/16 :goto_7

    :cond_9
    add-int/lit8 v10, v2, 0x3

    move-object/from16 v19, v0

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v0, v0

    if-lt v10, v0, :cond_a

    const/4 v0, 0x3

    invoke-direct {v8, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_a
    iget-object v0, v12, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    aget-object v0, v0, v11

    if-nez v0, :cond_b

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v10, v2, 0x1

    const/16 v17, 0x0

    aput-byte v17, v0, v2

    move/from16 v20, v1

    move/from16 v21, v3

    move v2, v10

    const/4 v1, 0x1

    goto/16 :goto_6

    :cond_b
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    iget-object v10, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v18, v2, 0x1

    move/from16 v20, v1

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->tag:I

    move/from16 v21, v3

    int-to-byte v3, v1

    aput-byte v3, v10, v2

    const/4 v3, 0x7

    if-eq v1, v3, :cond_d

    const/16 v3, 0x8

    if-eq v1, v3, :cond_c

    :goto_4
    const/4 v1, 0x1

    goto/16 :goto_5

    :cond_c
    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->offset:I

    add-int/lit8 v1, v2, 0x2

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v10, v18

    add-int/lit8 v18, v2, 0x3

    int-to-byte v0, v0

    aput-byte v0, v10, v1

    goto :goto_4

    :cond_d
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->constantPoolName()[C

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v3, v2, 0x2

    shr-int/lit8 v10, v0, 0x8

    int-to-byte v10, v10

    aput-byte v10, v1, v18

    add-int/lit8 v18, v2, 0x3

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    goto :goto_4

    :pswitch_1
    move/from16 v20, v1

    move/from16 v21, v3

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v18, v2, 0x1

    const/4 v1, 0x5

    aput-byte v1, v0, v2

    goto :goto_4

    :pswitch_2
    move/from16 v20, v1

    move/from16 v21, v3

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v18, v2, 0x1

    const/4 v1, 0x2

    aput-byte v1, v0, v2

    goto :goto_4

    :pswitch_3
    move/from16 v20, v1

    move/from16 v21, v3

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v1, v2, 0x1

    const/4 v3, 0x3

    aput-byte v3, v0, v2

    add-int/lit8 v11, v11, 0x1

    move/from16 v18, v1

    goto :goto_4

    :pswitch_4
    move/from16 v20, v1

    move/from16 v21, v3

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v18, v2, 0x1

    const/4 v1, 0x4

    aput-byte v1, v0, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :pswitch_5
    move/from16 v20, v1

    move/from16 v21, v3

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v18, v2, 0x1

    const/4 v1, 0x1

    aput-byte v1, v0, v2

    :goto_5
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v18

    :goto_6
    move/from16 v10, v16

    add-int/lit8 v16, v10, 0x1

    add-int/2addr v11, v1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v3, v21

    goto/16 :goto_3

    :goto_7
    add-int/lit8 v0, v2, 0x4

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v1, v1

    if-lt v0, v1, :cond_e

    const/4 v0, 0x4

    invoke-direct {v8, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_e
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v4, 0x3

    shr-int/lit8 v1, v10, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v13

    int-to-byte v1, v10

    aput-byte v1, v0, v4

    iget v1, v12, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v2, 0x2

    int-to-byte v4, v1

    aput-byte v4, v0, v3

    move v4, v2

    const/4 v0, 0x0

    :goto_8
    if-lt v0, v1, :cond_f

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v3, v21

    const/4 v2, 0x1

    const/16 v5, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v13, 0x2

    goto/16 :goto_1

    :cond_f
    add-int/lit8 v2, v4, 0x3

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v3, v3

    if-lt v2, v3, :cond_10

    const/4 v2, 0x3

    invoke-direct {v8, v2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_10
    iget-object v2, v12, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    aget-object v2, v2, v0

    if-nez v2, :cond_11

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v3, v4, 0x1

    const/4 v5, 0x0

    aput-byte v5, v2, v4

    move v4, v3

    const/4 v10, 0x5

    const/4 v11, 0x2

    const/4 v13, 0x7

    const/16 v14, 0x8

    :goto_9
    const/4 v15, 0x3

    :goto_a
    const/16 v16, 0x4

    :goto_b
    const/16 v17, 0x1

    goto/16 :goto_e

    :cond_11
    const/4 v5, 0x0

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :pswitch_6
    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v10, v4, 0x1

    iget v11, v2, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->tag:I

    int-to-byte v13, v11

    aput-byte v13, v3, v4

    const/4 v13, 0x7

    if-eq v11, v13, :cond_13

    const/16 v14, 0x8

    if-eq v11, v14, :cond_12

    move v4, v10

    :goto_c
    const/4 v10, 0x5

    :goto_d
    const/4 v11, 0x2

    goto :goto_9

    :cond_12
    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->offset:I

    add-int/lit8 v11, v4, 0x2

    shr-int/lit8 v15, v2, 0x8

    int-to-byte v15, v15

    aput-byte v15, v3, v10

    add-int/lit8 v4, v4, 0x3

    int-to-byte v2, v2

    aput-byte v2, v3, v11

    goto :goto_c

    :cond_13
    const/16 v14, 0x8

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->constantPoolName()[C

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result v2

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v11, v4, 0x2

    shr-int/lit8 v15, v2, 0x8

    int-to-byte v15, v15

    aput-byte v15, v3, v10

    add-int/lit8 v4, v4, 0x3

    int-to-byte v2, v2

    aput-byte v2, v3, v11

    goto :goto_c

    :pswitch_7
    const/4 v13, 0x7

    const/16 v14, 0x8

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v3, v4, 0x1

    const/4 v10, 0x5

    aput-byte v10, v2, v4

    move v4, v3

    goto :goto_d

    :pswitch_8
    const/4 v10, 0x5

    const/4 v13, 0x7

    const/16 v14, 0x8

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v3, v4, 0x1

    const/4 v11, 0x2

    aput-byte v11, v2, v4

    move v4, v3

    goto :goto_9

    :pswitch_9
    const/4 v10, 0x5

    const/4 v11, 0x2

    const/4 v13, 0x7

    const/16 v14, 0x8

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v3, v4, 0x1

    const/4 v15, 0x3

    aput-byte v15, v2, v4

    move v4, v3

    goto :goto_a

    :pswitch_a
    const/4 v10, 0x5

    const/4 v11, 0x2

    const/4 v13, 0x7

    const/16 v14, 0x8

    const/4 v15, 0x3

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v3, v4, 0x1

    const/16 v16, 0x4

    aput-byte v16, v2, v4

    move v4, v3

    goto/16 :goto_b

    :pswitch_b
    const/4 v10, 0x5

    const/4 v11, 0x2

    const/4 v13, 0x7

    const/16 v14, 0x8

    const/4 v15, 0x3

    const/16 v16, 0x4

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v3, v4, 0x1

    const/16 v17, 0x1

    aput-byte v17, v2, v4

    move v4, v3

    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    :goto_f
    move v10, v5

    :goto_10
    iput v9, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    return v10

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_6
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_b
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private generateStackMapTableAttribute(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;IIIZ)I
    .locals 22

    move-object/from16 v8, p0

    iget v9, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;

    move/from16 v5, p2

    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->removeFramePosition(I)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->hasFramePositions()Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_2b

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz p5, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, p3, 0xe

    move-object/from16 v0, p0

    move/from16 v2, p4

    move/from16 v5, p2

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->traverse(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I[BIILjava/util/Map;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2b

    add-int/lit8 v3, v9, 0x8

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v4, v4

    const/16 v5, 0x8

    if-lt v3, v4, :cond_1

    invoke-direct {v8, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_1
    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->StackMapTableName:[C

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v3

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v6, v9, 0x1

    shr-int/lit8 v7, v3, 0x8

    int-to-byte v7, v7

    aput-byte v7, v4, v9

    add-int/lit8 v7, v9, 0x2

    int-to-byte v3, v3

    aput-byte v3, v4, v6

    add-int/lit8 v3, v9, 0x6

    add-int/lit8 v6, v9, 0xa

    array-length v4, v4

    const/4 v11, 0x4

    if-lt v6, v4, :cond_2

    invoke-direct {v8, v11}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_2
    add-int/lit8 v4, v9, 0x8

    add-int/lit8 v6, v9, 0xa

    iget-object v12, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v12, v12

    const/4 v13, 0x2

    if-lt v6, v12, :cond_3

    invoke-direct {v8, v13}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_3
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;

    move v12, v2

    :goto_1
    const/4 v14, -0x1

    if-lt v12, v1, :cond_4

    add-int/2addr v1, v14

    if-eqz v1, :cond_2b

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v5, v9, 0x7

    shr-int/lit8 v6, v1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    sub-int v1, v4, v7

    sub-int/2addr v1, v11

    add-int/lit8 v3, v9, 0x3

    shr-int/lit8 v5, v1, 0x18

    int-to-byte v5, v5

    aput-byte v5, v0, v7

    add-int/lit8 v5, v9, 0x4

    shr-int/lit8 v6, v1, 0x10

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    add-int/lit8 v9, v9, 0x5

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    int-to-byte v1, v1

    aput-byte v1, v0, v9

    move v10, v2

    move v9, v4

    goto/16 :goto_1e

    :cond_4
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;

    invoke-virtual {v15, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->getOffsetDelta(Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;)I

    move-result v11

    invoke-virtual {v15, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->getFrameType(Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;)I

    move-result v5

    if-eqz v5, :cond_29

    const/4 v10, 0x3

    if-eq v5, v2, :cond_27

    const/4 v2, 0x6

    const/4 v14, 0x5

    if-eq v5, v13, :cond_1f

    if-eq v5, v10, :cond_1d

    if-eq v5, v14, :cond_18

    if-eq v5, v2, :cond_13

    add-int/lit8 v2, v4, 0x5

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v5, v5

    if-lt v2, v5, :cond_5

    invoke-direct {v8, v14}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_5
    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v5, v4, 0x1

    const/4 v6, -0x1

    aput-byte v6, v2, v4

    add-int/lit8 v6, v4, 0x2

    shr-int/lit8 v13, v11, 0x8

    int-to-byte v13, v13

    aput-byte v13, v2, v5

    add-int/lit8 v5, v4, 0x3

    int-to-byte v11, v11

    aput-byte v11, v2, v6

    add-int/lit8 v2, v4, 0x5

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->getNumberOfLocals()I

    move-result v6

    iget-object v11, v15, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    if-nez v11, :cond_6

    const/4 v11, 0x0

    goto :goto_2

    :cond_6
    array-length v11, v11

    :goto_2
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    :goto_3
    if-ge v13, v11, :cond_7

    if-lt v14, v6, :cond_8

    :cond_7
    move-object/from16 v18, v0

    move/from16 v20, v1

    move/from16 v21, v3

    move/from16 v0, v17

    goto/16 :goto_8

    :cond_8
    add-int/lit8 v10, v2, 0x3

    move-object/from16 v18, v0

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v0, v0

    if-lt v10, v0, :cond_9

    const/4 v0, 0x3

    invoke-direct {v8, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_9
    iget-object v0, v15, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    aget-object v0, v0, v13

    if-nez v0, :cond_a

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v10, v2, 0x1

    const/16 v16, 0x0

    aput-byte v16, v0, v2

    move/from16 v20, v1

    move/from16 v21, v3

    move v2, v10

    const/4 v1, 0x1

    goto/16 :goto_7

    :cond_a
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    iget-object v10, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v19, v2, 0x1

    move/from16 v20, v1

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->tag:I

    move/from16 v21, v3

    int-to-byte v3, v1

    aput-byte v3, v10, v2

    const/4 v3, 0x7

    if-eq v1, v3, :cond_c

    const/16 v3, 0x8

    if-eq v1, v3, :cond_b

    :goto_4
    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->offset:I

    add-int/lit8 v1, v2, 0x2

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v10, v19

    add-int/lit8 v19, v2, 0x3

    int-to-byte v0, v0

    aput-byte v0, v10, v1

    goto :goto_4

    :cond_c
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->constantPoolName()[C

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v3, v2, 0x2

    shr-int/lit8 v10, v0, 0x8

    int-to-byte v10, v10

    aput-byte v10, v1, v19

    add-int/lit8 v19, v2, 0x3

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    goto :goto_4

    :pswitch_1
    move/from16 v20, v1

    move/from16 v21, v3

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v19, v2, 0x1

    const/4 v1, 0x5

    aput-byte v1, v0, v2

    goto :goto_4

    :pswitch_2
    move/from16 v20, v1

    move/from16 v21, v3

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v19, v2, 0x1

    const/4 v1, 0x2

    aput-byte v1, v0, v2

    goto :goto_4

    :pswitch_3
    move/from16 v20, v1

    move/from16 v21, v3

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v19, v2, 0x1

    const/4 v1, 0x3

    aput-byte v1, v0, v2

    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :pswitch_4
    move/from16 v20, v1

    move/from16 v21, v3

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v19, v2, 0x1

    const/4 v1, 0x4

    aput-byte v1, v0, v2

    goto :goto_5

    :pswitch_5
    move/from16 v20, v1

    move/from16 v21, v3

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v19, v2, 0x1

    const/4 v1, 0x1

    aput-byte v1, v0, v2

    :goto_6
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v19

    :goto_7
    move/from16 v0, v17

    add-int/lit8 v17, v0, 0x1

    add-int/2addr v13, v1

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v3, v21

    const/4 v10, 0x3

    goto/16 :goto_3

    :goto_8
    add-int/lit8 v1, v2, 0x4

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v3, v3

    if-lt v1, v3, :cond_d

    const/4 v1, 0x4

    invoke-direct {v8, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_d
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v4, 0x4

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v5

    int-to-byte v0, v0

    aput-byte v0, v1, v4

    iget v0, v15, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v2, 0x2

    int-to-byte v4, v0

    aput-byte v4, v1, v3

    const/4 v1, 0x0

    :goto_9
    if-lt v1, v0, :cond_e

    move v4, v2

    :goto_a
    const/4 v1, 0x1

    :goto_b
    const/4 v5, 0x2

    :goto_c
    const/4 v10, 0x0

    :goto_d
    const/16 v14, 0x8

    const/16 v16, 0x4

    goto/16 :goto_1d

    :cond_e
    add-int/lit8 v3, v2, 0x3

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v4, v4

    if-lt v3, v4, :cond_f

    const/4 v3, 0x3

    invoke-direct {v8, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_f
    iget-object v3, v15, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    aget-object v3, v3, v1

    if-nez v3, :cond_10

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    aput-byte v5, v3, v2

    :goto_e
    move v2, v4

    goto/16 :goto_f

    :cond_10
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    :pswitch_6
    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->tag:I

    int-to-byte v10, v6

    aput-byte v10, v4, v2

    const/4 v10, 0x7

    if-eq v6, v10, :cond_12

    const/16 v10, 0x8

    if-eq v6, v10, :cond_11

    move v2, v5

    goto :goto_f

    :cond_11
    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->offset:I

    add-int/lit8 v6, v2, 0x2

    shr-int/lit8 v10, v3, 0x8

    int-to-byte v10, v10

    aput-byte v10, v4, v5

    add-int/lit8 v2, v2, 0x3

    int-to-byte v3, v3

    aput-byte v3, v4, v6

    goto :goto_f

    :cond_12
    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->constantPoolName()[C

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result v3

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v6, v2, 0x2

    shr-int/lit8 v10, v3, 0x8

    int-to-byte v10, v10

    aput-byte v10, v4, v5

    add-int/lit8 v2, v2, 0x3

    int-to-byte v3, v3

    aput-byte v3, v4, v6

    goto :goto_f

    :pswitch_7
    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x5

    aput-byte v5, v3, v2

    goto :goto_e

    :pswitch_8
    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x2

    aput-byte v5, v3, v2

    goto :goto_e

    :pswitch_9
    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x3

    aput-byte v5, v3, v2

    goto :goto_e

    :pswitch_a
    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x4

    aput-byte v5, v3, v2

    goto :goto_e

    :pswitch_b
    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x1

    aput-byte v5, v3, v2

    goto :goto_e

    :goto_f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    :cond_13
    move-object/from16 v18, v0

    move/from16 v20, v1

    move/from16 v21, v3

    add-int/lit8 v0, v4, 0x6

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v1, v1

    if-lt v0, v1, :cond_14

    invoke-direct {v8, v2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_14
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v1, v4, 0x1

    const/16 v2, -0x9

    aput-byte v2, v0, v4

    add-int/lit8 v2, v4, 0x2

    shr-int/lit8 v3, v11, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v4, 0x3

    int-to-byte v3, v11

    aput-byte v3, v0, v2

    iget-object v2, v15, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-nez v2, :cond_15

    add-int/lit8 v4, v4, 0x4

    aput-byte v3, v0, v1

    :goto_10
    move v10, v3

    const/4 v1, 0x1

    const/4 v5, 0x2

    goto/16 :goto_d

    :cond_15
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    :pswitch_c
    iget-object v0, v15, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    aget-object v0, v0, v3

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->tag:I

    int-to-byte v2, v2

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v5, v4, 0x4

    aput-byte v2, v3, v1

    const/4 v1, 0x7

    if-eq v2, v1, :cond_17

    const/16 v1, 0x8

    if-eq v2, v1, :cond_16

    goto :goto_11

    :cond_16
    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->offset:I

    add-int/lit8 v1, v4, 0x5

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v3, v5

    add-int/lit8 v4, v4, 0x6

    int-to-byte v0, v0

    aput-byte v0, v3, v1

    goto/16 :goto_a

    :cond_17
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->constantPoolName()[C

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v2, v4, 0x5

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v5

    add-int/lit8 v5, v4, 0x6

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    :goto_11
    move v4, v5

    goto/16 :goto_a

    :pswitch_d
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v4, 0x4

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    goto/16 :goto_a

    :pswitch_e
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v4, 0x4

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    :goto_12
    move v5, v2

    const/4 v1, 0x1

    goto/16 :goto_c

    :pswitch_f
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v4, 0x4

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    goto/16 :goto_a

    :pswitch_10
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v4, 0x4

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    :goto_13
    move/from16 v16, v2

    const/4 v1, 0x1

    const/4 v5, 0x2

    const/4 v10, 0x0

    const/16 v14, 0x8

    goto/16 :goto_1d

    :pswitch_11
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v4, 0x4

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    :goto_14
    move v1, v2

    goto/16 :goto_b

    :cond_18
    move-object/from16 v18, v0

    move/from16 v20, v1

    move/from16 v21, v3

    add-int/lit8 v0, v4, 0x4

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v1, v1

    if-lt v0, v1, :cond_19

    const/4 v0, 0x4

    invoke-direct {v8, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_19
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v1, v4, 0x1

    add-int/lit8 v11, v11, 0x40

    int-to-byte v2, v11

    aput-byte v2, v0, v4

    iget-object v2, v15, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-nez v2, :cond_1a

    add-int/lit8 v4, v4, 0x2

    aput-byte v3, v0, v1

    goto/16 :goto_10

    :cond_1a
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    :pswitch_12
    iget-object v0, v15, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    aget-object v0, v0, v3

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->tag:I

    int-to-byte v2, v2

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v5, v4, 0x2

    aput-byte v2, v3, v1

    const/4 v1, 0x7

    if-eq v2, v1, :cond_1c

    const/16 v1, 0x8

    if-eq v2, v1, :cond_1b

    goto :goto_11

    :cond_1b
    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->offset:I

    add-int/lit8 v1, v4, 0x3

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v3, v5

    add-int/lit8 v4, v4, 0x4

    int-to-byte v0, v0

    aput-byte v0, v3, v1

    goto/16 :goto_a

    :cond_1c
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->constantPoolName()[C

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v2, v4, 0x3

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v5

    add-int/lit8 v5, v4, 0x4

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    goto/16 :goto_11

    :pswitch_13
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v4, 0x2

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    goto/16 :goto_a

    :pswitch_14
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v4, 0x2

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    goto/16 :goto_12

    :pswitch_15
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v4, 0x2

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    goto/16 :goto_a

    :pswitch_16
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v4, 0x2

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    goto/16 :goto_13

    :pswitch_17
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v4, 0x2

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    goto/16 :goto_14

    :cond_1d
    move-object/from16 v18, v0

    move/from16 v20, v1

    move/from16 v21, v3

    add-int/lit8 v0, v4, 0x3

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1e

    const/4 v0, 0x3

    invoke-direct {v8, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_1e
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v1, v4, 0x1

    const/4 v2, -0x5

    aput-byte v2, v0, v4

    add-int/lit8 v2, v4, 0x2

    shr-int/lit8 v3, v11, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v4, v4, 0x3

    int-to-byte v1, v11

    aput-byte v1, v0, v2

    goto/16 :goto_a

    :cond_1f
    move-object/from16 v18, v0

    move/from16 v20, v1

    move/from16 v21, v3

    add-int/lit8 v0, v4, 0x3

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v1, v1

    if-lt v0, v1, :cond_20

    const/4 v0, 0x3

    invoke-direct {v8, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_20
    invoke-virtual {v15, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfDifferentLocals(Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;)I

    move-result v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v3, v4, 0x1

    add-int/lit16 v5, v0, 0xfb

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v5, v4, 0x2

    shr-int/lit8 v6, v11, 0x8

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    add-int/lit8 v4, v4, 0x3

    int-to-byte v3, v11

    aput-byte v3, v1, v5

    invoke-virtual {v15, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->getIndexOfDifferentLocals(I)I

    move-result v1

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->getNumberOfLocals()I

    :goto_15
    iget-object v3, v15, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    array-length v3, v3

    if-ge v1, v3, :cond_21

    if-gtz v0, :cond_22

    :cond_21
    const/4 v5, 0x2

    const/4 v10, 0x0

    const/16 v14, 0x8

    const/16 v16, 0x4

    goto/16 :goto_1b

    :cond_22
    add-int/lit8 v3, v4, 0x6

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v5, v5

    if-lt v3, v5, :cond_23

    invoke-direct {v8, v2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_23
    iget-object v3, v15, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    aget-object v3, v3, v1

    if-nez v3, :cond_24

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v5, v4, 0x1

    const/4 v10, 0x0

    aput-byte v10, v3, v4

    move v4, v5

    const/4 v3, 0x5

    const/4 v5, 0x2

    const/4 v11, 0x1

    const/4 v13, 0x7

    const/16 v14, 0x8

    const/16 v16, 0x4

    goto/16 :goto_1a

    :cond_24
    const/4 v10, 0x0

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id()I

    move-result v5

    packed-switch v5, :pswitch_data_4

    :pswitch_18
    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v6, v4, 0x1

    iget v11, v3, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->tag:I

    int-to-byte v13, v11

    aput-byte v13, v5, v4

    const/4 v13, 0x7

    if-eq v11, v13, :cond_26

    const/16 v14, 0x8

    if-eq v11, v14, :cond_25

    :goto_16
    const/4 v3, 0x5

    :goto_17
    const/4 v5, 0x2

    :goto_18
    const/4 v11, 0x1

    const/16 v16, 0x4

    goto :goto_19

    :cond_25
    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->offset:I

    add-int/lit8 v11, v4, 0x2

    shr-int/lit8 v2, v3, 0x8

    int-to-byte v2, v2

    aput-byte v2, v5, v6

    add-int/lit8 v6, v4, 0x3

    int-to-byte v2, v3

    aput-byte v2, v5, v11

    goto :goto_16

    :cond_26
    const/16 v14, 0x8

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->constantPoolName()[C

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result v2

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v5, v4, 0x2

    shr-int/lit8 v11, v2, 0x8

    int-to-byte v11, v11

    aput-byte v11, v3, v6

    add-int/lit8 v6, v4, 0x3

    int-to-byte v2, v2

    aput-byte v2, v3, v5

    goto :goto_16

    :pswitch_19
    const/4 v13, 0x7

    const/16 v14, 0x8

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v6, v4, 0x1

    const/4 v3, 0x5

    aput-byte v3, v2, v4

    goto :goto_17

    :pswitch_1a
    const/4 v3, 0x5

    const/4 v13, 0x7

    const/16 v14, 0x8

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v6, v4, 0x1

    const/4 v5, 0x2

    aput-byte v5, v2, v4

    goto :goto_18

    :pswitch_1b
    const/4 v3, 0x5

    const/4 v5, 0x2

    const/4 v13, 0x7

    const/16 v14, 0x8

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v6, v4, 0x1

    const/4 v11, 0x3

    aput-byte v11, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :pswitch_1c
    const/4 v3, 0x5

    const/4 v5, 0x2

    const/4 v13, 0x7

    const/16 v14, 0x8

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v6, v4, 0x1

    const/16 v16, 0x4

    aput-byte v16, v2, v4

    add-int/lit8 v1, v1, 0x1

    const/4 v11, 0x1

    goto :goto_19

    :pswitch_1d
    const/4 v3, 0x5

    const/4 v5, 0x2

    const/4 v13, 0x7

    const/16 v14, 0x8

    const/16 v16, 0x4

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v6, v4, 0x1

    const/4 v11, 0x1

    aput-byte v11, v2, v4

    :goto_19
    add-int/lit8 v0, v0, -0x1

    move v4, v6

    :goto_1a
    add-int/2addr v1, v11

    const/4 v2, 0x6

    goto/16 :goto_15

    :goto_1b
    const/4 v1, 0x1

    goto :goto_1d

    :cond_27
    move-object/from16 v18, v0

    move/from16 v20, v1

    move/from16 v21, v3

    move v5, v13

    const/4 v10, 0x0

    const/16 v14, 0x8

    const/16 v16, 0x4

    add-int/lit8 v0, v4, 0x3

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v1, v1

    if-lt v0, v1, :cond_28

    const/4 v0, 0x3

    invoke-direct {v8, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_28
    invoke-virtual {v15, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfDifferentLocals(Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;)I

    move-result v0

    neg-int v0, v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v2, v4, 0x1

    rsub-int v0, v0, 0xfb

    int-to-byte v0, v0

    aput-byte v0, v1, v4

    add-int/lit8 v0, v4, 0x2

    shr-int/lit8 v3, v11, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v4, v4, 0x3

    int-to-byte v2, v11

    aput-byte v2, v1, v0

    goto :goto_1b

    :cond_29
    move-object/from16 v18, v0

    move/from16 v20, v1

    move/from16 v21, v3

    move v5, v13

    const/16 v14, 0x8

    const/16 v16, 0x4

    add-int/lit8 v0, v4, 0x1

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v1, v1

    if-lt v0, v1, :cond_2a

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    goto :goto_1c

    :cond_2a
    const/4 v1, 0x1

    :goto_1c
    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    int-to-byte v3, v11

    aput-byte v3, v2, v4

    move v4, v0

    :goto_1d
    add-int/lit8 v12, v12, 0x1

    move v2, v1

    move v13, v5

    move v5, v14

    move-object v6, v15

    move/from16 v11, v16

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v3, v21

    goto/16 :goto_1

    :cond_2b
    :goto_1e
    iput v9, v8, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    return v10

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_6
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_b
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_c
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_11
        :pswitch_c
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_12
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_17
        :pswitch_12
        :pswitch_13
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_18
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_1d
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method private generateSyntheticAttribute()I
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v0, 0x6

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v2, v2

    const/4 v3, 0x6

    if-lt v1, v2, :cond_0

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->SyntheticName:[C

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    add-int/lit8 v5, v0, 0x2

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    add-int/lit8 v1, v0, 0x3

    const/4 v4, 0x0

    aput-byte v4, v2, v5

    add-int/lit8 v5, v0, 0x4

    aput-byte v4, v2, v1

    add-int/lit8 v1, v0, 0x5

    aput-byte v4, v2, v5

    add-int/2addr v0, v3

    aput-byte v4, v2, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 v0, 0x1

    return v0
.end method

.method private generateTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;I)V
    .locals 6

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->getPersistibleAnnotation()Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->targetType:I

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->typeReference:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->getLocations(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)[I

    move-result-object v2

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 v4, 0x5

    add-int/2addr v3, v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v5, v5

    if-lt v3, v5, :cond_1

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v5, v1

    aput-byte v5, v3, v4

    invoke-direct {p0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->dumpTargetTypeContents(ILorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;)V

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->dumpLocations([I)V

    invoke-direct {p0, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private generateTypeAnnotationAttributeForTypeDeclaration()I
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return v3

    :cond_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/16 v5, 0x10

    if-eqz v1, :cond_1

    iget v6, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_1

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getAllAnnotationContexts(IILjava/util/List;)V

    :cond_1
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v1, :cond_4

    move v6, v3

    :goto_0
    array-length v7, v1

    if-lt v6, v7, :cond_2

    goto :goto_2

    :cond_2
    aget-object v7, v1, v6

    iget v8, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v8, v2

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v7, v5, v6, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getAllAnnotationContexts(IILjava/util/List;)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    if-eqz v0, :cond_7

    array-length v1, v0

    move v5, v3

    :goto_3
    if-lt v5, v1, :cond_5

    goto :goto_4

    :cond_5
    aget-object v6, v0, v5

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v7, v2

    if-eqz v7, :cond_6

    invoke-virtual {v6, v3, v5, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->getAllAnnotationContexts(IILjava/util/List;)V

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_a

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;

    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move v2, v3

    move v5, v2

    :goto_5
    if-lt v3, v0, :cond_8

    invoke-direct {p0, v1, v2, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateRuntimeTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;II)I

    move-result v3

    goto :goto_7

    :cond_8
    aget-object v6, v1, v3

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->visibility:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_9

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    add-int/lit8 v2, v2, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    :goto_7
    return v3
.end method

.method private generateVarargsAttribute()I
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v0, 0x6

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v2, v2

    const/4 v3, 0x6

    if-lt v1, v2, :cond_0

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->VarargsName:[C

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    add-int/lit8 v5, v0, 0x2

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    add-int/lit8 v1, v0, 0x3

    const/4 v4, 0x0

    aput-byte v4, v2, v5

    add-int/lit8 v5, v0, 0x4

    aput-byte v4, v2, v1

    add-int/lit8 v1, v0, 0x5

    aput-byte v4, v2, v5

    add-int/2addr v0, v3

    aput-byte v4, v2, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 v0, 0x1

    return v0
.end method

.method public static getNewInstance(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)Lorg/eclipse/jdt/internal/compiler/ClassFile;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->classFilePool:Lorg/eclipse/jdt/internal/compiler/ClassFilePool;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/ClassFilePool;->acquire(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)Lorg/eclipse/jdt/internal/compiler/ClassFile;

    move-result-object p0

    return-object p0
.end method

.method private getParametersCount([C)I
    .locals 5

    const/16 v0, 0x28

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    const/4 v2, 0x0

    const/16 v3, 0x29

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    :goto_0
    aget-char v1, p1, v0

    if-ne v1, v3, :cond_1

    return v2

    :cond_1
    const/16 v4, 0x46

    if-eq v1, v4, :cond_4

    const/16 v4, 0x4c

    if-eq v1, v4, :cond_3

    const/16 v4, 0x53

    if-eq v1, v4, :cond_4

    const/16 v4, 0x49

    if-eq v1, v4, :cond_4

    const/16 v4, 0x4a

    if-eq v1, v4, :cond_4

    const/16 v4, 0x5a

    if-eq v1, v4, :cond_4

    const/16 v4, 0x5b

    if-eq v1, v4, :cond_2

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid starting type character : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->scanType([CI)I

    move-result v0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x3b

    invoke-static {v1, p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v0

    goto :goto_1

    :cond_4
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getReturnType([C)[C
    .locals 2

    const/16 v0, 0x29

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    array-length v1, p1

    invoke-static {p1, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p1

    return-object p1
.end method

.method private final i2At([BII)I
    .locals 0

    add-int/2addr p2, p3

    add-int/lit8 p3, p2, 0x1

    aget-byte p2, p1, p2

    shl-int/lit8 p2, p2, 0x8

    aget-byte p1, p1, p3

    and-int/lit16 p1, p1, 0xff

    add-int/2addr p2, p1

    return p2
.end method

.method private final i4At([BII)I
    .locals 2

    add-int/2addr p2, p3

    add-int/lit8 p3, p2, 0x1

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x2

    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x10

    add-int/2addr v0, p3

    add-int/lit8 p2, p2, 0x3

    aget-byte p3, p1, v1

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x8

    add-int/2addr v0, p3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v0, p1

    return v0
.end method

.method private initializeDefaultLocals(Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;II)V
    .locals 10

    if-eqz p3, :cond_11

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result p3

    const/4 v0, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_2

    :cond_1
    :goto_0
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->This:[C

    iget-object v5, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {v3, v4, v5, v2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    iput v2, v3, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->record(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->recordInitializationStartPC(I)V

    invoke-virtual {v3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->recordInitializationEndPC(I)V

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    if-eqz p3, :cond_2

    const/4 v4, 0x6

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    iget-object v5, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->putLocal(ILorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    move v3, v1

    :goto_2
    const-string v4, " synthetic"

    const/16 v5, 0x8

    if-eqz p3, :cond_e

    iget-object p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isEnum()Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance p3, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    const-string v1, " name"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangString()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    invoke-direct {p3, v1, v6, v2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    iput v3, p3, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v1, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->record(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual {p3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->recordInitializationStartPC(I)V

    invoke-virtual {p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->recordInitializationEndPC(I)V

    new-instance p3, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    const/16 v1, 0xb

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringConstantPoolName:[C

    invoke-direct {p3, v1, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(I[C)V

    invoke-virtual {p1, v3, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->putLocal(ILorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    add-int/lit8 p3, v3, 0x1

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    const-string v6, " ordinal"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-direct {v1, v6, v7, v2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    iput p3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v6, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->record(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->recordInitializationStartPC(I)V

    invoke-virtual {v1, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->recordInitializationEndPC(I)V

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    invoke-direct {v1, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {p1, p3, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->putLocal(ILorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    add-int/lit8 v3, v3, 0x2

    :cond_3
    iget-object p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result p3

    if-eqz p3, :cond_b

    iget-object p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->syntheticEnclosingInstanceTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p3

    if-eqz p3, :cond_5

    array-length v1, p3

    move v6, v2

    :goto_3
    if-lt v6, v1, :cond_4

    goto :goto_4

    :cond_4
    new-instance v7, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " enclosingType"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    aget-object v9, p3, v6

    invoke-direct {v7, v8, v9, v2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    iput v3, v7, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->record(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual {v7, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->recordInitializationStartPC(I)V

    invoke-virtual {v7, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->recordInitializationEndPC(I)V

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    aget-object v8, p3, v6

    invoke-direct {v7, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {p1, v3, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->putLocal(ILorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    iget-object p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p3, :cond_8

    array-length v1, p3

    move v6, v2

    :goto_5
    if-lt v6, v1, :cond_6

    goto :goto_7

    :cond_6
    aget-object v7, p3, v6

    new-instance v8, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    invoke-direct {v8, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {p1, v3, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->putLocal(ILorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    iget v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v7, v0, :cond_7

    if-eq v7, v5, :cond_7

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v3, v3, 0x2

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_8
    :goto_7
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->syntheticOuterLocalVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    move-result-object p2

    if-eqz p2, :cond_11

    array-length p3, p2

    move v1, v2

    :goto_8
    if-lt v1, p3, :cond_9

    goto/16 :goto_e

    :cond_9
    aget-object v6, p2, v1

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-direct {v7, v8, v6, v2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    iput v3, v7, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->record(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual {v7, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->recordInitializationStartPC(I)V

    invoke-virtual {v7, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->recordInitializationEndPC(I)V

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    invoke-direct {v7, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {p1, v3, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->putLocal(ILorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v6, v0, :cond_a

    if-eq v6, v5, :cond_a

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_a
    add-int/lit8 v3, v3, 0x2

    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_b
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p2, :cond_11

    array-length p3, p2

    :goto_a
    if-lt v2, p3, :cond_c

    goto :goto_e

    :cond_c
    aget-object p4, p2, v2

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    invoke-direct {v1, p4}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {p1, v3, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->putLocal(ILorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    iget p4, p4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq p4, v0, :cond_d

    if-eq p4, v5, :cond_d

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_d
    add-int/lit8 v3, v3, 0x2

    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_e
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p2, :cond_11

    array-length p3, p2

    move v6, v2

    :goto_c
    if-lt v6, p3, :cond_f

    goto :goto_e

    :cond_f
    aget-object v7, p2, v6

    new-instance v8, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-direct {v8, v9, v7, v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    iput v6, v8, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v9, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->record(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual {v8, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->recordInitializationStartPC(I)V

    invoke-virtual {v8, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->recordInitializationEndPC(I)V

    new-instance v8, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    invoke-direct {v8, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {p1, v3, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->putLocal(ILorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    iget v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v7, v0, :cond_10

    if-eq v7, v5, :cond_10

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_10
    add-int/lit8 v3, v3, 0x2

    :goto_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_11
    :goto_e
    return-void
.end method

.method private initializeHeader(Lorg/eclipse/jdt/internal/compiler/ClassFile;I)V
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->header:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->headerOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->headerOffset:I

    const/16 v3, -0x36

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->headerOffset:I

    const/4 v4, -0x2

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x3

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->headerOffset:I

    const/16 v4, -0x46

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, 0x4

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->headerOffset:I

    const/16 v4, -0x42

    aput-byte v4, v0, v2

    iget-wide v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->targetJDK:J

    add-int/lit8 v2, v1, 0x5

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->headerOffset:I

    const/16 v6, 0x8

    shr-long v6, v4, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    add-int/lit8 v3, v1, 0x6

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->headerOffset:I

    long-to-int v6, v4

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    add-int/lit8 v2, v1, 0x7

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->headerOffset:I

    const/16 v6, 0x18

    shr-long v6, v4, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    add-int/lit8 v3, v1, 0x8

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->headerOffset:I

    const/16 v6, 0x10

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPoolOffset:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->headerOffset:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->initialize(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->enclosingClassFile:Lorg/eclipse/jdt/internal/compiler/ClassFile;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte p2, p2

    aput-byte p2, p1, v1

    return-void
.end method

.method private initializeLocals(ZILorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;)V
    .locals 10

    iget-object v0, p3, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    if-lt p1, v1, :cond_7

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->allLocalsCounter:I

    move v5, v3

    :goto_1
    if-lt v5, v4, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aget-object v6, p1, v5

    if-nez v6, :cond_2

    goto :goto_3

    :cond_2
    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    iget-object v8, v6, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move p1, v3

    :goto_2
    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationCount:I

    if-lt p1, v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationPCs:[I

    shl-int/lit8 v1, p1, 0x1

    aget v9, v0, v1

    add-int/2addr v1, v2

    aget v0, v0, v1

    if-ge p2, v9, :cond_4

    goto :goto_4

    :cond_4
    if-ge p2, v0, :cond_6

    iget-object p1, p3, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    aget-object v0, p1, v7

    if-nez v0, :cond_5

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    invoke-direct {v0, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    aput-object v0, p1, v7

    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    aput-object v4, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private jdk16packageInfoAnnotation(JJ)Z
    .locals 4

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->targetJDK:J

    const-wide/32 v2, 0x320000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const-wide v0, 0x80000000000L

    cmp-long p3, p3, v0

    if-nez p3, :cond_0

    const-wide/16 p3, 0x0

    cmp-long v2, p1, p3

    if-eqz v2, :cond_0

    and-long/2addr p1, v0

    cmp-long p1, p1, p3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final resizeContents(I)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v1, v0

    if-ge v1, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    add-int/2addr p1, v1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private retrieveLocal(II)Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->allLocalsCounter:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aget-object v3, v3, v2

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    if-ne p2, v4, :cond_5

    move v4, v1

    :goto_1
    iget v5, v3, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationCount:I

    if-lt v4, v5, :cond_2

    goto :goto_3

    :cond_2
    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationPCs:[I

    shl-int/lit8 v6, v4, 0x1

    aget v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    if-ge p1, v7, :cond_3

    goto :goto_2

    :cond_3
    if-ge p1, v5, :cond_4

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget-object p2, v3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object p1

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private scanType([CI)I
    .locals 2

    aget-char v0, p1, p2

    const/16 v1, 0x46

    if-eq v0, v1, :cond_2

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x53

    if-eq v0, v1, :cond_2

    const/16 v1, 0x49

    if-eq v0, v1, :cond_2

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->scanType([CI)I

    move-result p1

    return p1

    :cond_1
    const/16 v0, 0x3b

    add-int/lit8 p2, p2, 0x1

    invoke-static {v0, p1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result p1

    return p1

    :cond_2
    :pswitch_0
    return p2

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final u1At([BII)I
    .locals 0

    add-int/2addr p2, p3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private final u2At([BII)I
    .locals 0

    add-int/2addr p2, p3

    add-int/lit8 p3, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    aget-byte p1, p1, p3

    and-int/lit16 p1, p1, 0xff

    add-int/2addr p2, p1

    return p2
.end method

.method private final u4At([BII)J
    .locals 5

    add-int/2addr p2, p3

    add-int/lit8 p3, p2, 0x1

    aget-byte v0, p1, p2

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x10

    int-to-long v3, p3

    add-long/2addr v0, v3

    add-int/lit8 p2, p2, 0x3

    aget-byte p3, p1, v2

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x8

    int-to-long v2, p3

    add-long/2addr v0, v2

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    int-to-long p1, p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private writeArgumentName([CII)I
    .locals 5

    const/4 v0, 0x4

    if-nez p3, :cond_0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v1, 0x7

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/16 v1, 0xb

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v3, v3

    if-le v2, v3, :cond_1

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result p1

    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v4, v2, 0x2

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    const p1, 0x9010

    and-int/2addr p1, p2

    add-int/lit8 p2, v2, 0x3

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    add-int/2addr v2, v0

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte p1, p1

    aput-byte p1, v1, p2

    add-int/lit8 p3, p3, 0x1

    return p3
.end method


# virtual methods
.method public addAbstractMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 1

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoHeader(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoAttributes(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result v0

    invoke-virtual {p0, p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeMethodInfo(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;II)V

    return-void
.end method

.method public addAttributes()V
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCountOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCountOffset:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCount:I

    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    int-to-byte v1, v3

    aput-byte v1, v0, v2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->getFileName()[C

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([C)V

    const/16 v3, 0x5c

    const/16 v4, 0x2f

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateSourceAttribute(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isDeprecated()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateDeprecatedAttribute()I

    move-result v3

    add-int/2addr v1, v3

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->genericSignature()[C

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateSignatureAttribute([C)I

    move-result v3

    add-int/2addr v1, v3

    :cond_3
    iget-wide v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->targetJDK:J

    const-wide/32 v5, 0x310000

    cmp-long v3, v3, v5

    if-ltz v3, :cond_4

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateEnclosingMethodAttribute()I

    move-result v3

    add-int/2addr v1, v3

    :cond_4
    iget-wide v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->targetJDK:J

    const-wide/32 v5, 0x300000

    cmp-long v3, v3, v5

    if-ltz v3, :cond_7

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v3, :cond_7

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->isPackageInfo()Z

    move-result v3

    if-eqz v3, :cond_5

    const-wide v5, 0x80000000000L

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAnnotationType()Z

    move-result v3

    if-eqz v3, :cond_6

    const-wide v5, 0x41000000000L

    goto :goto_1

    :cond_6
    const-wide v5, 0x20001000000000L

    :goto_1
    invoke-direct {p0, v4, v5, v6}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateRuntimeAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;J)I

    move-result v3

    add-int/2addr v1, v3

    :cond_7
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isHierarchyInconsistent()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v3, :cond_8

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->missingTypes:Ljava/util/List;

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectMissingTypes(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->missingTypes:Ljava/util/List;

    :cond_8
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_2
    if-lt v5, v4, :cond_9

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateHierarchyInconsistentAttribute()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_3

    :cond_9
    aget-object v6, v3, v5

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->missingTypes:Ljava/util/List;

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectMissingTypes(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->missingTypes:Ljava/util/List;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_a
    :goto_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->bootstrapMethods:Ljava/util/List;

    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->bootstrapMethods:Ljava/util/List;

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateBootstrapMethods(Ljava/util/List;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_b
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->innerClassesBindings:Ljava/util/Map;

    if-nez v3, :cond_c

    goto :goto_4

    :cond_c
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    :goto_4
    if-eqz v2, :cond_d

    new-array v3, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->innerClassesBindings:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/ClassFile$1;

    invoke-direct {v4, p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile$1;-><init>(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    invoke-static {v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-direct {p0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateInnerClassAttribute(I[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_d
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->missingTypes:Ljava/util/List;

    if-eqz v2, :cond_e

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMissingTypesAttribute()V

    add-int/lit8 v1, v1, 0x1

    :cond_e
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateTypeAnnotationAttributeForTypeDeclaration()I

    move-result v2

    add-int/2addr v1, v2

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->targetJDK:J

    const-wide/32 v4, 0x370000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_f

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateNestAttributes()I

    move-result v2

    add-int/2addr v1, v2

    :cond_f
    add-int/lit8 v2, v0, 0x2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v3, v3

    if-lt v2, v3, :cond_10

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_10
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    int-to-byte v0, v1

    aput-byte v0, v2, v3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->poolContent:[B

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->header:[B

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->currentOffset:I

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->headerOffset:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->currentIndex:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPoolOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPoolOffset:I

    shr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    return-void
.end method

.method public addDefaultAbstractMethods()V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getDefaultAbstractMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    return-void

    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoHeader(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoAttributes(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeMethodInfo(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public addFieldInfos()V
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->syntheticFields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fieldCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    array-length v4, v1

    :goto_0
    add-int/2addr v2, v4

    const v4, 0xffff

    if-le v2, v4, :cond_1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->tooManyFields(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v7, v2, 0x8

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v2, v2

    aput-byte v2, v4, v6

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-nez v0, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    array-length v2, v0

    :goto_1
    move v4, v3

    :goto_2
    if-lt v4, v2, :cond_5

    if-eqz v1, :cond_4

    array-length v0, v1

    :goto_3
    if-lt v3, v0, :cond_3

    goto :goto_4

    :cond_3
    aget-object v2, v1, v3

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addFieldInfo(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    return-void

    :cond_5
    aget-object v5, v0, v4

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v5, :cond_6

    invoke-direct {p0, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addFieldInfo(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public addModuleAttributes(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    .locals 4

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v0, p1, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/lit8 v0, v0, 0x1

    const/16 v1, 0x2f

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->getFileName()[C

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    const/16 v2, 0x5c

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateSourceAttribute(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p3, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateModuleAttribute(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;)I

    move-result v2

    add-int/2addr v0, v2

    if-eqz p2, :cond_2

    const-wide/high16 v2, 0x2000000000000000L

    invoke-direct {p0, p2, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateRuntimeAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;J)I

    move-result p2

    add-int/2addr v0, p2

    :cond_2
    iget-object p2, p3, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->mainClassName:[C

    if-eqz p2, :cond_3

    const/16 v2, 0x2e

    invoke-static {p2, v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateModuleMainClassAttribute([C)I

    move-result p2

    add-int/2addr v0, p2

    :cond_3
    iget-object p2, p3, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getPackageNamesForClassFile()[[C

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateModulePackagesAttribute([[C)I

    move-result p2

    add-int/2addr v0, p2

    :cond_4
    add-int/lit8 p2, p1, 0x2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length p3, p3

    if-lt p2, p3, :cond_5

    const/4 p2, 0x2

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_5
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 p3, p1, 0x1

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, p1

    int-to-byte p1, v0

    aput-byte p1, p2, p3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->poolContent:[B

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->header:[B

    iget p3, p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->currentOffset:I

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->headerOffset:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->currentIndex:I

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPoolOffset:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPoolOffset:I

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    int-to-byte p1, p1

    aput-byte p1, p2, v0

    return-void
.end method

.method public addProblemClinit([Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 12

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoHeaderForClinit()V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateCodeAttributeHeader()V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resetForProblemClinit(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    array-length v4, p1

    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v6, 0x19

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    move v6, v3

    move v7, v6

    move v8, v7

    :goto_0
    if-lt v6, v4, :cond_1

    if-le v7, v2, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/util/Messages;->compilation_unresolvedProblems:Ljava/lang/String;

    invoke-virtual {v5, v3, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/util/Messages;->compilation_unresolvedProblem:Ljava/lang/String;

    invoke-virtual {v5, v3, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_1
    aget-object v9, p1, v6

    if-eqz v9, :cond_3

    invoke-interface {v9}, Lorg/eclipse/jdt/core/compiler/IProblem;->isError()Z

    move-result v10

    if-eqz v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\t"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Lorg/eclipse/jdt/core/compiler/IProblem;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, 0x1

    if-nez v8, :cond_2

    invoke-interface {v9}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceLineNumber()I

    move-result v8

    :cond_2
    const/4 v9, 0x0

    aput-object v9, p1, v6

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    const-string p1, ""

    move v8, v3

    :goto_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v4, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateCodeAttributeForProblemMethod(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v8}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeCodeAttributeForClinit(II)V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 v4, 0x2

    add-int/2addr p1, v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v5, v5

    if-lt p1, v5, :cond_5

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    sub-int/2addr v0, v2

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    int-to-byte v1, v2

    aput-byte v1, p1, v0

    return-void
.end method

.method public addProblemConstructor(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move-object/from16 v0, p3

    .line 1
    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->abort(ILorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    .line 3
    :cond_0
    iget v2, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    and-int/lit16 v2, v2, -0xd01

    invoke-virtual {v6, v7, v2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoHeader(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I)V

    .line 4
    iget v8, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    .line 5
    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoAttributes(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v9, v2, 0x1

    .line 6
    iget v4, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    .line 7
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateCodeAttributeHeader()V

    .line 8
    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v2, v1, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->reset(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 9
    array-length v5, v0

    .line 10
    new-instance v10, Ljava/lang/StringBuffer;

    const/16 v11, 0x19

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    move v11, v2

    move v12, v11

    move v13, v12

    :goto_0
    if-lt v11, v5, :cond_2

    if-le v12, v3, :cond_1

    .line 11
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Messages;->compilation_unresolvedProblems:Ljava/lang/String;

    invoke-virtual {v10, v2, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 12
    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Messages;->compilation_unresolvedProblem:Ljava/lang/String;

    invoke-virtual {v10, v2, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    :goto_1
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move v5, v13

    goto :goto_2

    .line 14
    :cond_2
    aget-object v14, v0, v11

    if-eqz v14, :cond_3

    .line 15
    invoke-interface {v14}, Lorg/eclipse/jdt/core/compiler/IProblem;->isError()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 16
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v14}, Lorg/eclipse/jdt/core/compiler/IProblem;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v12, v12, 0x1

    if-nez v13, :cond_3

    .line 17
    invoke-interface {v14}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceLineNumber()I

    move-result v13

    :cond_3
    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x0

    goto :goto_0

    .line 18
    :cond_4
    const-string v0, ""

    const/4 v5, 0x0

    .line 19
    :goto_2
    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateCodeAttributeForProblemMethod(Ljava/lang/String;)V

    .line 20
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    .line 21
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    .line 22
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v0

    .line 23
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    .line 24
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getLineSeparatorPositions()[I

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v4

    move-object v4, v10

    .line 25
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeCodeAttributeForProblemMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I[II)V

    .line 26
    invoke-virtual {v6, v7, v8, v9}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeMethodInfo(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;II)V

    return-void
.end method

.method public addProblemConstructor(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;I)V
    .locals 0

    .line 27
    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    .line 28
    iget p4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCount:I

    add-int/lit8 p4, p4, -0x1

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCount:I

    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addProblemConstructor(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    return-void
.end method

.method public addProblemMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move-object/from16 v0, p3

    .line 1
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    .line 2
    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->abort(ILorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    .line 3
    :cond_0
    iget v2, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    and-int/lit16 v2, v2, -0xd01

    invoke-virtual {v6, v7, v2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoHeader(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I)V

    .line 4
    iget v8, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    .line 5
    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoAttributes(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result v2

    const/4 v4, 0x1

    add-int/lit8 v9, v2, 0x1

    .line 6
    iget v5, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    .line 7
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateCodeAttributeHeader()V

    .line 8
    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v2, v1, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->reset(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 9
    array-length v10, v0

    .line 10
    new-instance v11, Ljava/lang/StringBuffer;

    const/16 v12, 0x19

    invoke-direct {v11, v12}, Ljava/lang/StringBuffer;-><init>(I)V

    move v12, v2

    move v13, v12

    move v14, v13

    :goto_0
    if-lt v12, v10, :cond_2

    if-le v13, v4, :cond_1

    .line 11
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Messages;->compilation_unresolvedProblems:Ljava/lang/String;

    invoke-virtual {v11, v2, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 12
    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Messages;->compilation_unresolvedProblem:Ljava/lang/String;

    invoke-virtual {v11, v2, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    :goto_1
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 14
    :cond_2
    aget-object v15, v0, v12

    if-eqz v15, :cond_4

    .line 15
    invoke-interface {v15}, Lorg/eclipse/jdt/core/compiler/IProblem;->isError()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 16
    invoke-interface {v15}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result v2

    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    if-lt v2, v4, :cond_4

    .line 17
    invoke-interface {v15}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceEnd()I

    move-result v2

    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    if-gt v2, v4, :cond_4

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\t"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v15}, Lorg/eclipse/jdt/core/compiler/IProblem;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v13, v13, 0x1

    if-nez v14, :cond_3

    .line 19
    invoke-interface {v15}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceLineNumber()I

    move-result v14

    .line 20
    :cond_3
    aput-object v3, v0, v12

    :cond_4
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x1

    goto :goto_0

    .line 21
    :cond_5
    const-string v0, ""

    const/4 v14, 0x0

    .line 22
    :goto_2
    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateCodeAttributeForProblemMethod(Ljava/lang/String;)V

    .line 23
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    .line 24
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    .line 25
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v0

    .line 26
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    .line 27
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getLineSeparatorPositions()[I

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v5

    move v5, v14

    .line 28
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeCodeAttributeForProblemMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I[II)V

    .line 29
    invoke-virtual {v6, v7, v8, v9}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeMethodInfo(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;II)V

    return-void
.end method

.method public addProblemMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;I)V
    .locals 0

    .line 30
    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    .line 31
    iget p4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCount:I

    add-int/lit8 p4, p4, -0x1

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCount:I

    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addProblemMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    return-void
.end method

.method public addSpecialMethods()V
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->missingAbstractMethods:[Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMissingAbstractMethods([Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getDefaultAbstractMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_7

    const/4 v4, 0x1

    const/4 v0, 0x0

    move v3, v2

    move v1, v4

    :goto_1
    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->wideMode:Z

    move v1, v2

    :cond_0
    :try_start_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->syntheticMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addSyntheticDeserializeLambda(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    goto :goto_2

    :catch_0
    move-exception v3

    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->RESTART_IN_WIDE_MODE:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    if-ne v5, v6, :cond_1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCount:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCount:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resetInWideMode()V

    move v3, v4

    :goto_2
    if-nez v3, :cond_0

    goto :goto_3

    :cond_1
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/problem/AbortType;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v2, v3, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->problem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortType;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw v0

    :cond_2
    :goto_3
    return-void

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->syntheticMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object v1

    if-nez v1, :cond_4

    move v5, v2

    goto :goto_4

    :cond_4
    array-length v5, v1

    :goto_4
    if-eq v3, v5, :cond_6

    move v6, v3

    move v3, v2

    :goto_5
    if-lt v6, v5, :cond_5

    move v1, v3

    move v3, v5

    goto :goto_1

    :cond_5
    aget-object v7, v1, v6

    iget v8, v7, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->purpose:I

    packed-switch v8, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    move-object v0, v7

    goto :goto_6

    :pswitch_1
    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addSyntheticFactoryMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V

    goto :goto_6

    :pswitch_2
    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addSyntheticArrayClone(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V

    goto :goto_6

    :pswitch_3
    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addSyntheticArrayConstructor(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V

    goto :goto_6

    :pswitch_4
    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->lambda:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3, v7, p0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    move v3, v4

    goto :goto_6

    :pswitch_5
    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addSyntheticEnumInitializationMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V

    goto :goto_6

    :pswitch_6
    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addSyntheticSwitchTable(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V

    goto :goto_6

    :pswitch_7
    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addSyntheticEnumValueOfMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V

    goto :goto_6

    :pswitch_8
    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addSyntheticEnumValuesMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V

    goto :goto_6

    :pswitch_9
    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addSyntheticConstructorAccessMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V

    goto :goto_6

    :pswitch_a
    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addSyntheticMethodAccessMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V

    goto :goto_6

    :pswitch_b
    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addSyntheticFieldWriteAccessMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V

    goto :goto_6

    :pswitch_c
    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addSyntheticFieldReadAccessMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    move v1, v2

    goto/16 :goto_1

    :cond_7
    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoHeader(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoAttributes(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeMethodInfo(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;II)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addSyntheticArrayClone(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V
    .locals 4

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoHeader(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoAttributes(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateCodeAttributeHeader()V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v3, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->init(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateSyntheticBodyForArrayClone(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getLineSeparatorPositions()[I

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeCodeAttributeForSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;I[I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    int-to-byte v0, v1

    aput-byte v0, p1, v2

    return-void
.end method

.method public addSyntheticArrayConstructor(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V
    .locals 4

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoHeader(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoAttributes(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateCodeAttributeHeader()V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v3, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->init(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateSyntheticBodyForArrayConstructor(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getLineSeparatorPositions()[I

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeCodeAttributeForSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;I[I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    int-to-byte v0, v1

    aput-byte v0, p1, v2

    return-void
.end method

.method public addSyntheticConstructorAccessMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V
    .locals 4

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoHeader(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoAttributes(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateCodeAttributeHeader()V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v3, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->init(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateSyntheticBodyForConstructorAccess(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getLineSeparatorPositions()[I

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeCodeAttributeForSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;I[I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    int-to-byte v0, v1

    aput-byte v0, p1, v2

    return-void
.end method

.method public addSyntheticDeserializeLambda(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V
    .locals 5

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoHeader(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoAttributes(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateCodeAttributeHeader()V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v3, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->init(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateSyntheticBodyForDeserializeLambda(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    const v3, 0xffff

    if-le p2, v3, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->sourceStart()I

    move-result v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->sourceEnd()I

    move-result v4

    invoke-virtual {p2, p1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->bytecodeExceeds64KLimit(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;II)V

    :cond_0
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getLineSeparatorPositions()[I

    move-result-object p2

    invoke-virtual {p0, p1, v2, p2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeCodeAttributeForSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;I[I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    int-to-byte v0, v1

    aput-byte v0, p1, p2

    return-void
.end method

.method public addSyntheticEnumInitializationMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V
    .locals 4

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoHeader(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoAttributes(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateCodeAttributeHeader()V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v3, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->init(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateSyntheticBodyForEnumInitializationMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getLineSeparatorPositions()[I

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeCodeAttributeForSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;I[I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    int-to-byte v0, v1

    aput-byte v0, p1, v2

    return-void
.end method

.method public addSyntheticEnumValueOfMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V
    .locals 4

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoHeader(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoAttributes(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateCodeAttributeHeader()V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v3, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->init(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateSyntheticBodyForEnumValueOf(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getLineSeparatorPositions()[I

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeCodeAttributeForSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;I[I)V

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodParameters(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result p1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    int-to-byte v0, v1

    aput-byte v0, p1, v2

    return-void
.end method

.method public addSyntheticEnumValuesMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V
    .locals 4

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoHeader(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoAttributes(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateCodeAttributeHeader()V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v3, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->init(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateSyntheticBodyForEnumValues(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getLineSeparatorPositions()[I

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeCodeAttributeForSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;I[I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    int-to-byte v0, v1

    aput-byte v0, p1, v2

    return-void
.end method

.method public addSyntheticFactoryMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V
    .locals 4

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoHeader(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoAttributes(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateCodeAttributeHeader()V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v3, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->init(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateSyntheticBodyForFactoryMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getLineSeparatorPositions()[I

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeCodeAttributeForSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;I[I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    int-to-byte v0, v1

    aput-byte v0, p1, v2

    return-void
.end method

.method public addSyntheticFieldReadAccessMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V
    .locals 4

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoHeader(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoAttributes(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateCodeAttributeHeader()V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v3, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->init(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateSyntheticBodyForFieldReadAccess(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getLineSeparatorPositions()[I

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeCodeAttributeForSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;I[I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    int-to-byte v0, v1

    aput-byte v0, p1, v2

    return-void
.end method

.method public addSyntheticFieldWriteAccessMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V
    .locals 4

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoHeader(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoAttributes(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateCodeAttributeHeader()V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v3, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->init(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateSyntheticBodyForFieldWriteAccess(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getLineSeparatorPositions()[I

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeCodeAttributeForSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;I[I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    int-to-byte v0, v1

    aput-byte v0, p1, v2

    return-void
.end method

.method public addSyntheticMethodAccessMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V
    .locals 4

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoHeader(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoAttributes(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateCodeAttributeHeader()V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v3, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->init(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateSyntheticBodyForMethodAccess(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getLineSeparatorPositions()[I

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeCodeAttributeForSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;I[I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    int-to-byte v0, v1

    aput-byte v0, p1, v2

    return-void
.end method

.method public addSyntheticSwitchTable(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V
    .locals 6

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoHeader(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoAttributes(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateCodeAttributeHeader()V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v4, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->init(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v4, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateSyntheticBodyForSwitchTable(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    const v5, 0xffff

    if-le v4, v5, :cond_0

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->switchStatement:Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;

    if-eqz v4, :cond_0

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->bytecodeExceeds64KLimit(Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;)V

    :cond_0
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getLineSeparatorPositions()[I

    move-result-object v4

    invoke-virtual {p0, v3, p1, v2, v4}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeCodeAttributeForSyntheticMethod(ZLorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;I[I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    int-to-byte v0, v1

    aput-byte v0, p1, v2

    return-void
.end method

.method public completeCodeAttribute(I)V
    .locals 18

    move-object/from16 v6, p0

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iput-object v1, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    const v2, 0xffff

    if-le v7, v2, :cond_1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v2, :cond_0

    iget-object v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->bytecodeExceeds64KLimit(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lambdaExpression:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lambdaExpression:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->bytecodeExceeds64KLimit(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)V

    :cond_1
    :goto_0
    add-int/lit8 v0, v1, 0x14

    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v2, v2

    if-lt v0, v2, :cond_2

    const/16 v0, 0x14

    invoke-direct {v6, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_2
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v8, p1, 0x6

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v3, v8

    add-int/lit8 v4, p1, 0x7

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    add-int/lit8 v2, p1, 0x8

    shr-int/lit8 v4, v9, 0x8

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, p1, 0x9

    int-to-byte v4, v9

    aput-byte v4, v3, v2

    add-int/lit8 v2, p1, 0xa

    shr-int/lit8 v4, v7, 0x18

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, p1, 0xb

    shr-int/lit8 v4, v7, 0x10

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, p1, 0xc

    shr-int/lit8 v4, v7, 0x8

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, p1, 0xd

    int-to-byte v4, v7

    aput-byte v4, v3, v2

    iget v2, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exceptionLabelsCounter:I

    move v5, v3

    move v10, v5

    :goto_2
    const/4 v11, 0x2

    if-lt v5, v0, :cond_16

    mul-int/lit8 v0, v10, 0x8

    add-int/2addr v0, v11

    add-int v5, v0, v1

    iget-object v12, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v12, v12

    if-lt v5, v12, :cond_4

    invoke-direct {v6, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_4
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v5, v1, 0x1

    shr-int/lit8 v12, v10, 0x8

    int-to-byte v12, v12

    aput-byte v12, v0, v1

    add-int/2addr v1, v11

    int-to-byte v10, v10

    aput-byte v10, v0, v5

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget v12, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exceptionLabelsCounter:I

    move v10, v1

    move v0, v3

    :goto_3
    if-lt v0, v12, :cond_e

    add-int/lit8 v0, v10, 0x2

    add-int/lit8 v1, v10, 0x4

    iget-object v4, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v4, v4

    if-lt v1, v4, :cond_5

    invoke-direct {v6, v11}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_5
    iput v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/2addr v0, v11

    if-eqz v0, :cond_6

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateLineNumberAttribute()I

    move-result v0

    goto :goto_4

    :cond_6
    move v0, v3

    :goto_4
    iget v1, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isStatic()Z

    move-result v1

    goto :goto_5

    :cond_7
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lambdaExpression:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v1

    :goto_5
    invoke-direct {v6, v7, v1, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateLocalVariableTableAttribute(IZZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    move v11, v0

    if-eqz v2, :cond_a

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v1, :cond_9

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :goto_6
    move-object v1, v0

    goto :goto_7

    :cond_9
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lambdaExpression:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_6

    :goto_7
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v2, v7

    move/from16 v3, p1

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateStackMapTableAttribute(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;IIIZ)I

    move-result v0

    add-int/2addr v11, v0

    :cond_a
    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_c

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v1, :cond_b

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :goto_8
    move-object v1, v0

    goto :goto_9

    :cond_b
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lambdaExpression:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_8

    :goto_9
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v2, v7

    move/from16 v3, p1

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateStackMapAttribute(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;IIIZ)I

    move-result v0

    add-int/2addr v11, v0

    :cond_c
    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateTypeAnnotationsOnCodeAttribute()I

    move-result v0

    add-int/2addr v11, v0

    :cond_d
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v1, v10, 0x1

    shr-int/lit8 v2, v11, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v10

    int-to-byte v2, v11

    aput-byte v2, v0, v1

    iget v1, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    sub-int/2addr v1, v8

    add-int/lit8 v2, p1, 0x2

    shr-int/lit8 v3, v1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, p1, 0x3

    shr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, p1, 0x4

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, p1, 0x5

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    return-void

    :cond_e
    aget-object v1, v4, v0

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->getCount()I

    move-result v5

    and-int/lit8 v13, v5, 0x1

    if-eqz v13, :cond_10

    iget-object v13, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v14, v13, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v14, :cond_f

    iget-object v13, v14, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v13

    sget-object v14, Lorg/eclipse/jdt/internal/compiler/util/Messages;->abort_invalidExceptionAttribute:Ljava/lang/String;

    new-instance v15, Ljava/lang/String;

    iget-object v11, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v11, v11, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v11, v11, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    invoke-direct {v15, v11}, Ljava/lang/String;-><init>([C)V

    invoke-static {v14, v15}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iget-object v14, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v14, v14, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {v13, v11, v14}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->abortDueToInternalError(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_a

    :cond_f
    iget-object v11, v13, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lambdaExpression:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v11, v11, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v11

    sget-object v13, Lorg/eclipse/jdt/internal/compiler/util/Messages;->abort_invalidExceptionAttribute:Ljava/lang/String;

    new-instance v14, Ljava/lang/String;

    iget-object v15, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v15, v15, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lambdaExpression:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v15, v15, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v15, v15, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([C)V

    invoke-static {v13, v14}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v14, v14, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lambdaExpression:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    invoke-virtual {v11, v13, v14}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->abortDueToInternalError(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_10
    :goto_a
    move v11, v3

    :goto_b
    if-lt v11, v5, :cond_12

    :cond_11
    move-object/from16 v17, v4

    goto/16 :goto_d

    :cond_12
    iget-object v13, v1, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->ranges:[I

    add-int/lit8 v14, v11, 0x1

    aget v15, v13, v11

    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v16, v10, 0x1

    move-object/from16 v17, v4

    shr-int/lit8 v4, v15, 0x8

    int-to-byte v4, v4

    aput-byte v4, v3, v10

    add-int/lit8 v4, v10, 0x2

    int-to-byte v15, v15

    aput-byte v15, v3, v16

    add-int/lit8 v11, v11, 0x2

    aget v13, v13, v14

    add-int/lit8 v14, v10, 0x3

    shr-int/lit8 v15, v13, 0x8

    int-to-byte v15, v15

    aput-byte v15, v3, v4

    add-int/lit8 v4, v10, 0x4

    int-to-byte v13, v13

    aput-byte v13, v3, v14

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    if-eqz v2, :cond_13

    iget-object v13, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    check-cast v13, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;

    invoke-virtual {v13, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->addFramePosition(I)V

    :cond_13
    iget-object v13, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v14, v10, 0x5

    shr-int/lit8 v15, v3, 0x8

    int-to-byte v15, v15

    aput-byte v15, v13, v4

    add-int/lit8 v4, v10, 0x6

    int-to-byte v3, v3

    aput-byte v3, v13, v14

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->exceptionType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v3, :cond_14

    add-int/lit8 v3, v10, 0x7

    const/4 v14, 0x0

    aput-byte v14, v13, v4

    add-int/lit8 v10, v10, 0x8

    aput-byte v14, v13, v3

    move v3, v14

    move-object/from16 v4, v17

    goto :goto_b

    :cond_14
    const/4 v14, 0x0

    sget-object v13, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-ne v3, v13, :cond_15

    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v13, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangClassNotFoundExceptionConstantPoolName:[C

    invoke-virtual {v3, v13}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result v3

    goto :goto_c

    :cond_15
    iget-object v13, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v13, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v3

    :goto_c
    iget-object v13, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v15, v10, 0x7

    shr-int/lit8 v14, v3, 0x8

    int-to-byte v14, v14

    aput-byte v14, v13, v4

    add-int/lit8 v10, v10, 0x8

    int-to-byte v3, v3

    aput-byte v3, v13, v15

    move-object/from16 v4, v17

    const/4 v3, 0x0

    goto :goto_b

    :goto_d
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v4, v17

    const/4 v3, 0x0

    const/4 v11, 0x2

    goto/16 :goto_3

    :cond_16
    move-object/from16 v17, v4

    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->getCount()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    add-int/2addr v10, v3

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v4, v17

    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method public completeCodeAttributeForClinit(I)V
    .locals 18

    move-object/from16 v6, p0

    .line 1
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iput-object v1, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    .line 2
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    .line 3
    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    const v2, 0xffff

    if-le v7, v2, :cond_0

    .line 4
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    .line 5
    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->bytecodeExceeds64KLimit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    :cond_0
    add-int/lit8 v0, v1, 0x14

    .line 7
    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v2, v2

    if-lt v0, v2, :cond_1

    const/16 v0, 0x14

    .line 8
    invoke-direct {v6, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    .line 9
    :cond_1
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    .line 10
    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v8, p1, 0x6

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v3, v8

    add-int/lit8 v4, p1, 0x7

    int-to-byte v2, v2

    .line 11
    aput-byte v2, v3, v4

    .line 12
    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    add-int/lit8 v2, p1, 0x8

    shr-int/lit8 v4, v9, 0x8

    int-to-byte v4, v4

    .line 13
    aput-byte v4, v3, v2

    add-int/lit8 v2, p1, 0x9

    int-to-byte v4, v9

    .line 14
    aput-byte v4, v3, v2

    add-int/lit8 v2, p1, 0xa

    shr-int/lit8 v4, v7, 0x18

    int-to-byte v4, v4

    .line 15
    aput-byte v4, v3, v2

    add-int/lit8 v2, p1, 0xb

    shr-int/lit8 v4, v7, 0x10

    int-to-byte v4, v4

    .line 16
    aput-byte v4, v3, v2

    add-int/lit8 v2, p1, 0xc

    shr-int/lit8 v4, v7, 0x8

    int-to-byte v4, v4

    .line 17
    aput-byte v4, v3, v2

    add-int/lit8 v2, p1, 0xd

    int-to-byte v4, v7

    .line 18
    aput-byte v4, v3, v2

    .line 19
    iget v2, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    .line 20
    :goto_0
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    .line 21
    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exceptionLabelsCounter:I

    move v10, v3

    move v11, v10

    :goto_1
    const/4 v12, 0x2

    if-lt v10, v0, :cond_12

    mul-int/lit8 v0, v11, 0x8

    add-int/2addr v0, v12

    add-int v10, v0, v1

    .line 22
    iget-object v13, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v13, v13

    if-lt v10, v13, :cond_3

    .line 23
    invoke-direct {v6, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    .line 24
    :cond_3
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v10, v1, 0x1

    shr-int/lit8 v13, v11, 0x8

    int-to-byte v13, v13

    aput-byte v13, v0, v1

    add-int/2addr v1, v12

    int-to-byte v11, v11

    .line 25
    aput-byte v11, v0, v10

    .line 26
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget v13, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exceptionLabelsCounter:I

    move v10, v1

    move v0, v3

    :goto_2
    if-lt v0, v13, :cond_b

    add-int/lit8 v11, v10, 0x2

    add-int/lit8 v0, v10, 0x4

    .line 27
    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v1, v1

    if-lt v0, v1, :cond_4

    .line 28
    invoke-direct {v6, v12}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    .line 29
    :cond_4
    iput v11, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    .line 30
    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/2addr v0, v12

    if-eqz v0, :cond_5

    .line 31
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateLineNumberAttribute()I

    move-result v0

    goto :goto_3

    :cond_5
    move v0, v3

    .line 32
    :goto_3
    iget v1, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    .line 33
    invoke-direct {v6, v7, v4, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateLocalVariableTableAttribute(IZZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    move v13, v0

    .line 34
    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v2, v7

    move/from16 v3, p1

    move v4, v9

    .line 35
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateStackMapTableAttribute(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;IIIZ)I

    move-result v0

    add-int/2addr v13, v0

    .line 36
    :cond_7
    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v2, v7

    move/from16 v3, p1

    move v4, v9

    .line 37
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateStackMapAttribute(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;IIIZ)I

    move-result v0

    add-int/2addr v13, v0

    .line 38
    :cond_8
    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_9

    .line 39
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateTypeAnnotationsOnCodeAttribute()I

    move-result v0

    add-int/2addr v13, v0

    .line 40
    :cond_9
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v0, v0

    if-lt v11, v0, :cond_a

    .line 41
    invoke-direct {v6, v12}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    .line 42
    :cond_a
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v1, v10, 0x1

    shr-int/lit8 v2, v13, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v10

    int-to-byte v2, v13

    .line 43
    aput-byte v2, v0, v1

    .line 44
    iget v1, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    sub-int/2addr v1, v8

    add-int/lit8 v2, p1, 0x2

    shr-int/lit8 v3, v1, 0x18

    int-to-byte v3, v3

    .line 45
    aput-byte v3, v0, v2

    add-int/lit8 v2, p1, 0x3

    shr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    .line 46
    aput-byte v3, v0, v2

    add-int/lit8 v2, p1, 0x4

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    .line 47
    aput-byte v3, v0, v2

    add-int/lit8 v2, p1, 0x5

    int-to-byte v1, v1

    .line 48
    aput-byte v1, v0, v2

    return-void

    .line 49
    :cond_b
    aget-object v1, v5, v0

    if-eqz v1, :cond_d

    .line 50
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->getCount()I

    move-result v11

    and-int/lit8 v14, v11, 0x1

    if-eqz v14, :cond_c

    .line 51
    iget-object v14, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v14, v14, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v14, v14, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v14

    .line 52
    sget-object v15, Lorg/eclipse/jdt/internal/compiler/util/Messages;->abort_invalidExceptionAttribute:Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    iget-object v12, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v12, v12, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v12, v12, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    invoke-direct {v4, v12}, Ljava/lang/String;-><init>([C)V

    invoke-static {v15, v4}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 53
    iget-object v12, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v12, v12, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    .line 54
    invoke-virtual {v14, v4, v12}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->abortDueToInternalError(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_c
    move v4, v3

    :goto_4
    if-lt v4, v11, :cond_e

    :cond_d
    move-object/from16 v17, v5

    goto/16 :goto_6

    .line 55
    :cond_e
    iget-object v12, v1, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->ranges:[I

    add-int/lit8 v14, v4, 0x1

    aget v15, v12, v4

    .line 56
    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v16, v10, 0x1

    move-object/from16 v17, v5

    shr-int/lit8 v5, v15, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v10

    add-int/lit8 v5, v10, 0x2

    int-to-byte v15, v15

    .line 57
    aput-byte v15, v3, v16

    add-int/lit8 v4, v4, 0x2

    .line 58
    aget v12, v12, v14

    add-int/lit8 v14, v10, 0x3

    shr-int/lit8 v15, v12, 0x8

    int-to-byte v15, v15

    .line 59
    aput-byte v15, v3, v5

    add-int/lit8 v5, v10, 0x4

    int-to-byte v12, v12

    .line 60
    aput-byte v12, v3, v14

    .line 61
    iget v12, v1, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    add-int/lit8 v14, v10, 0x5

    shr-int/lit8 v15, v12, 0x8

    int-to-byte v15, v15

    .line 62
    aput-byte v15, v3, v5

    add-int/lit8 v5, v10, 0x6

    int-to-byte v15, v12

    .line 63
    aput-byte v15, v3, v14

    if-eqz v2, :cond_f

    .line 64
    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;

    .line 65
    invoke-virtual {v3, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->addFramePosition(I)V

    .line 66
    :cond_f
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->exceptionType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v3, :cond_10

    .line 67
    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v12, v10, 0x7

    const/4 v14, 0x0

    aput-byte v14, v3, v5

    add-int/lit8 v10, v10, 0x8

    .line 68
    aput-byte v14, v3, v12

    move v3, v14

    move-object/from16 v5, v17

    goto :goto_4

    :cond_10
    const/4 v14, 0x0

    .line 69
    sget-object v12, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-ne v3, v12, :cond_11

    .line 70
    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangClassNotFoundExceptionConstantPoolName:[C

    invoke-virtual {v3, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result v3

    goto :goto_5

    .line 71
    :cond_11
    iget-object v12, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v12, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v3

    .line 72
    :goto_5
    iget-object v12, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v15, v10, 0x7

    shr-int/lit8 v14, v3, 0x8

    int-to-byte v14, v14

    aput-byte v14, v12, v5

    add-int/lit8 v10, v10, 0x8

    int-to-byte v3, v3

    .line 73
    aput-byte v3, v12, v15

    move-object/from16 v5, v17

    const/4 v3, 0x0

    goto :goto_4

    :goto_6
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v5, v17

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v12, 0x2

    goto/16 :goto_2

    :cond_12
    move-object/from16 v17, v5

    .line 74
    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->getCount()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    add-int/2addr v11, v3

    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_1
.end method

.method public completeCodeAttributeForClinit(II)V
    .locals 16

    move-object/from16 v6, p0

    .line 75
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iput-object v1, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    .line 76
    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    .line 77
    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    const v1, 0xffff

    if-le v8, v1, :cond_0

    .line 78
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    .line 79
    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->bytecodeExceeds64KLimit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    :cond_0
    add-int/lit8 v0, v7, 0x14

    .line 81
    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    const/16 v0, 0x14

    .line 82
    invoke-direct {v6, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    .line 83
    :cond_1
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    .line 84
    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v9, p1, 0x6

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v9

    add-int/lit8 v3, p1, 0x7

    int-to-byte v1, v1

    .line 85
    aput-byte v1, v2, v3

    .line 86
    iget v10, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    add-int/lit8 v0, p1, 0x8

    shr-int/lit8 v1, v10, 0x8

    int-to-byte v1, v1

    .line 87
    aput-byte v1, v2, v0

    add-int/lit8 v0, p1, 0x9

    int-to-byte v1, v10

    .line 88
    aput-byte v1, v2, v0

    add-int/lit8 v0, p1, 0xa

    shr-int/lit8 v1, v8, 0x18

    int-to-byte v1, v1

    .line 89
    aput-byte v1, v2, v0

    add-int/lit8 v0, p1, 0xb

    shr-int/lit8 v1, v8, 0x10

    int-to-byte v1, v1

    .line 90
    aput-byte v1, v2, v0

    add-int/lit8 v0, p1, 0xc

    shr-int/lit8 v1, v8, 0x8

    int-to-byte v1, v1

    .line 91
    aput-byte v1, v2, v0

    add-int/lit8 v0, p1, 0xd

    int-to-byte v1, v8

    .line 92
    aput-byte v1, v2, v0

    add-int/lit8 v0, v7, 0x1

    const/4 v1, 0x0

    .line 93
    aput-byte v1, v2, v7

    add-int/lit8 v11, v7, 0x2

    .line 94
    aput-byte v1, v2, v0

    add-int/lit8 v12, v7, 0x4

    add-int/lit8 v0, v7, 0x6

    .line 95
    array-length v2, v2

    const/4 v13, 0x2

    if-lt v0, v2, :cond_2

    .line 96
    invoke-direct {v6, v13}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    .line 97
    :cond_2
    iput v12, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    .line 98
    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/2addr v0, v13

    if-eqz v0, :cond_3

    move/from16 v0, p2

    .line 99
    invoke-direct {v6, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateLineNumberAttribute(I)I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 100
    :goto_0
    iget v2, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    .line 101
    iget v3, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/lit8 v3, v3, 0x4

    const/16 v4, 0x8

    if-eqz v3, :cond_5

    .line 102
    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->LocalVariableTableName:[C

    invoke-virtual {v3, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v3

    add-int/lit8 v5, v2, 0x8

    .line 103
    iget-object v14, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v14, v14

    if-lt v5, v14, :cond_4

    .line 104
    invoke-direct {v6, v4}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    .line 105
    :cond_4
    iget-object v5, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v14, v2, 0x1

    shr-int/lit8 v15, v3, 0x8

    int-to-byte v15, v15

    aput-byte v15, v5, v2

    add-int/lit8 v15, v2, 0x2

    int-to-byte v3, v3

    .line 106
    aput-byte v3, v5, v14

    add-int/lit8 v3, v2, 0x3

    .line 107
    aput-byte v1, v5, v15

    add-int/lit8 v14, v2, 0x4

    .line 108
    aput-byte v1, v5, v3

    add-int/lit8 v3, v2, 0x5

    .line 109
    aput-byte v1, v5, v14

    add-int/lit8 v14, v2, 0x6

    .line 110
    aput-byte v13, v5, v3

    add-int/lit8 v3, v2, 0x7

    .line 111
    aput-byte v1, v5, v14

    add-int/lit8 v2, v2, 0x8

    .line 112
    aput-byte v1, v5, v3

    add-int/lit8 v0, v0, 0x1

    :cond_5
    move v14, v0

    .line 113
    iput v2, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    .line 114
    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v2, v8

    move/from16 v3, p1

    move v4, v10

    .line 115
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateStackMapTableAttribute(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;IIIZ)I

    move-result v0

    add-int/2addr v14, v0

    .line 116
    :cond_6
    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v2, v8

    move/from16 v3, p1

    move v4, v10

    .line 117
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateStackMapAttribute(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;IIIZ)I

    move-result v0

    add-int/2addr v14, v0

    .line 118
    :cond_7
    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    .line 119
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateTypeAnnotationsOnCodeAttribute()I

    move-result v0

    add-int/2addr v14, v0

    .line 120
    :cond_8
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v0, v0

    if-lt v12, v0, :cond_9

    .line 121
    invoke-direct {v6, v13}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    .line 122
    :cond_9
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v7, v7, 0x3

    shr-int/lit8 v1, v14, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v11

    int-to-byte v1, v14

    .line 123
    aput-byte v1, v0, v7

    .line 124
    iget v1, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    sub-int/2addr v1, v9

    add-int/lit8 v2, p1, 0x2

    shr-int/lit8 v3, v1, 0x18

    int-to-byte v3, v3

    .line 125
    aput-byte v3, v0, v2

    add-int/lit8 v2, p1, 0x3

    shr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    .line 126
    aput-byte v3, v0, v2

    add-int/lit8 v2, p1, 0x4

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    .line 127
    aput-byte v3, v0, v2

    add-int/lit8 v2, p1, 0x5

    int-to-byte v1, v1

    .line 128
    aput-byte v1, v0, v2

    return-void
.end method

.method public completeCodeAttributeForMissingAbstractProblemMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I[II)V
    .locals 15

    move-object v6, p0

    move-object/from16 v0, p3

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iput-object v2, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v7, v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    add-int/lit8 v8, p2, 0x6

    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v8

    add-int/lit8 v4, p2, 0x7

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    iget v9, v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    add-int/lit8 v3, p2, 0x8

    shr-int/lit8 v4, v9, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, p2, 0x9

    int-to-byte v4, v9

    aput-byte v4, v2, v3

    iget v10, v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v1, p2, 0xa

    shr-int/lit8 v3, v10, 0x18

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, p2, 0xb

    shr-int/lit8 v3, v10, 0x10

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, p2, 0xc

    shr-int/lit8 v3, v10, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, p2, 0xd

    int-to-byte v3, v10

    aput-byte v3, v2, v1

    add-int/lit8 v1, v7, 0x32

    array-length v2, v2

    if-lt v1, v2, :cond_0

    const/16 v1, 0x32

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_0
    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v2, v7, 0x1

    const/4 v3, 0x0

    aput-byte v3, v1, v7

    add-int/lit8 v11, v7, 0x2

    aput-byte v3, v1, v2

    add-int/lit8 v12, v7, 0x4

    add-int/lit8 v2, v7, 0x6

    array-length v1, v1

    const/4 v13, 0x2

    if-lt v2, v1, :cond_1

    invoke-direct {p0, v13}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_1
    iput v12, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iget v1, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/2addr v1, v13

    if-eqz v1, :cond_3

    if-nez p4, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceStart()I

    move-result v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v0, v3, v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v0

    goto :goto_0

    :cond_2
    move/from16 v0, p4

    :goto_0
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateLineNumberAttribute(I)I

    move-result v3

    :cond_3
    move v14, v3

    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move/from16 v3, p2

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateStackMapTableAttribute(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;IIIZ)I

    move-result v0

    add-int/2addr v14, v0

    :cond_4
    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move/from16 v3, p2

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateStackMapAttribute(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;IIIZ)I

    move-result v0

    add-int/2addr v14, v0

    :cond_5
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v0, v0

    if-lt v12, v0, :cond_6

    invoke-direct {p0, v13}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_6
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v7, v7, 0x3

    shr-int/lit8 v1, v14, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v11

    int-to-byte v1, v14

    aput-byte v1, v0, v7

    iget v1, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    sub-int/2addr v1, v8

    add-int/lit8 v2, p2, 0x2

    shr-int/lit8 v3, v1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, p2, 0x3

    shr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, p2, 0x4

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, p2, 0x5

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    return-void
.end method

.method public completeCodeAttributeForProblemMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I[II)V
    .locals 15

    move-object v6, p0

    move-object/from16 v0, p4

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iput-object v2, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v7, v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    add-int/lit8 v8, p3, 0x6

    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v8

    add-int/lit8 v4, p3, 0x7

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    iget v9, v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    add-int/lit8 v3, p3, 0x8

    shr-int/lit8 v4, v9, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, p3, 0x9

    int-to-byte v4, v9

    aput-byte v4, v2, v3

    iget v10, v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v1, p3, 0xa

    shr-int/lit8 v3, v10, 0x18

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, p3, 0xb

    shr-int/lit8 v3, v10, 0x10

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, p3, 0xc

    shr-int/lit8 v3, v10, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, p3, 0xd

    int-to-byte v3, v10

    aput-byte v3, v2, v1

    add-int/lit8 v1, v7, 0x32

    array-length v2, v2

    if-lt v1, v2, :cond_0

    const/16 v1, 0x32

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_0
    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v2, v7, 0x1

    const/4 v3, 0x0

    aput-byte v3, v1, v7

    add-int/lit8 v11, v7, 0x2

    aput-byte v3, v1, v2

    add-int/lit8 v12, v7, 0x4

    add-int/lit8 v2, v7, 0x6

    array-length v1, v1

    const/4 v13, 0x2

    if-lt v2, v1, :cond_1

    invoke-direct {p0, v13}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_1
    iput v12, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iget v1, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/2addr v1, v13

    if-eqz v1, :cond_3

    if-nez p5, :cond_2

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceStart()I

    move-result v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v0, v3, v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v0

    goto :goto_0

    :cond_2
    move/from16 v0, p5

    :goto_0
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateLineNumberAttribute(I)I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    iget v1, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isStatic()Z

    move-result v1

    invoke-direct {p0, v10, v1, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateLocalVariableTableAttribute(IZZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    move v14, v0

    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p2

    move v2, v10

    move/from16 v3, p3

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateStackMapTableAttribute(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;IIIZ)I

    move-result v0

    add-int/2addr v14, v0

    :cond_5
    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p2

    move v2, v10

    move/from16 v3, p3

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateStackMapAttribute(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;IIIZ)I

    move-result v0

    add-int/2addr v14, v0

    :cond_6
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v0, v0

    if-lt v12, v0, :cond_7

    invoke-direct {p0, v13}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_7
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v7, v7, 0x3

    shr-int/lit8 v1, v14, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v11

    int-to-byte v1, v14

    aput-byte v1, v0, v7

    iget v1, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    sub-int/2addr v1, v8

    add-int/lit8 v2, p3, 0x2

    shr-int/lit8 v3, v1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, p3, 0x3

    shr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, p3, 0x4

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, p3, 0x5

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    return-void
.end method

.method public completeCodeAttributeForSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;I[I)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeCodeAttributeForSyntheticMethod(ZLorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;I[I)V

    return-void
.end method

.method public completeCodeAttributeForSyntheticMethod(ZLorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;I[I)V
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v0, p4

    .line 1
    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iput-object v2, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    .line 2
    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    .line 3
    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    add-int/lit8 v8, p3, 0x6

    shr-int/lit8 v5, v4, 0x8

    int-to-byte v5, v5

    .line 4
    aput-byte v5, v2, v8

    add-int/lit8 v5, p3, 0x7

    int-to-byte v4, v4

    .line 5
    aput-byte v4, v2, v5

    .line 6
    iget v9, v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    add-int/lit8 v4, p3, 0x8

    shr-int/lit8 v5, v9, 0x8

    int-to-byte v5, v5

    .line 7
    aput-byte v5, v2, v4

    add-int/lit8 v4, p3, 0x9

    int-to-byte v5, v9

    .line 8
    aput-byte v5, v2, v4

    .line 9
    iget v10, v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v1, p3, 0xa

    shr-int/lit8 v4, v10, 0x18

    int-to-byte v4, v4

    .line 10
    aput-byte v4, v2, v1

    add-int/lit8 v1, p3, 0xb

    shr-int/lit8 v4, v10, 0x10

    int-to-byte v4, v4

    .line 11
    aput-byte v4, v2, v1

    add-int/lit8 v1, p3, 0xc

    shr-int/lit8 v4, v10, 0x8

    int-to-byte v4, v4

    .line 12
    aput-byte v4, v2, v1

    add-int/lit8 v1, p3, 0xd

    int-to-byte v4, v10

    .line 13
    aput-byte v4, v2, v1

    add-int/lit8 v1, v3, 0x28

    .line 14
    array-length v2, v2

    if-lt v1, v2, :cond_0

    const/16 v1, 0x28

    .line 15
    invoke-direct {v6, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    .line 16
    :cond_0
    iget v1, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v11, 0x2

    if-eqz p1, :cond_c

    .line 17
    iget-object v5, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v12, v5, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    .line 18
    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exceptionLabelsCounter:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-lt v13, v5, :cond_b

    mul-int/lit8 v5, v14, 0x8

    add-int/2addr v5, v11

    add-int v13, v5, v3

    .line 19
    iget-object v15, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v15, v15

    if-lt v13, v15, :cond_2

    .line 20
    invoke-direct {v6, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    .line 21
    :cond_2
    iget-object v5, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v13, v3, 0x1

    shr-int/lit8 v15, v14, 0x8

    int-to-byte v15, v15

    aput-byte v15, v5, v3

    add-int/2addr v3, v11

    int-to-byte v14, v14

    .line 22
    aput-byte v14, v5, v13

    .line 23
    iget-object v5, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget v15, v5, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exceptionLabelsCounter:I

    const/4 v5, 0x0

    :goto_2
    if-lt v5, v15, :cond_3

    move v4, v11

    :goto_3
    move v11, v3

    goto/16 :goto_a

    .line 24
    :cond_3
    aget-object v13, v12, v5

    if-eqz v13, :cond_a

    .line 25
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->getCount()I

    move-result v14

    and-int/lit8 v16, v14, 0x1

    if-eqz v16, :cond_4

    .line 26
    iget-object v4, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    .line 27
    sget-object v11, Lorg/eclipse/jdt/internal/compiler/util/Messages;->abort_invalidExceptionAttribute:Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    move/from16 p1, v3

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    .line 28
    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    .line 29
    invoke-static {v11, v2, v3}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-virtual {v4, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->abortDueToInternalError(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    move/from16 p1, v3

    :goto_4
    move/from16 v3, p1

    const/4 v2, 0x0

    :goto_5
    if-lt v2, v14, :cond_5

    :goto_6
    move-object/from16 v17, v12

    move/from16 v20, v15

    goto/16 :goto_9

    .line 31
    :cond_5
    iget-object v4, v13, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->ranges:[I

    add-int/lit8 v11, v2, 0x1

    move-object/from16 v17, v12

    aget v12, v4, v2

    move/from16 v18, v14

    .line 32
    iget-object v14, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v19, v3, 0x1

    move/from16 v20, v15

    shr-int/lit8 v15, v12, 0x8

    int-to-byte v15, v15

    aput-byte v15, v14, v3

    add-int/lit8 v15, v3, 0x2

    int-to-byte v12, v12

    .line 33
    aput-byte v12, v14, v19

    add-int/lit8 v2, v2, 0x2

    .line 34
    aget v4, v4, v11

    add-int/lit8 v11, v3, 0x3

    shr-int/lit8 v12, v4, 0x8

    int-to-byte v12, v12

    .line 35
    aput-byte v12, v14, v15

    add-int/lit8 v12, v3, 0x4

    int-to-byte v4, v4

    .line 36
    aput-byte v4, v14, v11

    .line 37
    iget v4, v13, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    if-eqz v1, :cond_6

    .line 38
    iget-object v11, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    check-cast v11, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;

    .line 39
    invoke-virtual {v11, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->addFramePosition(I)V

    .line 40
    :cond_6
    iget-object v11, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v14, v3, 0x5

    shr-int/lit8 v15, v4, 0x8

    int-to-byte v15, v15

    aput-byte v15, v11, v12

    add-int/lit8 v12, v3, 0x6

    int-to-byte v4, v4

    .line 41
    aput-byte v4, v11, v14

    .line 42
    iget-object v4, v13, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->exceptionType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v4, :cond_7

    add-int/lit8 v4, v3, 0x7

    const/4 v14, 0x0

    .line 43
    aput-byte v14, v11, v12

    add-int/lit8 v3, v3, 0x8

    .line 44
    aput-byte v14, v11, v4

    :goto_7
    move-object/from16 v12, v17

    move/from16 v14, v18

    move/from16 v15, v20

    goto :goto_5

    .line 45
    :cond_7
    iget v11, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v14, 0x7

    if-eq v11, v14, :cond_9

    const/16 v14, 0xc

    if-eq v11, v14, :cond_8

    .line 46
    iget-object v11, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v11, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v4

    goto :goto_8

    .line 47
    :cond_8
    iget-object v4, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v11, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangClassNotFoundExceptionConstantPoolName:[C

    invoke-virtual {v4, v11}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result v4

    goto :goto_8

    .line 48
    :cond_9
    iget-object v4, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v11, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangNoSuchFieldErrorConstantPoolName:[C

    invoke-virtual {v4, v11}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result v4

    .line 49
    :goto_8
    iget-object v11, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v14, v3, 0x7

    shr-int/lit8 v15, v4, 0x8

    int-to-byte v15, v15

    aput-byte v15, v11, v12

    add-int/lit8 v3, v3, 0x8

    int-to-byte v4, v4

    .line 50
    aput-byte v4, v11, v14

    goto :goto_7

    :cond_a
    move/from16 p1, v3

    goto/16 :goto_6

    :goto_9
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v12, v17

    move/from16 v15, v20

    const/4 v11, 0x2

    goto/16 :goto_2

    :cond_b
    move-object/from16 v17, v12

    .line 51
    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    aget-object v2, v2, v13

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->getCount()I

    move-result v2

    const/4 v4, 0x2

    div-int/2addr v2, v4

    add-int/2addr v14, v2

    add-int/lit8 v13, v13, 0x1

    move v11, v4

    goto/16 :goto_1

    :cond_c
    move v4, v11

    .line 52
    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v5, v3, 0x1

    const/4 v11, 0x0

    aput-byte v11, v2, v3

    add-int/2addr v3, v4

    .line 53
    aput-byte v11, v2, v5

    goto/16 :goto_3

    :goto_a
    add-int/lit8 v12, v11, 0x2

    add-int/lit8 v2, v11, 0x4

    .line 54
    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v3, v3

    if-lt v2, v3, :cond_d

    .line 55
    invoke-direct {v6, v4}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    .line 56
    :cond_d
    iput v12, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    .line 57
    iget v2, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_e

    .line 58
    iget v2, v7, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->sourceStart:I

    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    invoke-static {v2, v0, v5, v3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v0

    .line 59
    invoke-direct {v6, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateLineNumberAttribute(I)I

    move-result v2

    goto :goto_b

    :cond_e
    const/4 v4, 0x1

    const/4 v5, 0x0

    move v2, v5

    .line 60
    :goto_b
    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_f

    .line 61
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v0

    .line 62
    invoke-direct {v6, v10, v0, v4}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateLocalVariableTableAttribute(IZZ)I

    move-result v0

    add-int/2addr v2, v0

    :cond_f
    move v13, v2

    if-eqz v1, :cond_10

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v10

    move/from16 v3, p3

    move v4, v9

    .line 63
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateStackMapTableAttribute(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;IIIZ)I

    move-result v0

    add-int/2addr v13, v0

    .line 64
    :cond_10
    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_11

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v10

    move/from16 v3, p3

    move v4, v9

    .line 65
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateStackMapAttribute(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;IIIZ)I

    move-result v0

    add-int/2addr v13, v0

    .line 66
    :cond_11
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v0, v0

    if-lt v12, v0, :cond_12

    const/4 v0, 0x2

    .line 67
    invoke-direct {v6, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    .line 68
    :cond_12
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v1, v11, 0x1

    shr-int/lit8 v2, v13, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v11

    int-to-byte v2, v13

    .line 69
    aput-byte v2, v0, v1

    .line 70
    iget v1, v6, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    sub-int/2addr v1, v8

    add-int/lit8 v2, p3, 0x2

    shr-int/lit8 v3, v1, 0x18

    int-to-byte v3, v3

    .line 71
    aput-byte v3, v0, v2

    add-int/lit8 v2, p3, 0x3

    shr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    .line 72
    aput-byte v3, v0, v2

    add-int/lit8 v2, p3, 0x4

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    .line 73
    aput-byte v3, v0, v2

    add-int/lit8 v2, p3, 0x5

    int-to-byte v1, v1

    .line 74
    aput-byte v1, v0, v2

    return-void
.end method

.method public completeMethodInfo(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;II)V
    .locals 9

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v1

    const/high16 v2, 0x100000

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_1

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz v4, :cond_0

    invoke-direct {p0, v4, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeArgumentAnnotationInfo([Lorg/eclipse/jdt/internal/compiler/ast/Argument;Ljava/util/List;)V

    :cond_0
    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Receiver;

    if-eqz v4, :cond_1

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_1

    const/16 v5, 0x15

    invoke-virtual {v4, v5, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getAllAnnotationContexts(ILjava/util/List;)V

    :cond_1
    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/16 v5, 0x14

    const/4 v6, 0x6

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isClinit()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isConstructor()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v4, v6, :cond_3

    :cond_2
    invoke-virtual {v1, v5, v0}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->getAllAnnotationContexts(ILjava/util/List;)V

    :cond_3
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isConstructor()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isClinit()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v4, v6, :cond_4

    move-object v4, v1

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v6, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_4

    invoke-virtual {v4, v5, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getAllAnnotationContexts(ILjava/util/List;)V

    :cond_4
    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v4, :cond_6

    array-length v5, v4

    move v6, v3

    :goto_0
    if-lt v6, v5, :cond_5

    goto :goto_1

    :cond_5
    aget-object v7, v4, v6

    const/16 v8, 0x17

    invoke-virtual {v7, v8, v6, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getAllAnnotationContexts(IILjava/util/List;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->typeParameters()[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    move-result-object v1

    if-eqz v1, :cond_a

    array-length v4, v1

    move v5, v3

    :goto_2
    if-lt v5, v4, :cond_7

    goto :goto_3

    :cond_7
    aget-object v6, v1, v5

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v7, v2

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v5, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->getAllAnnotationContexts(IILjava/util/List;)V

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceLambda()Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceLambda()Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    move-result-object v1

    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_a

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz v1, :cond_a

    invoke-direct {p0, v1, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeArgumentAnnotationInfo([Lorg/eclipse/jdt/internal/compiler/ast/Argument;Ljava/util/List;)V

    :cond_a
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_d

    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move v0, v3

    move v4, v0

    :goto_4
    if-lt v3, v1, :cond_b

    invoke-direct {p0, v2, v0, v4}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateRuntimeTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;II)I

    move-result v0

    add-int/2addr p3, v0

    goto :goto_6

    :cond_b
    aget-object v5, v2, v3

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->visibility:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_c

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_c
    add-int/lit8 v0, v0, 0x1

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_d
    :goto_6
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodParameters(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result p1

    add-int/2addr p3, p1

    :cond_e
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    int-to-byte p2, p3

    aput-byte p2, p1, v0

    return-void
.end method

.method public fileName()[C
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->UTF8Cache:Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CharArrayCache;->returnKeyFor(I)[C

    move-result-object v0

    return-object v0
.end method

.method public generateCodeAttributeHeader()V
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/16 v1, 0x14

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v2, v2

    if-lt v0, v2, :cond_0

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->CodeName:[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v4, v2, 0x2

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    add-int/lit8 v2, v2, 0xe

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    return-void
.end method

.method public generateMethodInfoAttributes(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I
    .locals 14

    .line 1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v0, v0, 0x4

    .line 2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    .line 3
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    .line 4
    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 5
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateExceptionsAttribute([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 6
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDeprecated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateDeprecatedAttribute()I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    iget-wide v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->targetJDK:J

    const-wide/32 v5, 0x310000

    cmp-long v1, v3, v5

    if-gez v1, :cond_4

    .line 9
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isSynthetic()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateSyntheticAttribute()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateVarargsAttribute()I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->genericSignature()[C

    move-result-object v1

    if-eqz v1, :cond_5

    .line 14
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateSignatureAttribute([C)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_5
    iget-wide v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->targetJDK:J

    const-wide/32 v5, 0x300000

    cmp-long v1, v3, v5

    const-wide/16 v3, 0x0

    if-ltz v1, :cond_c

    .line 16
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v1

    .line 17
    instance-of v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    if-eqz v5, :cond_6

    .line 18
    move-object v5, p1

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    .line 19
    iget v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->purpose:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_6

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v7, v5, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->targetMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-static {v6, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 20
    iget-object v1, v5, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->targetMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v1

    :cond_6
    const-wide/16 v5, 0x400

    if-eqz v1, :cond_9

    .line 21
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v2, :cond_8

    .line 22
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v7

    if-eqz v7, :cond_7

    const-wide v7, 0x10000000000L

    goto :goto_1

    :cond_7
    const-wide v7, 0x4000000000L

    :goto_1
    invoke-direct {p0, v2, v7, v8}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateRuntimeAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;J)I

    move-result v2

    add-int/2addr v0, v2

    .line 23
    :cond_8
    iget-wide v7, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    and-long/2addr v5, v7

    cmp-long v2, v5, v3

    if-eqz v2, :cond_c

    .line 24
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz v1, :cond_c

    .line 25
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateRuntimeAnnotationsForParameters([Lorg/eclipse/jdt/internal/compiler/ast/Argument;)I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    goto :goto_5

    .line 26
    :cond_9
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceLambda()Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 27
    iget-wide v7, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    and-long/2addr v5, v7

    cmp-long v5, v5, v3

    if-eqz v5, :cond_c

    .line 28
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments()[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 29
    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v5, v5

    .line 30
    array-length v6, v1

    if-le v5, v6, :cond_b

    sub-int v7, v5, v6

    .line 31
    new-array v5, v5, [Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    invoke-static {v1, v2, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    if-lt v2, v7, :cond_a

    move-object v1, v5

    goto :goto_4

    .line 32
    :cond_a
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    sget-object v9, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v10, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;-><init>([CJLorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    aput-object v1, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 33
    :cond_b
    :goto_4
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateRuntimeAnnotationsForParameters([Lorg/eclipse/jdt/internal/compiler/ast/Argument;)I

    move-result v1

    goto :goto_2

    .line 34
    :cond_c
    :goto_5
    iget-wide v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v5, 0x80

    and-long/2addr v1, v5

    cmp-long v1, v1, v3

    if-eqz v1, :cond_d

    .line 35
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->missingTypes:Ljava/util/List;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->collectMissingTypes(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->missingTypes:Ljava/util/List;

    :cond_d
    return v0
.end method

.method public generateMethodInfoAttributes(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;)I
    .locals 3

    .line 36
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoAttributes(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result p1

    .line 37
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    .line 38
    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 39
    invoke-direct {p0, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateAnnotationDefaultAttribute(Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;I)I

    move-result p2

    add-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method public generateMethodInfoHeader(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 1

    .line 1
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoHeader(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I)V

    return-void
.end method

.method public generateMethodInfoHeader(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I)V
    .locals 4

    .line 2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCount:I

    .line 3
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/16 v1, 0xa

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 4
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    .line 5
    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->targetJDK:J

    const-wide/32 v2, 0x310000

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    and-int/lit16 p2, p2, -0x1081

    .line 6
    :cond_1
    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    and-int/lit8 p2, p2, -0x3

    .line 7
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x2

    .line 8
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte p2, p2

    aput-byte p2, v0, v2

    .line 9
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result p2

    .line 10
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x2

    .line 11
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte p2, p2

    aput-byte p2, v0, v2

    .line 12
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->signature(Lorg/eclipse/jdt/internal/compiler/ClassFile;)[C

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result p1

    .line 13
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    add-int/lit8 v0, v0, 0x2

    .line 14
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte p1, p1

    aput-byte p1, p2, v1

    return-void
.end method

.method public generateMethodInfoHeaderForClinit()V
    .locals 7

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCount:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/16 v2, 0xa

    add-int/2addr v0, v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    array-length v3, v3

    if-lt v0, v3, :cond_0

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->resizeContents(I)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/4 v4, 0x0

    aput-byte v4, v0, v2

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    const/16 v2, 0x8

    aput-byte v2, v0, v3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Clinit:[C

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v6, v0, 0x8

    int-to-byte v6, v6

    aput-byte v6, v2, v3

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v0, v0

    aput-byte v0, v2, v5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ClinitSignature:[C

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C)I

    move-result v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v6, v0, 0x8

    int-to-byte v6, v6

    aput-byte v6, v2, v3

    add-int/lit8 v6, v3, 0x2

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v0, v0

    aput-byte v0, v2, v5

    add-int/lit8 v0, v3, 0x3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    aput-byte v4, v2, v6

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    aput-byte v1, v2, v0

    return-void
.end method

.method public generateMissingAbstractMethods([Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_3

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart()I

    move-result v4

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd()I

    move-result v3

    array-length v5, v1

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v5, :cond_0

    goto :goto_2

    :cond_0
    aget-object v8, v1, v7

    iget-object v9, v8, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    new-instance v10, Ljava/lang/String;

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->readableName()[C

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([C)V

    iget-object v11, v2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    iget v12, v2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    const/4 v13, 0x0

    :goto_1
    if-lt v13, v12, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    aget-object v14, v11, v13

    if-eqz v14, :cond_2

    invoke-interface {v14}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result v15

    const v6, 0x4000190

    if-ne v15, v6, :cond_2

    invoke-interface {v14}, Lorg/eclipse/jdt/core/compiler/IProblem;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v15, -0x1

    if-eq v6, v15, :cond_2

    invoke-interface {v14}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result v6

    if-lt v6, v4, :cond_2

    invoke-interface {v14}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceEnd()I

    move-result v6

    if-gt v6, v3, :cond_2

    invoke-direct {v0, v8, v9, v14, v2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addMissingAbstractProblemMethod(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public generateTypeAnnotationsOnCodeAttribute()I
    .locals 11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/codegen/TypeAnnotationCodeStream;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/codegen/TypeAnnotationCodeStream;->allTypeAnnotationContexts:Ljava/util/List;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->allLocalsCounter:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/high16 v4, 0x100000

    if-lt v3, v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exceptionLabelsCounter:I

    move v0, v2

    :goto_1
    if-lt v0, v6, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    new-array v3, v0, [Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move v1, v2

    move v4, v1

    :goto_2
    if-lt v2, v0, :cond_0

    invoke-direct {p0, v3, v1, v4}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateRuntimeTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;II)I

    move-result v2

    goto :goto_4

    :cond_0
    aget-object v5, v3, v2

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;->visibility:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    :goto_4
    return v2

    :cond_3
    aget-object v3, v5, v0

    iget-object v7, v3, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->exceptionTypeReference:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v7, :cond_4

    iget v8, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v8, v4

    if-eqz v8, :cond_4

    const/16 v8, 0x42

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->se7Annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-virtual {v7, v8, v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getAllAnnotationContexts(IILjava/util/List;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->isCatchParameter()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_6

    :cond_6
    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->isArgument()Z

    move-result v7

    if-eqz v7, :cond_7

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v8, 0x20000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_a

    :cond_7
    iget v7, v5, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationCount:I

    if-eqz v7, :cond_a

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v4, v7

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    iget-wide v7, v5, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/16 v9, 0x2000

    and-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-nez v4, :cond_9

    const/16 v4, 0x40

    goto :goto_5

    :cond_9
    const/16 v4, 0x41

    :goto_5
    invoke-virtual {v6, v4, v5, v1}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->getAllAnnotationContexts(ILorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Ljava/util/List;)V

    :cond_a
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method public getBytes()[B
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->bytes:[B

    if-nez v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->headerOffset:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/2addr v1, v0

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->bytes:[B

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->header:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->bytes:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->headerOffset:I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->bytes:[B

    return-object v0
.end method

.method public getCompoundName()[[C
    .locals 2

    const/16 v0, 0x2f

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->fileName()[C

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v0

    return-object v0
.end method

.method public initByteArrays(I)V
    .locals 2

    const/16 v0, 0x5dc

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->header:[B

    const/16 v1, 0xf

    if-ge p1, v1, :cond_0

    const/16 v0, 0x190

    :cond_0
    new-array p1, v0, [B

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    return-void
.end method

.method public initialize(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ClassFile;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getAccessFlags()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isPrivate()Z

    move-result v3

    if-eqz v3, :cond_0

    and-int/lit8 v2, v2, -0x2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isProtected()Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x1

    :cond_1
    and-int/lit16 v2, v2, -0x92f

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v3

    if-nez v3, :cond_2

    or-int/lit8 v2, v2, 0x20

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v3

    if-eqz v3, :cond_3

    and-int/lit8 v2, v2, -0x11

    :cond_3
    and-int/lit16 v3, v2, 0x410

    const/16 v4, 0x410

    if-ne v3, v4, :cond_4

    and-int/lit16 v2, v2, -0x411

    :cond_4
    move-object/from16 v3, p2

    invoke-direct {v0, v3, v2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->initializeHeader(Lorg/eclipse/jdt/internal/compiler/ClassFile;I)V

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v2

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    add-int/lit8 v4, v4, 0x2

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v2, v2

    aput-byte v2, v3, v5

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x80

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangObjectConstantPoolName:[C

    invoke-virtual {v2, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result v2

    goto :goto_0

    :cond_5
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_7

    iget-wide v8, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v8, v5

    cmp-long v8, v8, v3

    if-eqz v8, :cond_6

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangObjectConstantPoolName:[C

    invoke-virtual {v2, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result v2

    goto :goto_0

    :cond_6
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v8, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v2

    goto :goto_0

    :cond_7
    move v2, v7

    :goto_0
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v11, v2, 0x8

    int-to-byte v11, v11

    aput-byte v11, v8, v9

    add-int/lit8 v9, v9, 0x2

    iput v9, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v2, v2

    aput-byte v2, v8, v10

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    array-length v8, v2

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v10, v9, 0x2

    iput v10, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    move v10, v7

    :goto_1
    if-lt v7, v8, :cond_8

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    add-int/lit8 v3, v9, 0x1

    shr-int/lit8 v4, v10, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v9

    int-to-byte v4, v10

    aput-byte v4, v2, v3

    move/from16 v11, p3

    iput-boolean v11, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->creatingProblemType:Z

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->outerMostClassScope()Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v1

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->maxFieldCount:I

    iput v1, v2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxFieldCount:I

    return-void

    :cond_8
    move/from16 v11, p3

    aget-object v12, v2, v7

    iget-wide v13, v12, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v13, v5

    cmp-long v13, v13, v3

    if-eqz v13, :cond_9

    goto :goto_2

    :cond_9
    add-int/lit8 v10, v10, 0x1

    iget-object v13, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v13, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v12

    iget-object v13, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v14, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v3, v12, 0x8

    int-to-byte v3, v3

    aput-byte v3, v13, v14

    add-int/lit8 v14, v14, 0x2

    iput v14, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v3, v12

    aput-byte v3, v13, v15

    :goto_2
    add-int/lit8 v7, v7, 0x1

    const-wide/16 v3, 0x0

    goto :goto_1
.end method

.method public initializeForModule(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V
    .locals 4

    const/4 p1, 0x0

    const v0, 0x8000

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->initializeHeader(Lorg/eclipse/jdt/internal/compiler/ClassFile;I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->MODULE_INFO_NAME:[C

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    const/4 v2, 0x0

    iput v2, p1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxFieldCount:I

    add-int/lit8 p1, v1, 0x3

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    aput-byte v2, v0, v3

    add-int/lit8 v3, v1, 0x4

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    aput-byte v2, v0, p1

    add-int/lit8 p1, v1, 0x5

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    aput-byte v2, v0, v3

    add-int/lit8 v3, v1, 0x6

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    aput-byte v2, v0, p1

    add-int/lit8 p1, v1, 0x7

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    aput-byte v2, v0, v3

    add-int/lit8 v3, v1, 0x8

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    aput-byte v2, v0, p1

    add-int/lit8 p1, v1, 0x9

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    aput-byte v2, v0, v3

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    aput-byte v2, v0, p1

    return-void
.end method

.method public outerMostEnclosingClassFile()Lorg/eclipse/jdt/internal/compiler/ClassFile;
    .locals 2

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->enclosingClassFile:Lorg/eclipse/jdt/internal/compiler/ClassFile;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public recordBootstrapMethod(Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;)I
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->bootstrapMethods:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->bootstrapMethods:Ljava/util/List;

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->bootstrapMethods:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->bootstrapMethods:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expectedType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expectedType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->bootstrapMethodNumber:I

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->bootstrapMethods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->bootstrapMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->bootstrapMethodNumber:I

    return v0
.end method

.method public recordInnerClasses(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->recordInnerClasses(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)V

    return-void
.end method

.method public recordInnerClasses(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)V
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->innerClassesBindings:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->innerClassesBindings:Ljava/util/Map;

    .line 4
    :cond_0
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->innerClassesBindings:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->unannotated()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->innerClassesBindings:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->unannotated()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public reset(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->isNestedType:Z

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->isNestedType:Z

    :goto_0
    iget-wide v2, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->targetJDK:J

    iput-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->targetJDK:J

    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->produceDebugAttributes:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    const-wide/32 v4, 0x320000

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    or-int/lit8 v4, p1, 0x8

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    const-wide/32 v4, 0x340000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    or-int/lit8 p1, p1, 0x28

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    instance-of p1, p1, Lorg/eclipse/jdt/internal/compiler/codegen/TypeAnnotationCodeStream;

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz p1, :cond_1

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/codegen/TypeAnnotationCodeStream;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/TypeAnnotationCodeStream;-><init>(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    :cond_1
    iget-boolean p1, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->produceMethodParameters:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    goto :goto_1

    :cond_2
    const-wide/32 v4, 0x2d0004

    cmp-long p2, v2, v4

    if-nez p2, :cond_3

    const-wide/32 v2, 0x2d0003

    iput-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->targetJDK:J

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    :cond_3
    :goto_1
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->bytes:[B

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->reset()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->reset(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPoolOffset:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->creatingProblemType:Z

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->enclosingClassFile:Lorg/eclipse/jdt/internal/compiler/ClassFile;

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->headerOffset:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCount:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCountOffset:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->innerClassesBindings:Ljava/util/Map;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->bootstrapMethods:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_5
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->missingTypes:Ljava/util/List;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->visitedTypes:Ljava/util/Set;

    return-void
.end method

.method public setForMethodInfos()V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCountOffset:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I[BIILjava/util/Map;Z)Ljava/util/List;
    .locals 38

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p5

    move-object/from16 v4, p6

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->getFramePositions()[I

    move-result-object v7

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object v9, v8, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->offsets:[I

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->poolContent:[B

    array-length v10, v7

    const/4 v11, 0x0

    aget v12, v7, v11

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->getStackDepthMarkers()[Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackDepthMarker;

    move-result-object v13

    if-nez v13, :cond_0

    move v14, v11

    goto :goto_0

    :cond_0
    array-length v14, v13

    :goto_0
    if-eqz v14, :cond_1

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    move/from16 v16, v11

    :goto_1
    const/16 v17, 0x0

    if-eqz v16, :cond_2

    aget-object v18, v13, v11

    goto :goto_2

    :cond_2
    move-object/from16 v18, v17

    :goto_2
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->getStackMarkers()[Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackMarker;

    move-result-object v15

    if-nez v15, :cond_3

    goto :goto_3

    :cond_3
    array-length v11, v15

    :goto_3
    if-eqz v11, :cond_4

    const/16 v21, 0x1

    goto :goto_4

    :cond_4
    const/16 v21, 0x0

    :goto_4
    if-eqz v21, :cond_5

    const/16 v20, 0x0

    aget-object v22, v15, v20

    goto :goto_5

    :cond_5
    move-object/from16 v22, v17

    :goto_5
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->getExceptionMarkers()[Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;

    move-result-object v6

    move/from16 v23, v12

    if-nez v6, :cond_6

    const/4 v12, 0x0

    goto :goto_6

    :cond_6
    array-length v12, v6

    :goto_6
    if-eqz v12, :cond_7

    const/16 v24, 0x1

    goto :goto_7

    :cond_7
    const/16 v24, 0x0

    :goto_7
    if-eqz v24, :cond_8

    const/16 v20, 0x0

    aget-object v25, v6, v20

    move-object/from16 v26, v8

    goto :goto_8

    :cond_8
    move-object/from16 v26, v8

    move-object/from16 v25, v17

    :goto_8
    new-instance v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;

    invoke-direct {v8, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;-><init>(I)V

    move-object/from16 v27, v9

    move-object/from16 v9, p1

    if-nez p7, :cond_9

    invoke-direct {v0, v8, v9, v1, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->initializeDefaultLocals(Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;II)V

    :cond_9
    const/4 v1, -0x1

    iput v1, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->pc:I

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->duplicate()Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;

    move-result-object v9

    invoke-direct {v0, v4, v9}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->add(Ljava/util/Map;Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;)V

    invoke-direct {v0, v5, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addRealJumpTarget(Ljava/util/Set;I)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exceptionLabelsCounter:I

    const/4 v9, 0x0

    :goto_9
    if-lt v9, v1, :cond_67

    move/from16 v2, p4

    move-object/from16 v28, v5

    move-object/from16 v9, v18

    move-object/from16 v3, v22

    move/from16 v1, v23

    move-object/from16 v5, v25

    const/16 v18, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    :goto_a
    sub-int v4, v2, p4

    move/from16 p2, v2

    if-eqz v21, :cond_a

    iget v2, v3, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackMarker;->pc:I

    if-ne v2, v4, :cond_a

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v0, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    move-object/from16 v29, v7

    new-array v7, v0, [Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    move/from16 v30, v10

    const/4 v10, 0x0

    invoke-static {v2, v10, v7, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v3, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackMarker;->setInfos([Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto :goto_b

    :cond_a
    move-object/from16 v29, v7

    move/from16 v30, v10

    if-eqz v21, :cond_c

    iget v0, v3, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackMarker;->destinationPC:I

    if-ne v0, v4, :cond_c

    iget-object v0, v3, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackMarker;->infos:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iput-object v0, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    array-length v0, v0

    iput v0, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    add-int/lit8 v0, v18, 0x1

    if-ge v0, v11, :cond_b

    aget-object v2, v15, v0

    move/from16 v18, v0

    move-object v3, v2

    goto :goto_b

    :cond_b
    move/from16 v18, v0

    const/16 v21, 0x0

    :cond_c
    :goto_b
    if-eqz v16, :cond_10

    iget v0, v9, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackDepthMarker;->pc:I

    if-ne v0, v4, :cond_10

    iget-object v0, v9, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackDepthMarker;->typeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_e

    iget v2, v9, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackDepthMarker;->delta:I

    if-lez v2, :cond_d

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    invoke-direct {v2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {v8, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto :goto_c

    :cond_d
    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    new-instance v10, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    invoke-direct {v10, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    aput-object v10, v2, v7

    goto :goto_c

    :cond_e
    iget v0, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    :goto_c
    add-int/lit8 v0, v22, 0x1

    if-ge v0, v14, :cond_f

    aget-object v2, v13, v0

    move/from16 v22, v0

    move-object v9, v2

    goto :goto_d

    :cond_f
    move/from16 v22, v0

    const/16 v16, 0x0

    :cond_10
    :goto_d
    const/4 v0, 0x7

    if-eqz v24, :cond_12

    iget v2, v5, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;->pc:I

    if-ne v2, v4, :cond_12

    const/4 v2, 0x0

    iput v2, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget-object v10, v5, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;->constantPoolName:[C

    invoke-direct {v7, v2, v0, v10}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(II[C)V

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    add-int/lit8 v2, v23, 0x1

    if-ge v2, v12, :cond_11

    aget-object v5, v6, v2

    move/from16 v23, v2

    goto :goto_e

    :cond_11
    move/from16 v23, v2

    const/16 v24, 0x0

    :cond_12
    :goto_e
    if-ge v1, v4, :cond_15

    :goto_f
    const/4 v1, 0x1

    add-int/lit8 v7, v25, 0x1

    move/from16 v10, v30

    if-ge v7, v10, :cond_13

    aget v1, v29, v7

    goto :goto_10

    :cond_13
    const v1, 0x7fffffff

    :goto_10
    move/from16 v25, v7

    if-lt v1, v4, :cond_14

    goto :goto_11

    :cond_14
    move/from16 v30, v10

    goto :goto_f

    :cond_15
    move/from16 v10, v30

    :goto_11
    if-ne v1, v4, :cond_18

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->duplicate()Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;

    move-result-object v1

    iput v4, v1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->pc:I

    if-eqz p7, :cond_16

    const/4 v7, 0x1

    :goto_12
    move-object/from16 v2, p0

    goto :goto_13

    :cond_16
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v7

    goto :goto_12

    :goto_13
    invoke-direct {v2, v7, v4, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->initializeLocals(ZILorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;)V

    move v7, v4

    move-object/from16 v4, p6

    invoke-direct {v2, v4, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->add(Ljava/util/Map;Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;)V

    add-int/lit8 v1, v25, 0x1

    if-ge v1, v10, :cond_17

    aget v25, v29, v1

    move/from16 v0, p2

    move-object/from16 v31, v3

    move-object/from16 v32, v5

    move/from16 v30, v25

    const/4 v3, 0x0

    move/from16 v25, v1

    :goto_14
    move-object/from16 v1, p3

    goto :goto_15

    :cond_17
    move/from16 v0, p2

    move/from16 v25, v1

    move-object/from16 v31, v3

    move-object/from16 v32, v5

    const/4 v3, 0x0

    const v30, 0x7fffffff

    goto :goto_14

    :cond_18
    move-object/from16 v2, p0

    move v7, v4

    move-object/from16 v4, p6

    move/from16 v0, p2

    move/from16 v30, v1

    move-object/from16 v31, v3

    move-object/from16 v32, v5

    const/4 v3, 0x0

    goto :goto_14

    :goto_15
    invoke-direct {v2, v1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u1At([BII)I

    move-result v5

    int-to-byte v3, v5

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    const/4 v5, 0x4

    packed-switch v3, :pswitch_data_2

    iget-object v5, v2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v7, v5, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v7, :cond_19

    iget-object v5, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/util/Messages;->abort_invalidOpcode:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    move-object/from16 v34, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v35, v9

    new-instance v9, Ljava/lang/String;

    move/from16 v36, v10

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->shortReadableName()[C

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([C)V

    filled-new-array {v3, v6, v9}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v7, v3}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {v5, v3, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->abortDueToInternalError(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_16

    :cond_19
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lambdaExpression:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/util/Messages;->abort_invalidOpcode:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v9, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->shortReadableName()[C

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([C)V

    filled-new-array {v3, v7, v9}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6, v3}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lambdaExpression:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    invoke-virtual {v5, v3, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->abortDueToInternalError(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :goto_16
    move/from16 v5, p5

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v3, 0x0

    const/4 v7, 0x1

    :goto_17
    move/from16 v26, v11

    :goto_18
    move/from16 v28, v12

    goto/16 :goto_41

    :pswitch_0
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :pswitch_1
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v3, 0x0

    move/from16 v26, v11

    move/from16 v28, v12

    goto/16 :goto_40

    :pswitch_2
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    add-int/lit8 v6, v3, -0x1

    aget-object v7, v5, v6

    const/4 v9, 0x2

    sub-int/2addr v3, v9

    aget-object v9, v5, v3

    aput-object v9, v5, v6

    aput-object v7, v5, v3

    goto :goto_19

    :pswitch_3
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    add-int/lit8 v6, v3, -0x1

    aget-object v6, v5, v6

    add-int/lit8 v7, v3, -0x1

    iput v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    add-int/lit8 v7, v3, -0x2

    aget-object v5, v5, v7

    const/4 v7, 0x2

    sub-int/2addr v3, v7

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id()I

    move-result v3

    const/4 v7, 0x7

    if-eq v3, v7, :cond_1b

    const/16 v9, 0x8

    if-eq v3, v9, :cond_1b

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    iget-object v10, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    add-int/lit8 v33, v3, -0x1

    aget-object v10, v10, v33

    const/16 v19, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id()I

    move-result v3

    if-eq v3, v7, :cond_1a

    if-eq v3, v9, :cond_1a

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    iget-object v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    add-int/lit8 v9, v3, -0x1

    aget-object v7, v7, v9

    add-int/lit8 v3, v3, -0x1

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    invoke-virtual {v8, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v10}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto/16 :goto_19

    :cond_1a
    invoke-virtual {v8, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v10}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto/16 :goto_19

    :cond_1b
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id()I

    move-result v3

    const/4 v7, 0x7

    if-eq v3, v7, :cond_1c

    const/16 v7, 0x8

    if-eq v3, v7, :cond_1c

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    iget-object v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    add-int/lit8 v9, v3, -0x1

    aget-object v7, v7, v9

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    invoke-virtual {v8, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto/16 :goto_19

    :cond_1c
    invoke-virtual {v8, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto/16 :goto_19

    :pswitch_4
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    add-int/lit8 v6, v5, -0x1

    aget-object v6, v3, v6

    add-int/lit8 v7, v5, -0x1

    iput v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    add-int/lit8 v7, v5, -0x2

    aget-object v3, v3, v7

    const/4 v7, 0x2

    sub-int/2addr v5, v7

    iput v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id()I

    move-result v5

    const/4 v7, 0x7

    if-eq v5, v7, :cond_1d

    const/16 v7, 0x8

    if-eq v5, v7, :cond_1d

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    add-int/lit8 v9, v7, -0x1

    aget-object v5, v5, v9

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    iput v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto/16 :goto_19

    :cond_1d
    invoke-virtual {v8, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto/16 :goto_19

    :pswitch_5
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    add-int/lit8 v6, v5, -0x1

    aget-object v3, v3, v6

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iput v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id()I

    move-result v5

    const/4 v7, 0x7

    if-eq v5, v7, :cond_1e

    const/16 v7, 0x8

    if-eq v5, v7, :cond_1e

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    add-int/lit8 v9, v7, -0x1

    aget-object v5, v5, v9

    sub-int/2addr v7, v6

    iput v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    invoke-virtual {v8, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto/16 :goto_19

    :cond_1e
    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto/16 :goto_19

    :pswitch_6
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    add-int/lit8 v6, v5, -0x1

    aget-object v6, v3, v6

    add-int/lit8 v7, v5, -0x1

    iput v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    add-int/lit8 v7, v5, -0x2

    aget-object v3, v3, v7

    const/4 v7, 0x2

    sub-int/2addr v5, v7

    iput v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id()I

    move-result v5

    const/4 v7, 0x7

    if-eq v5, v7, :cond_1f

    const/16 v7, 0x8

    if-eq v5, v7, :cond_1f

    iget v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    iget-object v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    add-int/lit8 v9, v5, -0x1

    aget-object v7, v7, v9

    const/4 v9, 0x1

    sub-int/2addr v5, v9

    iput v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    invoke-virtual {v8, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto/16 :goto_19

    :cond_1f
    invoke-virtual {v8, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto/16 :goto_19

    :pswitch_7
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    add-int/lit8 v6, v5, -0x1

    aget-object v6, v3, v6

    add-int/lit8 v7, v5, -0x1

    iput v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    add-int/lit8 v7, v5, -0x2

    aget-object v3, v3, v7

    const/4 v7, 0x2

    sub-int/2addr v5, v7

    iput v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    invoke-virtual {v8, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    invoke-virtual {v8, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto/16 :goto_19

    :pswitch_8
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget-object v3, v3, v5

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    add-int/lit8 v0, v0, 0x1

    move/from16 v5, p5

    move v7, v6

    :goto_1a
    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v3, 0x0

    goto/16 :goto_17

    :pswitch_9
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    const/4 v6, 0x1

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    sub-int/2addr v3, v6

    aget-object v3, v5, v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->id()I

    move-result v3

    const/4 v5, 0x7

    if-eq v3, v5, :cond_20

    const/16 v5, 0x8

    if-eq v3, v5, :cond_20

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    const/4 v5, 0x2

    sub-int/2addr v3, v5

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    const/4 v5, 0x1

    goto :goto_1b

    :cond_20
    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    :goto_1b
    add-int/lit8 v0, v0, 0x1

    move v7, v5

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v3, 0x0

    move/from16 v5, p5

    goto/16 :goto_17

    :pswitch_a
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    const/4 v5, 0x1

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v3, v5

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    goto/16 :goto_19

    :pswitch_b
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    const/4 v5, 0x3

    sub-int/2addr v3, v5

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    goto/16 :goto_19

    :pswitch_c
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v6, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    add-int/lit8 v7, v6, -0x1

    aget-object v5, v5, v7

    const/4 v7, 0x0

    aput-object v5, v3, v7

    const/4 v3, 0x1

    sub-int/2addr v6, v3

    iput v6, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    :goto_1c
    add-int/lit8 v0, v0, 0x1

    :goto_1d
    move/from16 v5, p5

    move v7, v3

    goto :goto_1a

    :pswitch_d
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    const/4 v3, 0x1

    iget v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v5, v3

    iput v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    goto :goto_1c

    :pswitch_e
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u1At([BII)I

    iget v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v5, v3

    iput v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    add-int/lit8 v0, v0, 0x2

    goto :goto_1d

    :pswitch_f
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    const/4 v3, 0x1

    iget v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v5, v3

    iput v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    :goto_1e
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_16

    :pswitch_10
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    const/4 v5, 0x2

    sub-int/2addr v3, v5

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->SHORT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_19

    :pswitch_11
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    const/4 v5, 0x2

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v3, v5

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->CHAR:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_19

    :pswitch_12
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    const/4 v5, 0x2

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v3, v5

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BYTE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_19

    :pswitch_13
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->replaceWithElementType()V

    goto/16 :goto_19

    :pswitch_14
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    const/4 v5, 0x2

    sub-int/2addr v3, v5

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_19

    :pswitch_15
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    const/4 v5, 0x2

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v3, v5

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_19

    :pswitch_16
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    const/4 v5, 0x2

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v3, v5

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_19

    :pswitch_17
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    const/4 v5, 0x2

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v3, v5

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_19

    :pswitch_18
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    const/4 v3, 0x3

    invoke-direct {v2, v7, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->retrieveLocal(II)Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    move-result-object v3

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto/16 :goto_19

    :pswitch_19
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    const/4 v3, 0x2

    invoke-direct {v2, v7, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->retrieveLocal(II)Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    move-result-object v3

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto/16 :goto_19

    :pswitch_1a
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    const/4 v3, 0x1

    invoke-direct {v2, v7, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->retrieveLocal(II)Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    move-result-object v5

    invoke-virtual {v8, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto/16 :goto_19

    :pswitch_1b
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    if-eqz v3, :cond_21

    iget v6, v3, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->tag:I

    const/4 v9, 0x6

    if-eq v6, v9, :cond_22

    :cond_21
    invoke-direct {v2, v7, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->retrieveLocal(II)Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    move-result-object v3

    :cond_22
    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto/16 :goto_19

    :pswitch_1c
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_19

    :pswitch_1d
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_19

    :pswitch_1e
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_19

    :pswitch_1f
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_19

    :pswitch_20
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u1At([BII)I

    move-result v5

    invoke-direct {v2, v7, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->retrieveLocal(II)Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    move-result-object v3

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto/16 :goto_1e

    :pswitch_21
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_1e

    :pswitch_22
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_1e

    :pswitch_23
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_1e

    :pswitch_24
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_1e

    :pswitch_25
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v5

    aget v3, v27, v5

    move-object/from16 v6, v26

    const/4 v5, 0x0

    invoke-direct {v2, v6, v5, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u1At([BII)I

    move-result v3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_24

    const/4 v5, 0x6

    if-eq v3, v5, :cond_23

    goto :goto_1f

    :cond_23
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_1f

    :cond_24
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_1f
    add-int/lit8 v0, v0, 0x3

    :goto_20
    move/from16 v5, p5

    move/from16 v26, v11

    move-object/from16 v10, v28

    const/4 v3, 0x0

    const/4 v7, 0x1

    goto/16 :goto_18

    :pswitch_26
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v7

    aget v3, v27, v7

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u1At([BII)I

    move-result v3

    const/4 v7, 0x3

    if-eq v3, v7, :cond_28

    if-eq v3, v5, :cond_27

    const/4 v5, 0x7

    if-eq v3, v5, :cond_26

    const/16 v5, 0x8

    if-eq v3, v5, :cond_25

    goto :goto_1f

    :cond_25
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringConstantPoolName:[C

    const/16 v7, 0xb

    invoke-direct {v3, v7, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(I[C)V

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto :goto_1f

    :cond_26
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangClassConstantPoolName:[C

    const/16 v7, 0x10

    invoke-direct {v3, v7, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(I[C)V

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto :goto_1f

    :cond_27
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_1f

    :cond_28
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_1f

    :pswitch_27
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u1At([BII)I

    move-result v7

    aget v3, v27, v7

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u1At([BII)I

    move-result v3

    const/4 v7, 0x3

    if-eq v3, v7, :cond_2c

    if-eq v3, v5, :cond_2b

    const/4 v5, 0x7

    if-eq v3, v5, :cond_2a

    const/16 v5, 0x8

    if-eq v3, v5, :cond_29

    goto :goto_21

    :cond_29
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringConstantPoolName:[C

    const/16 v7, 0xb

    invoke-direct {v3, v7, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(I[C)V

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto :goto_21

    :cond_2a
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangClassConstantPoolName:[C

    const/16 v7, 0x10

    invoke-direct {v3, v7, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(I[C)V

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto :goto_21

    :cond_2b
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_21

    :cond_2c
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_21
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_20

    :pswitch_28
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->SHORT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_1f

    :pswitch_29
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BYTE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_21

    :pswitch_2a
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_20

    :pswitch_2b
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_22

    :pswitch_2c
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_22

    :pswitch_2d
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_22

    :pswitch_2e
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_22

    :pswitch_2f
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    goto :goto_22

    :pswitch_30
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->i4At([BII)I

    move-result v5

    add-int/2addr v5, v7

    move-object/from16 v10, v28

    invoke-direct {v2, v10, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addRealJumpTarget(Ljava/util/Set;I)V

    add-int/lit8 v0, v0, 0x5

    sub-int v5, v0, p4

    invoke-direct {v2, v10, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addRealJumpTarget(Ljava/util/Set;I)V

    :goto_23
    move/from16 v5, p5

    move v7, v3

    move/from16 v26, v11

    move/from16 v28, v12

    :goto_24
    const/4 v3, 0x0

    goto/16 :goto_41

    :pswitch_31
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v3, 0x1

    iget v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v5, v3

    iput v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    invoke-direct {v2, v1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->i2At([BII)I

    move-result v5

    add-int/2addr v5, v7

    invoke-direct {v2, v10, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addRealJumpTarget(Ljava/util/Set;I)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_23

    :pswitch_32
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v5

    aget v5, v27, v5

    invoke-direct {v2, v6, v3, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v5

    aget v5, v27, v5

    add-int/lit8 v7, v5, 0x3

    invoke-direct {v2, v6, v3, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v5

    invoke-virtual {v2, v6, v7, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->utf8At([BII)[C

    move-result-object v3

    const/4 v5, 0x3

    invoke-direct {v2, v1, v5, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u1At([BII)I

    move-result v5

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v7, v5

    iput v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    array-length v5, v3

    new-array v7, v5, [C

    const/4 v9, 0x0

    invoke-static {v3, v9, v7, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    invoke-direct {v3, v9, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(I[C)V

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    :goto_25
    add-int/lit8 v0, v0, 0x4

    :goto_26
    move/from16 v5, p5

    move/from16 v26, v11

    :goto_27
    move/from16 v28, v12

    :goto_28
    const/4 v3, 0x0

    :goto_29
    const/4 v7, 0x1

    goto/16 :goto_41

    :pswitch_33
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u1At([BII)I

    move-result v5

    int-to-byte v3, v5

    const/16 v5, -0x7c

    if-ne v3, v5, :cond_2d

    add-int/lit8 v0, v0, 0x6

    goto :goto_26

    :cond_2d
    const/4 v5, 0x2

    invoke-direct {v2, v1, v5, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v5

    packed-switch v3, :pswitch_data_3

    packed-switch v3, :pswitch_data_4

    goto :goto_25

    :pswitch_34
    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget-object v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v9, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    add-int/lit8 v26, v9, -0x1

    aget-object v7, v7, v26

    aput-object v7, v3, v5

    const/4 v3, 0x1

    sub-int/2addr v9, v3

    iput v9, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    goto :goto_25

    :pswitch_35
    const/4 v3, 0x1

    iget v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v5, v3

    iput v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    goto :goto_25

    :pswitch_36
    const/4 v3, 0x1

    iget v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v5, v3

    iput v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    goto :goto_25

    :pswitch_37
    const/4 v3, 0x1

    iget v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v5, v3

    iput v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    goto :goto_25

    :pswitch_38
    const/4 v3, 0x1

    iget v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v5, v3

    iput v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    goto :goto_25

    :pswitch_39
    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->locals:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    aget-object v3, v3, v5

    if-nez v3, :cond_2e

    invoke-direct {v2, v7, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->retrieveLocal(II)Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    move-result-object v3

    :cond_2e
    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto :goto_25

    :pswitch_3a
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_25

    :pswitch_3b
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_25

    :pswitch_3c
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_25

    :pswitch_3d
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_25

    :pswitch_3e
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    add-int/lit8 v0, v0, 0x1

    move v7, v5

    move/from16 v26, v11

    :goto_2a
    move/from16 v28, v12

    :goto_2b
    const/4 v3, 0x0

    :goto_2c
    move/from16 v5, p5

    goto/16 :goto_41

    :pswitch_3f
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v5, 0x1

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v7, v5

    new-instance v9, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-direct {v9, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    aput-object v9, v3, v7

    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_26

    :pswitch_40
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v5

    aget v5, v27, v5

    invoke-direct {v2, v6, v3, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v5

    aget v5, v27, v5

    add-int/lit8 v7, v5, 0x3

    invoke-direct {v2, v6, v3, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v5

    invoke-virtual {v2, v6, v7, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->utf8At([BII)[C

    move-result-object v5

    iget-object v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v9, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v9, v3

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    move/from16 v26, v11

    const/4 v11, 0x0

    invoke-direct {v3, v11, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(I[C)V

    aput-object v3, v7, v9

    add-int/lit8 v0, v0, 0x3

    move/from16 v5, p5

    goto/16 :goto_27

    :pswitch_41
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    move/from16 v26, v11

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    add-int/lit8 v0, v0, 0x1

    sub-int v3, v0, p4

    invoke-direct {v2, v10, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addRealJumpTarget(Ljava/util/Set;I)V

    :goto_2d
    move v7, v5

    goto :goto_2a

    :pswitch_42
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v5, 0x1

    move/from16 v26, v11

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v7, v5

    new-instance v9, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    sget-object v11, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-direct {v9, v11}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    aput-object v9, v3, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :pswitch_43
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v5, 0x1

    move/from16 v26, v11

    invoke-direct {v2, v1, v5, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    aget v3, v27, v3

    invoke-direct {v2, v6, v5, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    aget v3, v27, v3

    add-int/lit8 v7, v3, 0x3

    invoke-direct {v2, v6, v5, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    invoke-virtual {v2, v6, v7, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->utf8At([BII)[C

    move-result-object v3

    array-length v7, v3

    const/4 v9, 0x0

    aget-char v11, v3, v9

    const/16 v5, 0x5b

    if-eq v11, v5, :cond_2f

    add-int/lit8 v11, v7, 0x3

    new-array v11, v11, [C

    move/from16 v28, v12

    const/4 v12, 0x2

    invoke-static {v3, v9, v11, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-char v5, v11, v9

    const/16 v3, 0x4c

    const/4 v5, 0x1

    aput-char v3, v11, v5

    add-int/lit8 v7, v7, 0x2

    const/16 v3, 0x3b

    aput-char v3, v11, v7

    goto :goto_2e

    :cond_2f
    move/from16 v28, v12

    const/4 v5, 0x1

    add-int/lit8 v11, v7, 0x1

    new-array v11, v11, [C

    invoke-static {v3, v9, v11, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x5b

    aput-char v3, v11, v9

    :goto_2e
    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v7, v5

    new-instance v12, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    invoke-direct {v12, v9, v11}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(I[C)V

    aput-object v12, v3, v7

    add-int/lit8 v0, v0, 0x3

    move v7, v5

    move v3, v9

    goto/16 :goto_2c

    :pswitch_44
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v5, 0x1

    const/4 v9, 0x0

    move/from16 v26, v11

    move/from16 v28, v12

    invoke-direct {v2, v1, v5, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u1At([BII)I

    move-result v3

    packed-switch v3, :pswitch_data_5

    move-object/from16 v3, v17

    goto :goto_2f

    :pswitch_45
    const/4 v3, 0x2

    new-array v3, v3, [C

    const/16 v7, 0x5b

    aput-char v7, v3, v9

    const/16 v7, 0x4a

    aput-char v7, v3, v5

    goto :goto_2f

    :pswitch_46
    const/4 v3, 0x2

    const/16 v7, 0x5b

    new-array v3, v3, [C

    aput-char v7, v3, v9

    const/16 v7, 0x49

    aput-char v7, v3, v5

    goto :goto_2f

    :pswitch_47
    const/4 v3, 0x2

    const/16 v7, 0x5b

    new-array v3, v3, [C

    aput-char v7, v3, v9

    const/16 v7, 0x53

    aput-char v7, v3, v5

    goto :goto_2f

    :pswitch_48
    const/4 v3, 0x2

    const/16 v7, 0x5b

    new-array v3, v3, [C

    aput-char v7, v3, v9

    const/16 v7, 0x42

    aput-char v7, v3, v5

    goto :goto_2f

    :pswitch_49
    const/4 v3, 0x2

    const/16 v7, 0x5b

    new-array v3, v3, [C

    aput-char v7, v3, v9

    const/16 v7, 0x44

    aput-char v7, v3, v5

    goto :goto_2f

    :pswitch_4a
    const/4 v3, 0x2

    const/16 v7, 0x5b

    new-array v3, v3, [C

    aput-char v7, v3, v9

    const/16 v7, 0x46

    aput-char v7, v3, v5

    goto :goto_2f

    :pswitch_4b
    const/4 v3, 0x2

    const/16 v7, 0x5b

    new-array v3, v3, [C

    aput-char v7, v3, v9

    const/16 v7, 0x43

    aput-char v7, v3, v5

    goto :goto_2f

    :pswitch_4c
    const/4 v3, 0x2

    const/16 v7, 0x5b

    new-array v3, v3, [C

    aput-char v7, v3, v9

    const/16 v7, 0x5a

    aput-char v7, v3, v5

    :goto_2f
    iget-object v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v9, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v9, v5

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    invoke-direct {v11, v5, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(I[C)V

    aput-object v11, v7, v9

    add-int/lit8 v0, v0, 0x2

    :goto_30
    move v7, v5

    goto/16 :goto_2b

    :pswitch_4d
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v5, 0x1

    move/from16 v26, v11

    move/from16 v28, v12

    invoke-direct {v2, v1, v5, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    aget v3, v27, v3

    invoke-direct {v2, v6, v5, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    aget v3, v27, v3

    add-int/lit8 v9, v3, 0x3

    invoke-direct {v2, v6, v5, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    invoke-virtual {v2, v6, v9, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->utf8At([BII)[C

    move-result-object v3

    new-instance v9, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-direct {v9, v11, v12, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(II[C)V

    iput v7, v9, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->offset:I

    invoke-virtual {v8, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_30

    :pswitch_4e
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v5, 0x1

    move/from16 v26, v11

    move/from16 v28, v12

    invoke-direct {v2, v1, v5, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    aget v3, v27, v3

    const/4 v7, 0x3

    invoke-direct {v2, v6, v7, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    aget v3, v27, v3

    invoke-direct {v2, v6, v7, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    aget v3, v27, v3

    add-int/lit8 v7, v3, 0x3

    invoke-direct {v2, v6, v5, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    invoke-virtual {v2, v6, v7, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->utf8At([BII)[C

    move-result-object v3

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->getParametersCount([C)I

    move-result v9

    sub-int/2addr v7, v9

    iput v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->getReturnType([C)[C

    move-result-object v3

    array-length v7, v3

    if-ne v7, v5, :cond_35

    const/4 v5, 0x0

    aget-char v3, v3, v5

    const/16 v5, 0x46

    if-eq v3, v5, :cond_34

    const/16 v5, 0x53

    if-eq v3, v5, :cond_33

    const/16 v5, 0x5a

    if-eq v3, v5, :cond_32

    const/16 v5, 0x49

    if-eq v3, v5, :cond_31

    const/16 v5, 0x4a

    if-eq v3, v5, :cond_30

    packed-switch v3, :pswitch_data_6

    goto :goto_31

    :pswitch_4f
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_31
    const/4 v11, 0x1

    goto :goto_32

    :pswitch_50
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->CHAR:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_31

    :pswitch_51
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BYTE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_31

    :cond_30
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_31

    :cond_31
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_31

    :cond_32
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_31

    :cond_33
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->SHORT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_31

    :cond_34
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_31

    :cond_35
    const/4 v5, 0x0

    aget-char v7, v3, v5

    const/16 v9, 0x5b

    if-ne v7, v9, :cond_36

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    invoke-direct {v7, v5, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(I[C)V

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto :goto_31

    :cond_36
    new-instance v7, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    array-length v9, v3

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    invoke-static {v3, v11, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v3

    invoke-direct {v7, v5, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(I[C)V

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    :goto_32
    add-int/lit8 v0, v0, 0x5

    :goto_33
    move/from16 v5, p5

    move v7, v11

    goto/16 :goto_24

    :pswitch_52
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    move/from16 v26, v11

    move/from16 v28, v12

    const/4 v11, 0x1

    invoke-direct {v2, v1, v11, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    aget v3, v27, v3

    const/4 v5, 0x3

    invoke-direct {v2, v6, v5, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    aget v7, v27, v3

    invoke-direct {v2, v6, v5, v7}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v5

    aget v5, v27, v5

    add-int/lit8 v7, v5, 0x3

    invoke-direct {v2, v6, v11, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v5

    invoke-virtual {v2, v6, v7, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->utf8At([BII)[C

    move-result-object v5

    aget v3, v27, v3

    invoke-direct {v2, v6, v11, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    aget v3, v27, v3

    add-int/lit8 v7, v3, 0x3

    invoke-direct {v2, v6, v11, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    invoke-virtual {v2, v6, v7, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->utf8At([BII)[C

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    invoke-direct {v2, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->getParametersCount([C)I

    move-result v7

    add-int/2addr v7, v11

    sub-int/2addr v3, v7

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    invoke-direct {v2, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->getReturnType([C)[C

    move-result-object v3

    array-length v5, v3

    if-ne v5, v11, :cond_3c

    const/4 v5, 0x0

    aget-char v3, v3, v5

    const/16 v5, 0x46

    if-eq v3, v5, :cond_3b

    const/16 v5, 0x53

    if-eq v3, v5, :cond_3a

    const/16 v5, 0x5a

    if-eq v3, v5, :cond_39

    const/16 v5, 0x49

    if-eq v3, v5, :cond_38

    const/16 v5, 0x4a

    if-eq v3, v5, :cond_37

    packed-switch v3, :pswitch_data_7

    goto/16 :goto_31

    :pswitch_53
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_31

    :pswitch_54
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->CHAR:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_31

    :pswitch_55
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BYTE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_31

    :cond_37
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_31

    :cond_38
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_31

    :cond_39
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_31

    :cond_3a
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->SHORT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_31

    :cond_3b
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_31

    :cond_3c
    const/4 v5, 0x0

    aget-char v7, v3, v5

    const/16 v9, 0x5b

    if-ne v7, v9, :cond_3d

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    invoke-direct {v7, v5, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(I[C)V

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto/16 :goto_31

    :cond_3d
    new-instance v7, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    array-length v9, v3

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    invoke-static {v3, v11, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v3

    invoke-direct {v7, v5, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(I[C)V

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto/16 :goto_32

    :pswitch_56
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    move/from16 v26, v11

    move/from16 v28, v12

    const/4 v11, 0x1

    invoke-direct {v2, v1, v11, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    aget v3, v27, v3

    const/4 v5, 0x3

    invoke-direct {v2, v6, v5, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    aget v7, v27, v3

    invoke-direct {v2, v6, v5, v7}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v5

    aget v5, v27, v5

    add-int/lit8 v7, v5, 0x3

    invoke-direct {v2, v6, v11, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v5

    invoke-virtual {v2, v6, v7, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->utf8At([BII)[C

    move-result-object v5

    aget v3, v27, v3

    invoke-direct {v2, v6, v11, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    aget v3, v27, v3

    add-int/lit8 v7, v3, 0x3

    invoke-direct {v2, v6, v11, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    invoke-virtual {v2, v6, v7, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->utf8At([BII)[C

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    invoke-direct {v2, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->getParametersCount([C)I

    move-result v7

    sub-int/2addr v3, v7

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    invoke-direct {v2, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->getReturnType([C)[C

    move-result-object v3

    array-length v5, v3

    if-ne v5, v11, :cond_43

    const/4 v5, 0x0

    aget-char v3, v3, v5

    const/16 v5, 0x46

    if-eq v3, v5, :cond_42

    const/16 v5, 0x53

    if-eq v3, v5, :cond_41

    const/16 v5, 0x5a

    if-eq v3, v5, :cond_40

    const/16 v5, 0x49

    if-eq v3, v5, :cond_3f

    const/16 v5, 0x4a

    if-eq v3, v5, :cond_3e

    packed-switch v3, :pswitch_data_8

    goto :goto_34

    :pswitch_57
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_34
    const/4 v11, 0x1

    goto :goto_35

    :pswitch_58
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->CHAR:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_34

    :pswitch_59
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BYTE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_34

    :cond_3e
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_34

    :cond_3f
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_34

    :cond_40
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_34

    :cond_41
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->SHORT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_34

    :cond_42
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_34

    :cond_43
    const/4 v5, 0x0

    aget-char v7, v3, v5

    const/16 v9, 0x5b

    if-ne v7, v9, :cond_44

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    invoke-direct {v7, v5, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(I[C)V

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto :goto_34

    :cond_44
    new-instance v7, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    array-length v9, v3

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    invoke-static {v3, v11, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v3

    invoke-direct {v7, v5, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(I[C)V

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    :goto_35
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_33

    :pswitch_5a
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    move/from16 v26, v11

    move/from16 v28, v12

    const/4 v11, 0x1

    invoke-direct {v2, v1, v11, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    aget v3, v27, v3

    const/4 v5, 0x3

    invoke-direct {v2, v6, v5, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    aget v7, v27, v3

    invoke-direct {v2, v6, v5, v7}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v5

    aget v5, v27, v5

    add-int/lit8 v7, v5, 0x3

    invoke-direct {v2, v6, v11, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v5

    invoke-virtual {v2, v6, v7, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->utf8At([BII)[C

    move-result-object v5

    aget v3, v27, v3

    invoke-direct {v2, v6, v11, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    aget v3, v27, v3

    add-int/lit8 v7, v3, 0x3

    invoke-direct {v2, v6, v11, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    invoke-virtual {v2, v6, v7, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->utf8At([BII)[C

    move-result-object v3

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    invoke-direct {v2, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->getParametersCount([C)I

    move-result v9

    sub-int/2addr v7, v9

    iput v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Init:[C

    invoke-static {v7, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_45

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v7, v11

    aget-object v3, v3, v7

    const/4 v7, 0x7

    iput v7, v3, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;->tag:I

    :cond_45
    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v3, v11

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    invoke-direct {v2, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->getReturnType([C)[C

    move-result-object v3

    array-length v5, v3

    if-ne v5, v11, :cond_4b

    const/4 v5, 0x0

    aget-char v3, v3, v5

    const/16 v5, 0x46

    if-eq v3, v5, :cond_4a

    const/16 v5, 0x53

    if-eq v3, v5, :cond_49

    const/16 v5, 0x5a

    if-eq v3, v5, :cond_48

    const/16 v5, 0x49

    if-eq v3, v5, :cond_47

    const/16 v5, 0x4a

    if-eq v3, v5, :cond_46

    packed-switch v3, :pswitch_data_9

    goto/16 :goto_34

    :pswitch_5b
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_34

    :pswitch_5c
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->CHAR:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_34

    :pswitch_5d
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BYTE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_34

    :cond_46
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_34

    :cond_47
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_34

    :cond_48
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_34

    :cond_49
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->SHORT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_34

    :cond_4a
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_34

    :cond_4b
    const/4 v5, 0x0

    aget-char v7, v3, v5

    const/16 v9, 0x5b

    if-ne v7, v9, :cond_4c

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    invoke-direct {v7, v5, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(I[C)V

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto/16 :goto_34

    :cond_4c
    new-instance v7, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    array-length v9, v3

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    invoke-static {v3, v11, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v3

    invoke-direct {v7, v5, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(I[C)V

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto/16 :goto_35

    :pswitch_5e
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    move/from16 v26, v11

    move/from16 v28, v12

    const/4 v11, 0x1

    invoke-direct {v2, v1, v11, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    aget v3, v27, v3

    const/4 v5, 0x3

    invoke-direct {v2, v6, v5, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    aget v7, v27, v3

    invoke-direct {v2, v6, v5, v7}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v5

    aget v5, v27, v5

    add-int/lit8 v7, v5, 0x3

    invoke-direct {v2, v6, v11, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v5

    invoke-virtual {v2, v6, v7, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->utf8At([BII)[C

    move-result-object v5

    aget v3, v27, v3

    invoke-direct {v2, v6, v11, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    aget v3, v27, v3

    add-int/lit8 v7, v3, 0x3

    invoke-direct {v2, v6, v11, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    invoke-virtual {v2, v6, v7, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->utf8At([BII)[C

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    invoke-direct {v2, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->getParametersCount([C)I

    move-result v7

    add-int/2addr v7, v11

    sub-int/2addr v3, v7

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    invoke-direct {v2, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->getReturnType([C)[C

    move-result-object v3

    array-length v5, v3

    if-ne v5, v11, :cond_52

    const/4 v5, 0x0

    aget-char v3, v3, v5

    const/16 v5, 0x46

    if-eq v3, v5, :cond_51

    const/16 v5, 0x53

    if-eq v3, v5, :cond_50

    const/16 v5, 0x5a

    if-eq v3, v5, :cond_4f

    const/16 v5, 0x49

    if-eq v3, v5, :cond_4e

    const/16 v5, 0x4a

    if-eq v3, v5, :cond_4d

    packed-switch v3, :pswitch_data_a

    goto :goto_36

    :pswitch_5f
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_36

    :pswitch_60
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->CHAR:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_36

    :pswitch_61
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BYTE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_36

    :cond_4d
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_36

    :cond_4e
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_36

    :cond_4f
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_36

    :cond_50
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->SHORT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_36

    :cond_51
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_36

    :cond_52
    const/4 v5, 0x0

    aget-char v7, v3, v5

    const/16 v9, 0x5b

    if-ne v7, v9, :cond_53

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    invoke-direct {v7, v5, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(I[C)V

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto :goto_36

    :cond_53
    new-instance v7, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    array-length v9, v3

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    invoke-static {v3, v11, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v3

    invoke-direct {v7, v5, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(I[C)V

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    :goto_36
    add-int/lit8 v0, v0, 0x3

    :goto_37
    move/from16 v5, p5

    goto/16 :goto_28

    :pswitch_62
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    move/from16 v26, v11

    move/from16 v28, v12

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    const/4 v5, 0x2

    sub-int/2addr v3, v5

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    goto :goto_36

    :pswitch_63
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v3, 0x1

    move/from16 v26, v11

    move/from16 v28, v12

    invoke-direct {v2, v1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v5

    aget v5, v27, v5

    const/4 v7, 0x3

    invoke-direct {v2, v6, v7, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v5

    aget v5, v27, v5

    invoke-direct {v2, v6, v7, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v5

    aget v5, v27, v5

    add-int/lit8 v7, v5, 0x3

    invoke-direct {v2, v6, v3, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v5

    invoke-virtual {v2, v6, v7, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->utf8At([BII)[C

    move-result-object v5

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v7, v3

    iput v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    array-length v7, v5

    if-ne v7, v3, :cond_59

    const/4 v3, 0x0

    aget-char v5, v5, v3

    const/16 v3, 0x46

    if-eq v5, v3, :cond_58

    const/16 v3, 0x53

    if-eq v5, v3, :cond_57

    const/16 v3, 0x5a

    if-eq v5, v3, :cond_56

    const/16 v3, 0x49

    if-eq v5, v3, :cond_55

    const/16 v3, 0x4a

    if-eq v5, v3, :cond_54

    packed-switch v5, :pswitch_data_b

    goto/16 :goto_34

    :pswitch_64
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_34

    :pswitch_65
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->CHAR:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_34

    :pswitch_66
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BYTE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_34

    :cond_54
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_34

    :cond_55
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_34

    :cond_56
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_34

    :cond_57
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->SHORT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_34

    :cond_58
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_34

    :cond_59
    const/4 v3, 0x0

    aget-char v7, v5, v3

    const/16 v9, 0x5b

    if-ne v7, v9, :cond_5a

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    invoke-direct {v7, v3, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(I[C)V

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto/16 :goto_34

    :cond_5a
    new-instance v7, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    array-length v9, v5

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    invoke-static {v5, v11, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v5

    invoke-direct {v7, v3, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(I[C)V

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto/16 :goto_35

    :pswitch_67
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    move/from16 v26, v11

    move/from16 v28, v12

    const/4 v11, 0x1

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v3, v11

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    goto/16 :goto_35

    :pswitch_68
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    move/from16 v26, v11

    move/from16 v28, v12

    const/4 v11, 0x1

    invoke-direct {v2, v1, v11, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    aget v3, v27, v3

    const/4 v5, 0x3

    invoke-direct {v2, v6, v5, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    aget v3, v27, v3

    invoke-direct {v2, v6, v5, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    aget v3, v27, v3

    add-int/lit8 v5, v3, 0x3

    invoke-direct {v2, v6, v11, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u2At([BII)I

    move-result v3

    invoke-virtual {v2, v6, v5, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->utf8At([BII)[C

    move-result-object v3

    array-length v5, v3

    if-ne v5, v11, :cond_60

    const/4 v5, 0x0

    aget-char v3, v3, v5

    const/16 v5, 0x46

    if-eq v3, v5, :cond_5f

    const/16 v5, 0x53

    if-eq v3, v5, :cond_5e

    const/16 v5, 0x5a

    if-eq v3, v5, :cond_5d

    const/16 v5, 0x49

    if-eq v3, v5, :cond_5c

    const/16 v5, 0x4a

    if-eq v3, v5, :cond_5b

    packed-switch v3, :pswitch_data_c

    goto/16 :goto_36

    :pswitch_69
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_36

    :pswitch_6a
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->CHAR:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_36

    :pswitch_6b
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BYTE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_36

    :cond_5b
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_36

    :cond_5c
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_36

    :cond_5d
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_36

    :cond_5e
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->SHORT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_36

    :cond_5f
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_36

    :cond_60
    const/4 v5, 0x0

    aget-char v7, v3, v5

    const/16 v9, 0x5b

    if-ne v7, v9, :cond_61

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    invoke-direct {v7, v5, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(I[C)V

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto/16 :goto_36

    :cond_61
    new-instance v7, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    array-length v9, v3

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    invoke-static {v3, v11, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v3

    invoke-direct {v7, v5, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(I[C)V

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V

    goto/16 :goto_36

    :pswitch_6c
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    move/from16 v26, v11

    move/from16 v28, v12

    add-int/lit8 v0, v0, 0x1

    sub-int v3, v0, p4

    invoke-direct {v2, v10, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addRealJumpTarget(Ljava/util/Set;I)V

    goto/16 :goto_37

    :pswitch_6d
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    move/from16 v26, v11

    move/from16 v28, v12

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    add-int/lit8 v0, v0, 0x1

    sub-int v3, v0, p4

    invoke-direct {v2, v10, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addRealJumpTarget(Ljava/util/Set;I)V

    goto/16 :goto_37

    :pswitch_6e
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    move/from16 v26, v11

    move/from16 v28, v12

    :cond_62
    add-int/lit8 v0, v0, 0x1

    sub-int v3, v0, p4

    const/4 v5, 0x3

    and-int/2addr v3, v5

    if-nez v3, :cond_62

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->i4At([BII)I

    move-result v5

    add-int/2addr v5, v7

    invoke-direct {v2, v10, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addRealJumpTarget(Ljava/util/Set;I)V

    add-int/lit8 v5, v0, 0x4

    invoke-direct {v2, v1, v3, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->u4At([BII)J

    move-result-wide v11

    long-to-int v3, v11

    add-int/lit8 v0, v0, 0x8

    const/4 v5, 0x0

    :goto_38
    if-lt v5, v3, :cond_63

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    goto/16 :goto_37

    :cond_63
    add-int/lit8 v9, v0, 0x4

    const/4 v11, 0x0

    invoke-direct {v2, v1, v11, v9}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->i4At([BII)I

    move-result v9

    add-int/2addr v9, v7

    invoke-direct {v2, v10, v9}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addRealJumpTarget(Ljava/util/Set;I)V

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    :pswitch_6f
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    move/from16 v26, v11

    move/from16 v28, v12

    :goto_39
    add-int/lit8 v0, v0, 0x1

    sub-int v3, v0, p4

    const/4 v5, 0x3

    and-int/2addr v3, v5

    if-nez v3, :cond_65

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->i4At([BII)I

    move-result v5

    add-int/2addr v5, v7

    invoke-direct {v2, v10, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addRealJumpTarget(Ljava/util/Set;I)V

    add-int/lit8 v5, v0, 0x4

    invoke-direct {v2, v1, v3, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->i4At([BII)I

    move-result v5

    add-int/lit8 v9, v0, 0x8

    invoke-direct {v2, v1, v3, v9}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->i4At([BII)I

    move-result v9

    add-int/lit8 v0, v0, 0xc

    sub-int/2addr v9, v5

    const/4 v5, 0x1

    add-int/2addr v9, v5

    move v11, v3

    :goto_3a
    if-lt v11, v9, :cond_64

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v7, v5

    iput v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    :goto_3b
    move/from16 v5, p5

    goto/16 :goto_29

    :cond_64
    invoke-direct {v2, v1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->i4At([BII)I

    move-result v5

    add-int/2addr v5, v7

    invoke-direct {v2, v10, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addRealJumpTarget(Ljava/util/Set;I)V

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x1

    goto :goto_3a

    :cond_65
    const/4 v3, 0x0

    goto :goto_39

    :pswitch_70
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v3, 0x0

    const/4 v9, 0x1

    move/from16 v26, v11

    move/from16 v28, v12

    invoke-direct {v2, v1, v9, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->i2At([BII)I

    move-result v5

    add-int/2addr v5, v7

    invoke-direct {v2, v10, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addRealJumpTarget(Ljava/util/Set;I)V

    add-int/lit8 v0, v0, 0x3

    sub-int v5, v0, p4

    invoke-direct {v2, v10, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addRealJumpTarget(Ljava/util/Set;I)V

    :goto_3c
    move/from16 v5, p5

    move v7, v9

    goto/16 :goto_41

    :pswitch_71
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v3, 0x0

    const/4 v9, 0x1

    move/from16 v26, v11

    move/from16 v28, v12

    iget v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    const/4 v11, 0x2

    sub-int/2addr v5, v11

    iput v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    invoke-direct {v2, v1, v9, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->i2At([BII)I

    move-result v5

    add-int/2addr v5, v7

    invoke-direct {v2, v10, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addRealJumpTarget(Ljava/util/Set;I)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_3c

    :pswitch_72
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v3, 0x0

    const/4 v9, 0x1

    move/from16 v26, v11

    move/from16 v28, v12

    iget v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v5, v9

    iput v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    invoke-direct {v2, v1, v9, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->i2At([BII)I

    move-result v5

    add-int/2addr v5, v7

    invoke-direct {v2, v10, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addRealJumpTarget(Ljava/util/Set;I)V

    :goto_3d
    add-int/lit8 v0, v0, 0x3

    goto :goto_3b

    :pswitch_73
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v3, 0x0

    move/from16 v26, v11

    move/from16 v28, v12

    iget v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    const/4 v7, 0x2

    sub-int/2addr v5, v7

    iput v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v8, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->addStackItem(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_3e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3b

    :pswitch_74
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v3, 0x0

    move/from16 v26, v11

    move/from16 v28, v12

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->SHORT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-direct {v11, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    aput-object v11, v5, v7

    :goto_3f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3c

    :pswitch_75
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v3, 0x0

    const/4 v9, 0x1

    move/from16 v26, v11

    move/from16 v28, v12

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v7, v9

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->CHAR:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-direct {v11, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    aput-object v11, v5, v7

    goto :goto_3f

    :pswitch_76
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v3, 0x0

    const/4 v9, 0x1

    move/from16 v26, v11

    move/from16 v28, v12

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v7, v9

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BYTE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-direct {v11, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    aput-object v11, v5, v7

    goto :goto_3f

    :pswitch_77
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v3, 0x0

    const/4 v9, 0x1

    move/from16 v26, v11

    move/from16 v28, v12

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v7, v9

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-direct {v11, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    aput-object v11, v5, v7

    goto :goto_3f

    :pswitch_78
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v3, 0x0

    const/4 v9, 0x1

    move/from16 v26, v11

    move/from16 v28, v12

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v7, v9

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-direct {v11, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    aput-object v11, v5, v7

    goto :goto_3f

    :pswitch_79
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v3, 0x0

    const/4 v9, 0x1

    move/from16 v26, v11

    move/from16 v28, v12

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v7, v9

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-direct {v11, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    aput-object v11, v5, v7

    goto/16 :goto_3f

    :pswitch_7a
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v3, 0x0

    const/4 v9, 0x1

    move/from16 v26, v11

    move/from16 v28, v12

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v7, v9

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-direct {v11, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    aput-object v11, v5, v7

    goto/16 :goto_3f

    :pswitch_7b
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v3, 0x0

    const/4 v9, 0x1

    move/from16 v26, v11

    move/from16 v28, v12

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v7, v9

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-direct {v11, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    aput-object v11, v5, v7

    goto/16 :goto_3f

    :pswitch_7c
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v3, 0x0

    const/4 v9, 0x1

    move/from16 v26, v11

    move/from16 v28, v12

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v7, v9

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-direct {v11, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    aput-object v11, v5, v7

    goto/16 :goto_3f

    :pswitch_7d
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v3, 0x0

    const/4 v9, 0x1

    move/from16 v26, v11

    move/from16 v28, v12

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v7, v9

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-direct {v11, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    aput-object v11, v5, v7

    goto/16 :goto_3f

    :pswitch_7e
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v3, 0x0

    const/4 v9, 0x1

    move/from16 v26, v11

    move/from16 v28, v12

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v7, v9

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-direct {v11, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    aput-object v11, v5, v7

    goto/16 :goto_3f

    :pswitch_7f
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v3, 0x0

    const/4 v9, 0x1

    move/from16 v26, v11

    move/from16 v28, v12

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v7, v9

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-direct {v11, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    aput-object v11, v5, v7

    goto/16 :goto_3f

    :pswitch_80
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v3, 0x0

    const/4 v9, 0x1

    move/from16 v26, v11

    move/from16 v28, v12

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v7, v9

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-direct {v11, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    aput-object v11, v5, v7

    goto/16 :goto_3f

    :pswitch_81
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v3, 0x0

    const/4 v9, 0x1

    move/from16 v26, v11

    move/from16 v28, v12

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v7, v9

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-direct {v11, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    aput-object v11, v5, v7

    goto/16 :goto_3f

    :pswitch_82
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v3, 0x0

    const/4 v9, 0x1

    move/from16 v26, v11

    move/from16 v28, v12

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->stackItems:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    sub-int/2addr v7, v9

    new-instance v9, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    sget-object v11, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-direct {v9, v11}, Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    aput-object v9, v5, v7

    goto/16 :goto_3e

    :pswitch_83
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v6, v26

    move-object/from16 v10, v28

    const/4 v3, 0x0

    move/from16 v26, v11

    move/from16 v28, v12

    goto/16 :goto_3d

    :goto_40
    iget v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    iput v5, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrame;->numberOfStackItems:I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2c

    :goto_41
    add-int v9, v5, p4

    if-lt v0, v9, :cond_66

    invoke-direct {v2, v10, v4, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->filterFakeFrames(Ljava/util/Set;Ljava/util/Map;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_66
    move/from16 v11, v26

    move/from16 v12, v28

    move-object/from16 v7, v29

    move/from16 v1, v30

    move-object/from16 v3, v31

    move-object/from16 v5, v32

    move-object/from16 v9, v35

    move-object/from16 v26, v6

    move-object/from16 v28, v10

    move-object/from16 v6, v34

    move/from16 v10, v36

    move-object/from16 v37, v2

    move v2, v0

    move-object/from16 v0, v37

    goto/16 :goto_a

    :cond_67
    move-object/from16 v34, v6

    move-object/from16 v29, v7

    move/from16 v36, v10

    move/from16 v28, v12

    move-object/from16 v6, v26

    const/4 v7, 0x1

    move-object v10, v5

    move/from16 v26, v11

    move v5, v3

    const/4 v3, 0x0

    move-object/from16 v37, v2

    move-object v2, v0

    move v0, v1

    move-object/from16 v1, v37

    iget-object v11, v2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object v11, v11, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    aget-object v11, v11, v9

    if-eqz v11, :cond_68

    iget v11, v11, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    invoke-direct {v2, v10, v11}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addRealJumpTarget(Ljava/util/Set;I)V

    :cond_68
    add-int/lit8 v9, v9, 0x1

    move v3, v5

    move-object v5, v10

    move/from16 v11, v26

    move/from16 v12, v28

    move-object/from16 v7, v29

    move/from16 v10, v36

    move-object/from16 v26, v6

    move-object/from16 v6, v34

    move-object/from16 v37, v1

    move v1, v0

    move-object v0, v2

    move-object/from16 v2, v37

    goto/16 :goto_9

    :pswitch_data_0
    .packed-switch -0x80
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_70
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x56
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6c
        :pswitch_68
        :pswitch_67
        :pswitch_63
        :pswitch_62
        :pswitch_5e
        :pswitch_5a
        :pswitch_56
        :pswitch_52
        :pswitch_4e
        :pswitch_4d
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3e
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_31
        :pswitch_30
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2c
        :pswitch_2c
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2a
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x15
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x36
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x4
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x42
        :pswitch_51
        :pswitch_50
        :pswitch_4f
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x42
        :pswitch_55
        :pswitch_54
        :pswitch_53
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x42
        :pswitch_59
        :pswitch_58
        :pswitch_57
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x42
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x42
        :pswitch_61
        :pswitch_60
        :pswitch_5f
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x42
        :pswitch_66
        :pswitch_65
        :pswitch_64
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x42
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
    .end packed-switch
.end method

.method public utf8At([BII)[C
    .locals 9

    new-array v0, p3, [C

    const/4 v1, 0x0

    move v2, p3

    move v3, v1

    :goto_0
    if-nez v2, :cond_1

    if-eq v3, p3, :cond_0

    new-array p1, v3, [C

    invoke-static {v0, v1, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p1

    :cond_0
    return-object v0

    :cond_1
    add-int/lit8 v4, p2, 0x1

    aget-byte v5, p1, p2

    and-int/lit16 v6, v5, 0xff

    add-int/lit8 v7, v2, -0x1

    and-int/lit16 v8, v5, 0x80

    if-eqz v8, :cond_3

    and-int/lit8 v6, v5, 0x20

    if-eqz v6, :cond_2

    add-int/lit8 v2, v2, -0x3

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0xc

    add-int/lit8 v6, p2, 0x2

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v5

    add-int/lit8 p2, p2, 0x3

    aget-byte v5, p1, v6

    and-int/lit8 v5, v5, 0x3f

    or-int v6, v4, v5

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, -0x2

    and-int/lit8 v5, v5, 0x1f

    shl-int/lit8 v5, v5, 0x6

    add-int/lit8 p2, p2, 0x2

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x3f

    or-int v6, v5, v4

    goto :goto_1

    :cond_3
    move p2, v4

    move v2, v7

    :goto_1
    add-int/lit8 v4, v3, 0x1

    int-to-char v5, v6

    aput-char v5, v0, v3

    move v3, v4

    goto :goto_0
.end method
