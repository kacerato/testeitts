.class public final synthetic Lcom/github/javaparser/utils/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/github/javaparser/utils/VisitorMap;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/utils/VisitorMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/utils/i0;->a:Lcom/github/javaparser/utils/VisitorMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/i0;->a:Lcom/github/javaparser/utils/VisitorMap;

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-virtual {v0, p1, p2}, Lcom/github/javaparser/utils/VisitorMap;->put(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
