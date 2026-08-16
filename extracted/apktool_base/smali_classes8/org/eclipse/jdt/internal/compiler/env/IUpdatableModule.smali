.class public interface abstract Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddExports;,
        Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$AddReads;,
        Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;,
        Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;
    }
.end annotation


# virtual methods
.method public abstract addExports([C[[C)V
.end method

.method public abstract addReads([C)V
.end method

.method public abstract name()[C
.end method

.method public abstract setMainClassName([C)V
.end method

.method public abstract setPackageNames(Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;)V
.end method
