.class public final Lorg/google/googlejavaformat/DocBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private appendLevel:Lorg/google/googlejavaformat/Doc$Level;

.field private final base:Lorg/google/googlejavaformat/Doc$Level;

.field private final stack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lorg/google/googlejavaformat/Doc$Level;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/google/googlejavaformat/Indent$Const;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-static {v0}, Lorg/google/googlejavaformat/Doc$Level;->make(Lorg/google/googlejavaformat/Indent;)Lorg/google/googlejavaformat/Doc$Level;

    move-result-object v0

    iput-object v0, p0, Lorg/google/googlejavaformat/DocBuilder;->base:Lorg/google/googlejavaformat/Doc$Level;

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lorg/google/googlejavaformat/DocBuilder;->stack:Ljava/util/ArrayDeque;

    iput-object v0, p0, Lorg/google/googlejavaformat/DocBuilder;->appendLevel:Lorg/google/googlejavaformat/Doc$Level;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public add(Lorg/google/googlejavaformat/Doc;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "doc"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/DocBuilder;->appendLevel:Lorg/google/googlejavaformat/Doc$Level;

    invoke-virtual {v0, p1}, Lorg/google/googlejavaformat/Doc$Level;->add(Lorg/google/googlejavaformat/Doc;)V

    return-void
.end method

.method public breakDoc(Lorg/google/googlejavaformat/Doc$Break;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "breakDoc"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/DocBuilder;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/google/googlejavaformat/Doc$Level;

    iput-object v0, p0, Lorg/google/googlejavaformat/DocBuilder;->appendLevel:Lorg/google/googlejavaformat/Doc$Level;

    invoke-virtual {v0, p1}, Lorg/google/googlejavaformat/Doc$Level;->add(Lorg/google/googlejavaformat/Doc;)V

    return-void
.end method

.method public build()Lorg/google/googlejavaformat/Doc;
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/DocBuilder;->base:Lorg/google/googlejavaformat/Doc$Level;

    return-object v0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/google/googlejavaformat/DocBuilder;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/google/googlejavaformat/Doc$Level;

    iget-object v1, p0, Lorg/google/googlejavaformat/DocBuilder;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/Doc$Level;

    invoke-virtual {v1, v0}, Lorg/google/googlejavaformat/Doc$Level;->add(Lorg/google/googlejavaformat/Doc;)V

    return-void
.end method

.method public open(Lorg/google/googlejavaformat/Indent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plusIndent"
        }
    .end annotation

    invoke-static {p1}, Lorg/google/googlejavaformat/Doc$Level;->make(Lorg/google/googlejavaformat/Indent;)Lorg/google/googlejavaformat/Doc$Level;

    move-result-object p1

    iget-object v0, p0, Lorg/google/googlejavaformat/DocBuilder;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lw2/z;->c(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "base"

    iget-object v2, p0, Lorg/google/googlejavaformat/DocBuilder;->base:Lorg/google/googlejavaformat/Doc$Level;

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "stack"

    iget-object v2, p0, Lorg/google/googlejavaformat/DocBuilder;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "appendLevel"

    iget-object v2, p0, Lorg/google/googlejavaformat/DocBuilder;->appendLevel:Lorg/google/googlejavaformat/Doc$Level;

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    invoke-virtual {v0}, Lw2/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withOps(Ljava/util/List;)Lorg/google/googlejavaformat/DocBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ops"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/google/googlejavaformat/Op;",
            ">;)",
            "Lorg/google/googlejavaformat/DocBuilder;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/google/googlejavaformat/Op;

    invoke-interface {v0, p0}, Lorg/google/googlejavaformat/Op;->add(Lorg/google/googlejavaformat/DocBuilder;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method
