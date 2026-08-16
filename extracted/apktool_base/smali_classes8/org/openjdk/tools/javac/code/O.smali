.class public final synthetic Lorg/openjdk/tools/javac/code/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/openjdk/tools/javac/code/Types$ClosureHolder;

    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Types$ClosureHolder;->add(Lorg/openjdk/tools/javac/code/Type;)V

    return-void
.end method
