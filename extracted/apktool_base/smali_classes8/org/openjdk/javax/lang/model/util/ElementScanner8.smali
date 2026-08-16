.class public Lorg/openjdk/javax/lang/model/util/ElementScanner8;
.super Lorg/openjdk/javax/lang/model/util/ElementScanner7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/openjdk/javax/lang/model/util/ElementScanner7<",
        "TR;TP;>;"
    }
.end annotation

.annotation runtime Lorg/openjdk/javax/annotation/processing/SupportedSourceVersion;
    value = .enum Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_8:Lorg/openjdk/javax/lang/model/SourceVersion;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/openjdk/javax/lang/model/util/ElementScanner7;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/openjdk/javax/lang/model/util/ElementScanner7;-><init>(Ljava/lang/Object;)V

    return-void
.end method
