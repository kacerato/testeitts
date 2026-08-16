.class public final synthetic Lorg/eclipse/jdt/internal/formatter/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/B;->a:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/B;->a:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->S(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;I)V

    return-void
.end method
