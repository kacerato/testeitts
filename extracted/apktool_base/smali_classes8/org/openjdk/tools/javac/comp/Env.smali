.class public Lorg/openjdk/tools/javac/comp/Env;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/openjdk/tools/javac/comp/Env<",
        "TA;>;>;"
    }
.end annotation


# instance fields
.field public baseClause:Z

.field public enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

.field public enclMethod:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

.field public info:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field public next:Lorg/openjdk/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/comp/Env<",
            "TA;>;"
        }
    .end annotation
.end field

.field public outer:Lorg/openjdk/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/comp/Env<",
            "TA;>;"
        }
    .end annotation
.end field

.field public toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

.field public tree:Lorg/openjdk/tools/javac/tree/JCTree;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "TA;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Env;->baseClause:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Env;->next:Lorg/openjdk/tools/javac/comp/Env;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Env;->enclMethod:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dup(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ")",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "TA;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    return-object p1
.end method

.method public dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "TA;)",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "TA;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/comp/Env;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/comp/Env;-><init>(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Env;->dupto(Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    return-object p1
.end method

.method public dupto(Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "TA;>;)",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "TA;>;"
        }
    .end annotation

    iput-object p0, p1, Lorg/openjdk/tools/javac/comp/Env;->next:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    iput-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iput-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iput-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Env;->enclMethod:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iput-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->enclMethod:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    return-object p1
.end method

.method public enclosing(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$Tag;",
            ")",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "TA;>;"
        }
    .end annotation

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->next:Lorg/openjdk/tools/javac/comp/Env;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "TA;>;>;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/comp/Env$1;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Env$1;-><init>(Lorg/openjdk/tools/javac/comp/Env;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Env["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    if-eqz v1, :cond_0

    const-string v1, ",outer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
