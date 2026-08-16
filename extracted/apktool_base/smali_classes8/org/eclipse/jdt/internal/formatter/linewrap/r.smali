.class public final synthetic Lorg/eclipse/jdt/internal/formatter/linewrap/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/r;->b:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/r;->b:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;

    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->f(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1
.end method
