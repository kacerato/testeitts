.class public final synthetic Lorg/eclipse/jdt/internal/core/builder/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [[C

    check-cast p2, [[C

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/builder/State;->d([[C[[C)[[C

    move-result-object p1

    return-object p1
.end method
