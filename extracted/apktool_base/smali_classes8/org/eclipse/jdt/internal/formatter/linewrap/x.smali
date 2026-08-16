.class public final synthetic Lorg/eclipse/jdt/internal/formatter/linewrap/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/x;->b:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/x;->b:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;

    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->b(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;Lorg/eclipse/jdt/core/dom/ASTNode;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method
