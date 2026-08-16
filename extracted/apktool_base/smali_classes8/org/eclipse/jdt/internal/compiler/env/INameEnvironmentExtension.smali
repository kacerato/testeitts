.class public interface abstract Lorg/eclipse/jdt/internal/compiler/env/INameEnvironmentExtension;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;


# virtual methods
.method public findType([C[[CZ)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/env/INameEnvironmentExtension;->findType([C[[CZ[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1
.end method

.method public abstract findType([C[[CZ[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
.end method
