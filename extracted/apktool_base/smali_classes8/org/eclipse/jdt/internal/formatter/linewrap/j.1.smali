.class public final synthetic Lorg/eclipse/jdt/internal/formatter/linewrap/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->countChars()I

    move-result p1

    return p1
.end method
