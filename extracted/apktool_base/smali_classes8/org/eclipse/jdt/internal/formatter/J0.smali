.class public final synthetic Lorg/eclipse/jdt/internal/formatter/J0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/J0;->b:Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/J0;->b:Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;

    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;->a(Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;Lorg/eclipse/jdt/core/dom/ASTNode;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
