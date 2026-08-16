.class public final synthetic Lorg/openjdk/tools/javac/file/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/i;->a:Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/i;->a:Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    invoke-static {v0, p1, p2}, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->b(Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
