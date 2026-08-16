.class public final synthetic Lorg/openjdk/tools/javac/comp/j2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Resolve$6;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve$6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/j2;->b:Lorg/openjdk/tools/javac/comp/Resolve$6;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/j2;->b:Lorg/openjdk/tools/javac/comp/Resolve$6;

    check-cast p1, Lorg/openjdk/tools/javac/util/Name;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/Resolve$6;->e(Lorg/openjdk/tools/javac/comp/Resolve$6;Lorg/openjdk/tools/javac/util/Name;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method
