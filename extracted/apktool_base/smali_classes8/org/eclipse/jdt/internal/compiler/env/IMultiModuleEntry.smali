.class public interface abstract Lorg/eclipse/jdt/internal/compiler/env/IMultiModuleEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;


# virtual methods
.method public abstract getModule([C)Lorg/eclipse/jdt/internal/compiler/env/IModule;
.end method

.method public abstract getModuleNames(Ljava/util/Collection;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
