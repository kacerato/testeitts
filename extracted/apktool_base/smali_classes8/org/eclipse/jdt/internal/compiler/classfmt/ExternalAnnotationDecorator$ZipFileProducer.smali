.class public interface abstract Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator$ZipFileProducer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ZipFileProducer"
.end annotation


# virtual methods
.method public abstract produce()Ljava/util/zip/ZipFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
