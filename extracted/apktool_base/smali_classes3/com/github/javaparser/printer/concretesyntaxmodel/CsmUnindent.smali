.class public Lcom/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    instance-of p1, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public prettyPrint(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/SourcePrinter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "printer"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/github/javaparser/printer/SourcePrinter;->unindent()Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method
