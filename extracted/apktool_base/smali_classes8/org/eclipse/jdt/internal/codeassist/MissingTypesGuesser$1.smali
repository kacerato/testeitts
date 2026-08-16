.class Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->findTypeNames([[C)[[[C
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;

.field private final synthetic val$isQualified:Z

.field private final synthetic val$missingFullyQualifiedName:[C

.field private final synthetic val$results:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;Z[CLjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$1;->this$0:Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$1;->val$isQualified:Z

    iput-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$1;->val$missingFullyQualifiedName:[C

    iput-object p4, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$1;->val$results:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptConstructor(I[CI[C[[C[[CI[CILjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 0

    return-void
.end method

.method public acceptModule([C)V
    .locals 0

    return-void
.end method

.method public acceptPackage([C)V
    .locals 0

    return-void
.end method

.method public acceptType([C[C[[CILorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 0

    const/16 p4, 0x2e

    invoke-static {p3, p4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p3

    invoke-static {p3, p2, p4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p2

    invoke-static {p1, p2, p4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p1

    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$1;->val$isQualified:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$1;->val$missingFullyQualifiedName:[C

    invoke-static {p1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->endsWith([C[C)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p4, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$1;->val$results:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
