.class public abstract Lorg/eclipse/jdt/internal/core/nd/AbstractTypeFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/eclipse/jdt/internal/core/nd/ITypeFactory<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destruct(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 0

    return-void
.end method

.method public destructFields(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 0

    return-void
.end method

.method public getDeletionSemantics()Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;->EXPLICIT:Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;

    return-object v0
.end method

.method public hasDestructor()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReadyForDeletion(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
