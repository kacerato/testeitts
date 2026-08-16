.class public final synthetic Lorg/openjdk/tools/javac/code/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/code/Types$DescriptorCache;

.field public final synthetic c:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/code/Types$DescriptorCache;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/U;->b:Lorg/openjdk/tools/javac/code/Types$DescriptorCache;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/U;->c:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/U;->b:Lorg/openjdk/tools/javac/code/Types$DescriptorCache;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/U;->c:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->b(Lorg/openjdk/tools/javac/code/Types$DescriptorCache;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method
