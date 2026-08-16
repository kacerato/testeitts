.class public final synthetic Lorg/openjdk/tools/javac/code/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/code/Types$DescriptorCache;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/code/Types$DescriptorCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/W;->b:Lorg/openjdk/tools/javac/code/Types$DescriptorCache;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/W;->b:Lorg/openjdk/tools/javac/code/Types$DescriptorCache;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->a(Lorg/openjdk/tools/javac/code/Types$DescriptorCache;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Types$DescriptorCache$1;

    move-result-object p1

    return-object p1
.end method
