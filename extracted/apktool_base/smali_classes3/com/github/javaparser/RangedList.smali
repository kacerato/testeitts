.class Lcom/github/javaparser/RangedList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field list:Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/NodeList<",
            "TT;>;"
        }
    .end annotation
.end field

.field range:Lcom/github/javaparser/TokenRange;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/ast/NodeList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/github/javaparser/TokenRange;

    sget-object v1, Lcom/github/javaparser/JavaToken;->INVALID:Lcom/github/javaparser/JavaToken;

    invoke-direct {v0, v1, v1}, Lcom/github/javaparser/TokenRange;-><init>(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V

    iput-object v0, p0, Lcom/github/javaparser/RangedList;->range:Lcom/github/javaparser/TokenRange;

    iput-object p1, p0, Lcom/github/javaparser/RangedList;->list:Lcom/github/javaparser/ast/NodeList;

    return-void
.end method


# virtual methods
.method public add(Lcom/github/javaparser/ast/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/RangedList;->list:Lcom/github/javaparser/ast/NodeList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/RangedList;->list:Lcom/github/javaparser/ast/NodeList;

    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/RangedList;->list:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    return-void
.end method

.method public beginAt(Lcom/github/javaparser/JavaToken;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "begin"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/RangedList;->range:Lcom/github/javaparser/TokenRange;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/TokenRange;->withBegin(Lcom/github/javaparser/JavaToken;)Lcom/github/javaparser/TokenRange;

    move-result-object p1

    iput-object p1, p0, Lcom/github/javaparser/RangedList;->range:Lcom/github/javaparser/TokenRange;

    return-void
.end method

.method public endAt(Lcom/github/javaparser/JavaToken;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "end"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/RangedList;->range:Lcom/github/javaparser/TokenRange;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/TokenRange;->withEnd(Lcom/github/javaparser/JavaToken;)Lcom/github/javaparser/TokenRange;

    move-result-object p1

    iput-object p1, p0, Lcom/github/javaparser/RangedList;->range:Lcom/github/javaparser/TokenRange;

    return-void
.end method
