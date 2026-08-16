.class public final LJAVARuntime/JCompiler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Java"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public static addListener(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    invoke-static {p0}, Ld8/j;->l(Ljava/lang/Object;)V

    return-void
.end method

.method public static engineClassAt(I)LJAVARuntime/JClass;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    invoke-static {}, Ld8/j;->W()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ld8/j;->j0(I)Le8/c;

    move-result-object p0

    new-instance v0, LJAVARuntime/JClass;

    invoke-virtual {p0}, Le8/c;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Le8/c;->d()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, LJAVARuntime/JClass;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The compiler is now compiling classes, please wait, you can check using JCompiler.isCompiling()"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static engineClassCount()I
    .locals 2

    invoke-static {}, Ld8/j;->W()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ld8/j;->k0()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The compiler is now compiling classes, please wait, you can check using JCompiler.isCompiling()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static findOfficialClass(Ljava/lang/String;)LJAVARuntime/JClass;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fullName"
        }
    .end annotation

    invoke-static {}, Ld8/j;->W()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Ld8/j;->k0()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Ld8/j;->j0(I)Le8/c;

    move-result-object v1

    invoke-virtual {v1}, Le8/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p0, LJAVARuntime/JClass;

    invoke-virtual {v1}, Le8/c;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1}, Le8/c;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, LJAVARuntime/JClass;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The compiler is now compiling classes, please wait, you can check using JCompiler.isCompiling()"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static findUserClass(Ljava/lang/String;)LJAVARuntime/JClass;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fullName"
        }
    .end annotation

    invoke-static {}, Ld8/j;->W()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Ld8/j;->K0()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-static {v1}, Ld8/j;->J0(I)Ld8/r;

    move-result-object v2

    iget-object v3, v2, Ld8/r;->c:Ljava/lang/Class;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p0, LJAVARuntime/JClass;

    iget-object v1, v2, Ld8/r;->c:Ljava/lang/Class;

    iget-object v2, v2, Ld8/r;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, LJAVARuntime/JClass;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The compiler is now compiling classes, please wait, you can check using JCompiler.isCompiling()"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAllClasses()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LJAVARuntime/JClass;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ld8/j;->W()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-static {}, Ld8/j;->k0()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-static {v2}, Ld8/j;->j0(I)Le8/c;

    move-result-object v3

    new-instance v4, LJAVARuntime/JClass;

    invoke-virtual {v3}, Le8/c;->a()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3}, Le8/c;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    invoke-direct {v4, v5, v3, v6}, LJAVARuntime/JClass;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    invoke-static {}, Ld8/j;->K0()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-static {v2}, Ld8/j;->J0(I)Ld8/r;

    move-result-object v3

    iget-object v4, v3, Ld8/r;->c:Ljava/lang/Class;

    new-instance v5, LJAVARuntime/JClass;

    iget-object v3, v3, Ld8/r;->b:Ljava/lang/String;

    invoke-direct {v5, v4, v3, v1}, LJAVARuntime/JClass;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The compiler is now compiling classes, please wait, you can check using JCompiler.isCompiling()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getEngineClasses()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LJAVARuntime/JClass;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ld8/j;->W()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Ld8/j;->k0()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Ld8/j;->j0(I)Le8/c;

    move-result-object v2

    new-instance v3, LJAVARuntime/JClass;

    invoke-virtual {v2}, Le8/c;->a()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2}, Le8/c;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-direct {v3, v4, v2, v5}, LJAVARuntime/JClass;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The compiler is now compiling classes, please wait, you can check using JCompiler.isCompiling()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getUsersClasses()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LJAVARuntime/JClass;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ld8/j;->W()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-static {}, Ld8/j;->K0()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-static {v2}, Ld8/j;->J0(I)Ld8/r;

    move-result-object v3

    iget-object v4, v3, Ld8/r;->c:Ljava/lang/Class;

    new-instance v5, LJAVARuntime/JClass;

    iget-object v3, v3, Ld8/r;->b:Ljava/lang/String;

    invoke-direct {v5, v4, v3, v1}, LJAVARuntime/JClass;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The compiler is now compiling classes, please wait, you can check using JCompiler.isCompiling()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isCompiling()Z
    .locals 1

    invoke-static {}, Ld8/j;->W()Z

    move-result v0

    return v0
.end method

.method public static removeListener(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    invoke-static {p0}, Ld8/j;->x0(Ljava/lang/Object;)V

    return-void
.end method

.method public static userClassAt(I)LJAVARuntime/JClass;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    invoke-static {}, Ld8/j;->W()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ld8/j;->J0(I)Ld8/r;

    move-result-object p0

    new-instance v0, LJAVARuntime/JClass;

    iget-object v1, p0, Ld8/r;->c:Ljava/lang/Class;

    iget-object p0, p0, Ld8/r;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, LJAVARuntime/JClass;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The compiler is now compiling classes, please wait, you can check using JCompiler.isCompiling()"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static userClassCount()I
    .locals 2

    invoke-static {}, Ld8/j;->W()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ld8/j;->K0()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The compiler is now compiling classes, please wait, you can check using JCompiler.isCompiling()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
