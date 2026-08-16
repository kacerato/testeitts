.class enum Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext$2;
.super Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4001
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;-><init>(Ljava/lang/String;ILorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;)V

    return-void
.end method


# virtual methods
.method public definesTargetType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "invocation context"

    return-object v0
.end method
