.class Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->findTypeNames(Ljava/lang/String;Ljava/lang/String;)[[[C
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory$1;->this$0:Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, ".class"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, ".java"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
