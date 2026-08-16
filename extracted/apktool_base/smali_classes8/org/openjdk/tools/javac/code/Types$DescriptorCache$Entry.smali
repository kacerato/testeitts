.class Lorg/openjdk/tools/javac/code/Types$DescriptorCache$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Types$DescriptorCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation


# instance fields
.field final cachedDescRes:Lorg/openjdk/tools/javac/code/Types$DescriptorCache$FunctionDescriptor;

.field final prevMark:I

.field final synthetic this$1:Lorg/openjdk/tools/javac/code/Types$DescriptorCache;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Types$DescriptorCache;Lorg/openjdk/tools/javac/code/Types$DescriptorCache$FunctionDescriptor;I)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache$Entry;->this$1:Lorg/openjdk/tools/javac/code/Types$DescriptorCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache$Entry;->cachedDescRes:Lorg/openjdk/tools/javac/code/Types$DescriptorCache$FunctionDescriptor;

    iput p3, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache$Entry;->prevMark:I

    return-void
.end method


# virtual methods
.method public matches(I)Z
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache$Entry;->prevMark:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
