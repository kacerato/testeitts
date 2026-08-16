.class public interface abstract Lorg/openjdk/tools/javah/NativeHeaderTool$NativeHeaderTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javah/NativeHeaderTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeHeaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract call()Ljava/lang/Boolean;
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lorg/openjdk/tools/javah/NativeHeaderTool$NativeHeaderTask;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public abstract setLocale(Ljava/util/Locale;)V
.end method
