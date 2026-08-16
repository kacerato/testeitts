.class public final synthetic Lorg/eclipse/jdt/internal/formatter/linewrap/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic a:Lorg/eclipse/jdt/internal/formatter/TokenManager;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/formatter/TokenManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/q;->a:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/q;->a:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getPositionInLine(I)I

    move-result p1

    return p1
.end method
