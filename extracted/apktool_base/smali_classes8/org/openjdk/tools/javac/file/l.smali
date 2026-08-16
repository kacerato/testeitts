.class public final synthetic Lorg/openjdk/tools/javac/file/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/file/Locations$SearchPath;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/file/Locations$SearchPath;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/l;->b:Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/file/l;->c:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/l;->b:Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/file/l;->c:Z

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->b(Lorg/openjdk/tools/javac/file/Locations$SearchPath;ZLjava/nio/file/Path;)V

    return-void
.end method
