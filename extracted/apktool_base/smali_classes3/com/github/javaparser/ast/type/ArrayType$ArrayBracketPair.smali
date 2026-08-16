.class public Lcom/github/javaparser/ast/type/ArrayType$ArrayBracketPair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/ast/type/ArrayType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayBracketPair"
.end annotation


# instance fields
.field private annotations:Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;"
        }
    .end annotation
.end field

.field private origin:Lcom/github/javaparser/ast/type/ArrayType$Origin;

.field private tokenRange:Lcom/github/javaparser/TokenRange;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/ArrayType$Origin;Lcom/github/javaparser/ast/NodeList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "origin",
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/TokenRange;",
            "Lcom/github/javaparser/ast/type/ArrayType$Origin;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/ast/type/ArrayType$ArrayBracketPair;->annotations:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/type/ArrayType$ArrayBracketPair;->setTokenRange(Lcom/github/javaparser/TokenRange;)Lcom/github/javaparser/ast/type/ArrayType$ArrayBracketPair;

    invoke-virtual {p0, p3}, Lcom/github/javaparser/ast/type/ArrayType$ArrayBracketPair;->setAnnotations(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/type/ArrayType$ArrayBracketPair;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/type/ArrayType$ArrayBracketPair;->setOrigin(Lcom/github/javaparser/ast/type/ArrayType$Origin;)Lcom/github/javaparser/ast/type/ArrayType$ArrayBracketPair;

    return-void
.end method


# virtual methods
.method public getAnnotations()Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/type/ArrayType$ArrayBracketPair;->annotations:Lcom/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getOrigin()Lcom/github/javaparser/ast/type/ArrayType$Origin;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/type/ArrayType$ArrayBracketPair;->origin:Lcom/github/javaparser/ast/type/ArrayType$Origin;

    return-object v0
.end method

.method public getTokenRange()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/TokenRange;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/type/ArrayType$ArrayBracketPair;->tokenRange:Lcom/github/javaparser/TokenRange;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public setAnnotations(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/type/ArrayType$ArrayBracketPair;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)",
            "Lcom/github/javaparser/ast/type/ArrayType$ArrayBracketPair;"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/NodeList;

    iput-object p1, p0, Lcom/github/javaparser/ast/type/ArrayType$ArrayBracketPair;->annotations:Lcom/github/javaparser/ast/NodeList;

    return-object p0
.end method

.method public setOrigin(Lcom/github/javaparser/ast/type/ArrayType$Origin;)Lcom/github/javaparser/ast/type/ArrayType$ArrayBracketPair;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "origin"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/type/ArrayType$Origin;

    iput-object p1, p0, Lcom/github/javaparser/ast/type/ArrayType$ArrayBracketPair;->origin:Lcom/github/javaparser/ast/type/ArrayType$Origin;

    return-object p0
.end method

.method public setTokenRange(Lcom/github/javaparser/TokenRange;)Lcom/github/javaparser/ast/type/ArrayType$ArrayBracketPair;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/javaparser/ast/type/ArrayType$ArrayBracketPair;->tokenRange:Lcom/github/javaparser/TokenRange;

    return-object p0
.end method
