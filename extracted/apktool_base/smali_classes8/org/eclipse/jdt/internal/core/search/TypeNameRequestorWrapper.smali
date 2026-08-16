.class public Lorg/eclipse/jdt/internal/core/search/TypeNameRequestorWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;


# instance fields
.field requestor:Lorg/eclipse/jdt/core/search/TypeNameRequestor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/search/TypeNameRequestor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/TypeNameRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/search/TypeNameRequestor;

    return-void
.end method


# virtual methods
.method public acceptType(I[C[C[[CLjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/TypeNameRequestorWrapper;->requestor:Lorg/eclipse/jdt/core/search/TypeNameRequestor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/core/search/TypeNameRequestor;->acceptType(I[C[C[[CLjava/lang/String;)V

    return-void
.end method
