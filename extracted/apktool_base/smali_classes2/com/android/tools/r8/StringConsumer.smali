.class public interface abstract Lcom/android/tools/r8/StringConsumer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/H;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/StringConsumer$FileConsumer;,
        Lcom/android/tools/r8/StringConsumer$ForwardingConsumer;,
        Lcom/android/tools/r8/StringConsumer$EmptyConsumer;
    }
.end annotation


# direct methods
.method public static emptyConsumer()Lcom/android/tools/r8/StringConsumer$EmptyConsumer;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/StringConsumer$EmptyConsumer;->a()Lcom/android/tools/r8/StringConsumer$EmptyConsumer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V
.end method
