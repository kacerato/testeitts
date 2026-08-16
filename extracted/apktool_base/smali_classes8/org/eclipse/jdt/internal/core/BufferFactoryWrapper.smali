.class public Lorg/eclipse/jdt/internal/core/BufferFactoryWrapper;
.super Lorg/eclipse/jdt/core/WorkingCopyOwner;
.source "SourceFile"


# instance fields
.field public factory:Lorg/eclipse/jdt/core/IBufferFactory;


# direct methods
.method private constructor <init>(Lorg/eclipse/jdt/core/IBufferFactory;)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/core/WorkingCopyOwner;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/BufferFactoryWrapper;->factory:Lorg/eclipse/jdt/core/IBufferFactory;

    return-void
.end method

.method public static create(Lorg/eclipse/jdt/core/IBufferFactory;)Lorg/eclipse/jdt/core/WorkingCopyOwner;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/BufferFactoryWrapper;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/BufferFactoryWrapper;-><init>(Lorg/eclipse/jdt/core/IBufferFactory;)V

    return-object v0
.end method


# virtual methods
.method public createBuffer(Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/core/IBuffer;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BufferFactoryWrapper;->factory:Lorg/eclipse/jdt/core/IBufferFactory;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/core/WorkingCopyOwner;->createBuffer(Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/core/IBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Lorg/eclipse/jdt/core/IBufferFactory;->createBuffer(Lorg/eclipse/jdt/core/IOpenable;)Lorg/eclipse/jdt/core/IBuffer;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/BufferFactoryWrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/eclipse/jdt/internal/core/BufferFactoryWrapper;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BufferFactoryWrapper;->factory:Lorg/eclipse/jdt/core/IBufferFactory;

    if-nez v0, :cond_2

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/BufferFactoryWrapper;->factory:Lorg/eclipse/jdt/core/IBufferFactory;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1

    :cond_2
    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/BufferFactoryWrapper;->factory:Lorg/eclipse/jdt/core/IBufferFactory;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BufferFactoryWrapper;->factory:Lorg/eclipse/jdt/core/IBufferFactory;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FactoryWrapper for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/BufferFactoryWrapper;->factory:Lorg/eclipse/jdt/core/IBufferFactory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
