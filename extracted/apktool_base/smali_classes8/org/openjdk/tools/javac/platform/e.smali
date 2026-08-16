.class public final synthetic Lorg/openjdk/tools/javac/platform/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/platform/e;->b:Ljava/lang/String;

    iput-object p2, p0, Lorg/openjdk/tools/javac/platform/e;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/platform/e;->b:Ljava/lang/String;

    iget-object v1, p0, Lorg/openjdk/tools/javac/platform/e;->c:Ljava/lang/String;

    check-cast p1, Lorg/openjdk/tools/javac/platform/PlatformProvider;

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/javac/platform/PlatformUtils;->b(Ljava/lang/String;Ljava/lang/String;Lorg/openjdk/tools/javac/platform/PlatformProvider;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method
