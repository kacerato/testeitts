.class public final synthetic Lorg/openjdk/tools/javac/util/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/util/Log;

.field public final synthetic c:Lorg/openjdk/tools/javac/util/Options;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/util/Log;Lorg/openjdk/tools/javac/util/Options;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/i;->b:Lorg/openjdk/tools/javac/util/Log;

    iput-object p2, p0, Lorg/openjdk/tools/javac/util/i;->c:Lorg/openjdk/tools/javac/util/Options;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/i;->b:Lorg/openjdk/tools/javac/util/Log;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/i;->c:Lorg/openjdk/tools/javac/util/Options;

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/Log;->a(Lorg/openjdk/tools/javac/util/Log;Lorg/openjdk/tools/javac/util/Options;)V

    return-void
.end method
