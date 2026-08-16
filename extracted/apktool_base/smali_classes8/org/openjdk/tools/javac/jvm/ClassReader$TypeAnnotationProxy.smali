.class Lorg/openjdk/tools/javac/jvm/ClassReader$TypeAnnotationProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/ClassReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeAnnotationProxy"
.end annotation


# instance fields
.field final compound:Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

.field final position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$TypeAnnotationProxy;->compound:Lorg/openjdk/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

    iput-object p2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$TypeAnnotationProxy;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    return-void
.end method
