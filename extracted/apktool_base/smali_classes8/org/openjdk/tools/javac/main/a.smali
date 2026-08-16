.class public final synthetic Lorg/openjdk/tools/javac/main/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/util/Options;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/util/Options;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/main/a;->b:Lorg/openjdk/tools/javac/util/Options;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/a;->b:Lorg/openjdk/tools/javac/util/Options;

    check-cast p1, Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result p1

    return p1
.end method
