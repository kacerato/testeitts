.class public final synthetic Lorg/openjdk/tools/javac/platform/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/platform/c;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/platform/c;->b:Ljava/util/List;

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/platform/JDKPlatformProvider$PlatformDescriptionImpl;->c(Ljava/util/List;Ljava/nio/file/Path;)V

    return-void
.end method
