.class public final synthetic Lorg/eclipse/jdt/internal/formatter/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/X;->b:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/X;->b:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->x(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/Boolean;)V

    return-void
.end method
