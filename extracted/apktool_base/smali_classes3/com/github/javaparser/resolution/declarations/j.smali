.class public final synthetic Lcom/github/javaparser/resolution/declarations/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/Deque;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Deque;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/resolution/declarations/j;->b:Ljava/util/Deque;

    iput-object p2, p0, Lcom/github/javaparser/resolution/declarations/j;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/resolution/declarations/j;->b:Ljava/util/Deque;

    iget-object v1, p0, Lcom/github/javaparser/resolution/declarations/j;->c:Ljava/util/List;

    check-cast p1, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->a(Ljava/util/Deque;Ljava/util/List;Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)V

    return-void
.end method
