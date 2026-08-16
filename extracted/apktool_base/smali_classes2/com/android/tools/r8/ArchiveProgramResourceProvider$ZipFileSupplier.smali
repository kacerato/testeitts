.class public interface abstract Lcom/android/tools/r8/ArchiveProgramResourceProvider$ZipFileSupplier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/ArchiveProgramResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ZipFileSupplier"
.end annotation


# virtual methods
.method public abstract open()Ljava/util/zip/ZipFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
