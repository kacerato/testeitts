.class Lorg/openjdk/tools/javac/util/UnsharedNameTable$HashEntry;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/UnsharedNameTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lorg/openjdk/tools/javac/util/UnsharedNameTable$NameImpl;",
        ">;"
    }
.end annotation


# instance fields
.field next:Lorg/openjdk/tools/javac/util/UnsharedNameTable$HashEntry;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/UnsharedNameTable$NameImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method
