.class public interface abstract Lorg/ITsMagic/Atlas/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ITsMagic/Atlas/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Lorg/ITsMagic/Atlas/d$a;Lorg/ITsMagic/Atlas/d$d;Lorg/ITsMagic/Atlas/d$e;II)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "surfels",
            "lightData",
            "meshData",
            "start",
            "end"
        }
    .end annotation
.end method

.method public abstract b(Ljava/util/List;)Lorg/ITsMagic/Atlas/d$d;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lights"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Lorg/ITsMagic/Atlas/d$d;"
        }
    .end annotation
.end method

.method public abstract c(Lorg/ITsMagic/Atlas/d$a;Lorg/ITsMagic/Atlas/d$d;Lorg/ITsMagic/Atlas/d$e;IIILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "surfels",
            "lightData",
            "meshData",
            "outputWidth",
            "start",
            "end",
            "outputPixels"
        }
    .end annotation
.end method
