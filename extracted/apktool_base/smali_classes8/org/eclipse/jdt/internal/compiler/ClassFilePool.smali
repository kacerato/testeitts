.class public Lorg/eclipse/jdt/internal/compiler/ClassFilePool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final POOL_SIZE:I = 0x19


# instance fields
.field classFiles:[Lorg/eclipse/jdt/internal/compiler/ClassFile;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/ClassFile;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFilePool;->classFiles:[Lorg/eclipse/jdt/internal/compiler/ClassFile;

    return-void
.end method

.method public static newInstance()Lorg/eclipse/jdt/internal/compiler/ClassFilePool;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ClassFilePool;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/ClassFilePool;-><init>()V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized acquire(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)Lorg/eclipse/jdt/internal/compiler/ClassFile;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    :try_start_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFilePool;->classFiles:[Lorg/eclipse/jdt/internal/compiler/ClassFile;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    if-nez v1, :cond_1

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ClassFile;

    invoke-direct {v1, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFilePool;->classFiles:[Lorg/eclipse/jdt/internal/compiler/ClassFile;

    aput-object v1, p1, v0

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->isShared:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    iget-boolean v3, v1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->isShared:Z

    if-nez v3, :cond_2

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->reset(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->isShared:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized acquireForModule(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)Lorg/eclipse/jdt/internal/compiler/ClassFile;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    :try_start_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ClassFile;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFilePool;->classFiles:[Lorg/eclipse/jdt/internal/compiler/ClassFile;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    if-nez v1, :cond_1

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ClassFile;

    invoke-direct {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFilePool;->classFiles:[Lorg/eclipse/jdt/internal/compiler/ClassFile;

    aput-object v1, p1, v0

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->isShared:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    iget-boolean v3, v1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->isShared:Z

    if-nez v3, :cond_2

    const/4 p1, 0x0

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->reset(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->isShared:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized release(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->isShared:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFilePool;->classFiles:[Lorg/eclipse/jdt/internal/compiler/ClassFile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
