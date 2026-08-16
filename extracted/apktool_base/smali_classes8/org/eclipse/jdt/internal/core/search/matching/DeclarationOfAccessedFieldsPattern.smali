.class public Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfAccessedFieldsPattern;
.super Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;
.source "SourceFile"


# instance fields
.field protected enclosingElement:Lorg/eclipse/jdt/core/IJavaElement;

.field protected knownFields:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 8

    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;-><init>([C[C[C[C[CII)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfAccessedFieldsPattern;->enclosingElement:Lorg/eclipse/jdt/core/IJavaElement;

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfAccessedFieldsPattern;->knownFields:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    return-void
.end method
