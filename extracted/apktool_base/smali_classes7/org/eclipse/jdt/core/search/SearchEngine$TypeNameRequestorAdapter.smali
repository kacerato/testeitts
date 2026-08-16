.class Lorg/eclipse/jdt/core/search/SearchEngine$TypeNameRequestorAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/core/search/SearchEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeNameRequestorAdapter"
.end annotation


# instance fields
.field nameRequestor:Lorg/eclipse/jdt/core/search/ITypeNameRequestor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/search/ITypeNameRequestor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/search/SearchEngine$TypeNameRequestorAdapter;->nameRequestor:Lorg/eclipse/jdt/core/search/ITypeNameRequestor;

    return-void
.end method


# virtual methods
.method public acceptType(I[C[C[[CLjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 0

    invoke-static {p1}, Lorg/eclipse/jdt/core/Flags;->isInterface(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/core/search/SearchEngine$TypeNameRequestorAdapter;->nameRequestor:Lorg/eclipse/jdt/core/search/ITypeNameRequestor;

    invoke-interface {p1, p2, p3, p4, p5}, Lorg/eclipse/jdt/core/search/ITypeNameRequestor;->acceptInterface([C[C[[CLjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/core/search/SearchEngine$TypeNameRequestorAdapter;->nameRequestor:Lorg/eclipse/jdt/core/search/ITypeNameRequestor;

    invoke-interface {p1, p2, p3, p4, p5}, Lorg/eclipse/jdt/core/search/ITypeNameRequestor;->acceptClass([C[C[[CLjava/lang/String;)V

    :goto_0
    return-void
.end method
