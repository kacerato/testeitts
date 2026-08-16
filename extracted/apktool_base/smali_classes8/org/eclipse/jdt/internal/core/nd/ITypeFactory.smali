.class public interface abstract Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract create(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "J)TT;"
        }
    .end annotation
.end method

.method public abstract destruct(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
.end method

.method public abstract destructFields(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
.end method

.method public abstract getDeletionSemantics()Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;
.end method

.method public abstract getElementClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getRecordSize()I
.end method

.method public abstract hasDestructor()Z
.end method

.method public abstract isReadyForDeletion(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Z
.end method
