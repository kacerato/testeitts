.class public Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfReferencedTypesPattern;
.super Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;
.source "SourceFile"


# instance fields
.field protected enclosingElement:Lorg/eclipse/jdt/core/IJavaElement;

.field protected knownTypes:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;-><init>([C[CI)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfReferencedTypesPattern;->enclosingElement:Lorg/eclipse/jdt/core/IJavaElement;

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfReferencedTypesPattern;->knownTypes:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    return-void
.end method
