.class public Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->NULL:[C

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/16 v2, 0x4e

    const/4 v3, 0x0

    aput-char v2, v1, v3

    const/16 v2, 0xc

    invoke-direct {p0, v2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;-><init>(I[C[C)V

    return-void
.end method


# virtual methods
.method public clone(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    return-object p0
.end method

.method public setTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V
    .locals 0

    return-void
.end method

.method public unannotated()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    return-object p0
.end method
