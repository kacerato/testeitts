.class Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation$1;
.super Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;->create(Lorg/eclipse/jface/text/IDocument;)Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final synthetic val$doc:Lorg/eclipse/jface/text/IDocument;


# direct methods
.method public constructor <init>(Lorg/eclipse/jface/text/IDocument;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation$1;->val$doc:Lorg/eclipse/jface/text/IDocument;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;-><init>()V

    return-void
.end method


# virtual methods
.method public getLineOfOffset(I)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation$1;->val$doc:Lorg/eclipse/jface/text/IDocument;

    invoke-interface {v0, p1}, Lorg/eclipse/jface/text/IDocument;->getLineOfOffset(I)I

    move-result p1
    :try_end_0
    .catch Lorg/eclipse/jface/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, -0x1

    return p1
.end method

.method public getLineOffset(I)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation$1;->val$doc:Lorg/eclipse/jface/text/IDocument;

    invoke-interface {v0, p1}, Lorg/eclipse/jface/text/IDocument;->getLineOffset(I)I

    move-result p1
    :try_end_0
    .catch Lorg/eclipse/jface/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, -0x1

    return p1
.end method
