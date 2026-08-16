.class public abstract Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lorg/eclipse/jdt/core/dom/CompilationUnit;)Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;
    .locals 1

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation$2;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation$2;-><init>(Lorg/eclipse/jdt/core/dom/CompilationUnit;)V

    return-object v0
.end method

.method public static create(Lorg/eclipse/jface/text/IDocument;)Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;
    .locals 1

    .line 1
    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation$1;-><init>(Lorg/eclipse/jface/text/IDocument;)V

    return-object v0
.end method


# virtual methods
.method public abstract getLineOfOffset(I)I
.end method

.method public abstract getLineOffset(I)I
.end method
