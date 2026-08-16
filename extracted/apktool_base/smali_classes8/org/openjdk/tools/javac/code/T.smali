.class public final synthetic Lorg/openjdk/tools/javac/code/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/code/Types$DescriptorCache;

.field public final synthetic c:Lorg/openjdk/tools/javac/code/Symbol;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/code/Types$DescriptorCache;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/T;->b:Lorg/openjdk/tools/javac/code/Types$DescriptorCache;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/T;->c:Lorg/openjdk/tools/javac/code/Symbol;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/T;->b:Lorg/openjdk/tools/javac/code/Types$DescriptorCache;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/T;->c:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->c(Lorg/openjdk/tools/javac/code/Types$DescriptorCache;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p1

    return p1
.end method
