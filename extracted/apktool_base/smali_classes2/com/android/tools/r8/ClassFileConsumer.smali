.class public interface abstract Lcom/android/tools/r8/ClassFileConsumer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ProgramConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/ClassFileConsumer$DirectoryConsumer;,
        Lcom/android/tools/r8/ClassFileConsumer$ArchiveConsumer;,
        Lcom/android/tools/r8/ClassFileConsumer$ForwardingConsumer;
    }
.end annotation


# direct methods
.method public static emptyConsumer()Lcom/android/tools/r8/ClassFileConsumer;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/ClassFileConsumer$ForwardingConsumer;->a()Lcom/android/tools/r8/ClassFileConsumer$ForwardingConsumer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract accept(Lcom/android/tools/r8/ByteDataView;Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V
.end method
