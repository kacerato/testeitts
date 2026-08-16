.class public interface abstract Lcom/android/tools/r8/AndroidResourceInput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/Resource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/AndroidResourceInput$Kind;
    }
.end annotation


# virtual methods
.method public abstract getByteStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/ResourceException;
        }
    .end annotation
.end method

.method public abstract getKind()Lcom/android/tools/r8/AndroidResourceInput$Kind;
.end method

.method public abstract getPath()Lcom/android/tools/r8/ResourcePath;
.end method
