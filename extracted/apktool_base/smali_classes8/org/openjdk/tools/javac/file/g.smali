.class public final synthetic Lorg/openjdk/tools/javac/file/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/g;->b:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/g;->b:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->a(Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
