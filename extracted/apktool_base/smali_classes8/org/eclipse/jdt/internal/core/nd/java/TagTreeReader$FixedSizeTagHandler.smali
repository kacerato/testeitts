.class public abstract Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader$FixedSizeTagHandler;
.super Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader$TagHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FixedSizeTagHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader$TagHandler<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader$TagHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public destruct(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final destruct(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader$FixedSizeTagHandler;->destruct(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    return-void
.end method

.method public abstract getSize()I
.end method

.method public final getSize(Lorg/eclipse/jdt/internal/core/nd/Nd;Ljava/lang/Object;Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "TT;",
            "Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader$FixedSizeTagHandler;->getSize()I

    move-result p1

    return p1
.end method

.method public abstract read(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "J)TT;"
        }
    .end annotation
.end method

.method public final read(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;[I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "J",
            "Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;",
            "[I)TT;"
        }
    .end annotation

    const/4 p4, 0x0

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader$FixedSizeTagHandler;->getSize()I

    move-result v0

    aput v0, p5, p4

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader$FixedSizeTagHandler;->read(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract write(Lorg/eclipse/jdt/internal/core/nd/Nd;JLjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "JTT;)V"
        }
    .end annotation
.end method

.method public final write(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;Ljava/lang/Object;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "J",
            "Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;",
            "TT;[I)V"
        }
    .end annotation

    const/4 p4, 0x0

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader$FixedSizeTagHandler;->getSize()I

    move-result v0

    aput v0, p6, p4

    .line 2
    invoke-virtual {p0, p1, p2, p3, p5}, Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader$FixedSizeTagHandler;->write(Lorg/eclipse/jdt/internal/core/nd/Nd;JLjava/lang/Object;)V

    return-void
.end method
