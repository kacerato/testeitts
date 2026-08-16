.class Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/Code;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StackMapFrame"
.end annotation


# instance fields
.field locals:[Lorg/openjdk/tools/javac/code/Type;

.field pc:I

.field stack:[Lorg/openjdk/tools/javac/code/Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
