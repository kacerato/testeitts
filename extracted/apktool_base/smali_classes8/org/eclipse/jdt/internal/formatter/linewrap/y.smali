.class public final synthetic Lorg/eclipse/jdt/internal/formatter/linewrap/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;


# instance fields
.field public final synthetic a:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/y;->a:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;

    return-void
.end method


# virtual methods
.method public final findIndex(Lorg/eclipse/jdt/core/dom/ASTNode;)Ljava/util/Optional;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/y;->a:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;

    check-cast p1, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->p(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method
