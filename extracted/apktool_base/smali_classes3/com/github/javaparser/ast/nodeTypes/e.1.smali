.class public final synthetic Lcom/github/javaparser/ast/nodeTypes/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/github/javaparser/ast/comments/JavadocComment;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/JavadocComment;->parse()Lcom/github/javaparser/javadoc/Javadoc;

    move-result-object p1

    return-object p1
.end method
