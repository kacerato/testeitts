.class public final synthetic Lorg/eclipse/jdt/internal/formatter/linewrap/n;
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

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/n;->b:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/n;->b:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;

    check-cast p1, Lorg/eclipse/jdt/core/dom/Expression;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->r(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;Lorg/eclipse/jdt/core/dom/Expression;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
