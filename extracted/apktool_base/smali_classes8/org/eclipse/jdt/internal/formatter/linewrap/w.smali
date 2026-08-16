.class public final synthetic Lorg/eclipse/jdt/internal/formatter/linewrap/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;

.field public final synthetic c:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/w;->b:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/w;->c:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/w;->b:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/w;->c:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->h(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;Ljava/util/List;)V

    return-void
.end method
