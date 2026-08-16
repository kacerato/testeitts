.class public abstract Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader$TagHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TagHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destruct(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;)V
    .locals 0

    return-void
.end method

.method public abstract getSize(Lorg/eclipse/jdt/internal/core/nd/Nd;Ljava/lang/Object;Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "TT;",
            "Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;",
            ")I"
        }
    .end annotation
.end method

.method public abstract read(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;[I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "J",
            "Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;",
            "[I)TT;"
        }
    .end annotation
.end method

.method public abstract write(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;Ljava/lang/Object;[I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "J",
            "Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;",
            "TT;[I)V"
        }
    .end annotation
.end method
