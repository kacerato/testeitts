.class Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$SuperTypesAnnotationWalker;
.super Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuperTypesAnnotationWalker"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;[CLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$SuperTypesAnnotationWalker;->this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;[CILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-void
.end method


# virtual methods
.method public toField()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Supertype has no field annotations"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toMethodParameter(S)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Supertype has no method parameter"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toMethodReturn()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Supertype has no method return"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toThrows(I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Supertype has no throws"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
