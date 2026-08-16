.class final enum Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat$2;
.super Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/jvm/Code$1;)V

    return-void
.end method


# virtual methods
.method public getAttributeName(Lorg/openjdk/tools/javac/util/Names;)Lorg/openjdk/tools/javac/util/Name;
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/Names;->StackMapTable:Lorg/openjdk/tools/javac/util/Name;

    return-object p1
.end method
