.class public final synthetic Lorg/openjdk/tools/javac/platform/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Ljava/nio/file/Path;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/platform/a;->b:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/platform/a;->b:Ljava/nio/file/Path;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/platform/JDKPlatformProvider$PlatformDescriptionImpl;->b(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method
