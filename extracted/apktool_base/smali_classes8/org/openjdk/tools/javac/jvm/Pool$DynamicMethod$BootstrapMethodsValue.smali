.class Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod$BootstrapMethodsValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BootstrapMethodsValue"
.end annotation


# instance fields
.field final index:I

.field final mh:Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod$BootstrapMethodsValue;->mh:Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;

    iput p2, p0, Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod$BootstrapMethodsValue;->index:I

    return-void
.end method
