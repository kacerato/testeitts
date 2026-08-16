.class Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation$2;
.super Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;->create(Lorg/eclipse/jdt/core/dom/CompilationUnit;)Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final synthetic val$astRoot:Lorg/eclipse/jdt/core/dom/CompilationUnit;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/CompilationUnit;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation$2;->val$astRoot:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;-><init>()V

    return-void
.end method


# virtual methods
.method public getLineOfOffset(I)I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation$2;->val$astRoot:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getLineNumber(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public getLineOffset(I)I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation$2;->val$astRoot:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getPosition(II)I

    move-result p1

    return p1
.end method
