.class public final Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer$RewriteResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RewriteResult"
.end annotation


# instance fields
.field private final createdImports:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;"
        }
    .end annotation
.end field

.field private final textEdit:Lorg/eclipse/text/edits/TextEdit;


# direct methods
.method public constructor <init>(Lorg/eclipse/text/edits/TextEdit;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/text/edits/TextEdit;",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer$RewriteResult;->textEdit:Lorg/eclipse/text/edits/TextEdit;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer$RewriteResult;->createdImports:Ljava/util/Set;

    return-void
.end method

.method private extractQualifiedNames(ZLjava/util/Collection;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->isStatic:Z

    if-ne v2, p1, :cond_0

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->qualifiedName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getCreatedImports()[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer$RewriteResult;->createdImports:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer$RewriteResult;->extractQualifiedNames(ZLjava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreatedStaticImports()[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer$RewriteResult;->createdImports:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer$RewriteResult;->extractQualifiedNames(ZLjava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextEdit()Lorg/eclipse/text/edits/TextEdit;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer$RewriteResult;->textEdit:Lorg/eclipse/text/edits/TextEdit;

    return-object v0
.end method
