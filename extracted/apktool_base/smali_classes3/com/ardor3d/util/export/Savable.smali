.class public interface abstract Lcom/ardor3d/util/export/Savable;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getClassTag()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract read(Lcom/ardor3d/util/export/InputCapsule;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
