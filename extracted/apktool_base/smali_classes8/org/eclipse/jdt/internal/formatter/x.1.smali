.class public final synthetic Lorg/eclipse/jdt/internal/formatter/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

.field public final synthetic c:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/x;->b:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/formatter/x;->c:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/x;->b:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/x;->c:Ljava/util/HashMap;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->q(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/util/HashMap;Ljava/lang/Boolean;)V

    return-void
.end method
