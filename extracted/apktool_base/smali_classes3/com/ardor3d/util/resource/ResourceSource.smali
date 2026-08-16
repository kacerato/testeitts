.class public interface abstract Lcom/ardor3d/util/resource/ResourceSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/util/export/Savable;


# static fields
.field public static final UNKNOWN_TYPE:Ljava/lang/String; = "-unknown-"


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getRelativeSource(Ljava/lang/String;)Lcom/ardor3d/util/resource/ResourceSource;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract openStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
