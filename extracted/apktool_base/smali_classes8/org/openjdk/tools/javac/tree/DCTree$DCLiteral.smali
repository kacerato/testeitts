.class public Lorg/openjdk/tools/javac/tree/DCTree$DCLiteral;
.super Lorg/openjdk/tools/javac/tree/DCTree$DCInlineTag;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/doctree/LiteralTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/DCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DCLiteral"
.end annotation


# instance fields
.field public final body:Lorg/openjdk/tools/javac/tree/DCTree$DCText;

.field public final kind:Lorg/openjdk/source/doctree/DocTree$Kind;


# direct methods
.method public constructor <init>(Lorg/openjdk/source/doctree/DocTree$Kind;Lorg/openjdk/tools/javac/tree/DCTree$DCText;)V
    .locals 1

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/DCTree$DCInlineTag;-><init>()V

    sget-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->CODE:Lorg/openjdk/source/doctree/DocTree$Kind;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->LITERAL:Lorg/openjdk/source/doctree/DocTree$Kind;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCLiteral;->kind:Lorg/openjdk/source/doctree/DocTree$Kind;

    iput-object p2, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCLiteral;->body:Lorg/openjdk/tools/javac/tree/DCTree$DCText;

    return-void
.end method


# virtual methods
.method public accept(Lorg/openjdk/source/doctree/DocTreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/source/doctree/DocTreeVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/doctree/DocTreeVisitor;->visitLiteral(Lorg/openjdk/source/doctree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBody()Lorg/openjdk/source/doctree/TextTree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/DCTree$DCLiteral;->getBody()Lorg/openjdk/tools/javac/tree/DCTree$DCText;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lorg/openjdk/tools/javac/tree/DCTree$DCText;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCLiteral;->body:Lorg/openjdk/tools/javac/tree/DCTree$DCText;

    return-object v0
.end method

.method public getKind()Lorg/openjdk/source/doctree/DocTree$Kind;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCLiteral;->kind:Lorg/openjdk/source/doctree/DocTree$Kind;

    return-object v0
.end method
