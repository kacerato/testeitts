.class public final synthetic Lcom/github/javaparser/resolution/declarations/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

.field public final synthetic c:Ljava/util/Deque;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;Ljava/util/Deque;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/resolution/declarations/i;->b:Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    iput-object p2, p0, Lcom/github/javaparser/resolution/declarations/i;->c:Ljava/util/Deque;

    iput-object p3, p0, Lcom/github/javaparser/resolution/declarations/i;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/github/javaparser/resolution/declarations/i;->b:Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    iget-object v1, p0, Lcom/github/javaparser/resolution/declarations/i;->c:Ljava/util/Deque;

    iget-object v2, p0, Lcom/github/javaparser/resolution/declarations/i;->d:Ljava/util/List;

    check-cast p1, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-static {v0, v1, v2, p1}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->v(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;Ljava/util/Deque;Ljava/util/List;Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)V

    return-void
.end method
