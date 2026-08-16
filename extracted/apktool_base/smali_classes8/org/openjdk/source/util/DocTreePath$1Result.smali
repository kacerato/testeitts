.class Lorg/openjdk/source/util/DocTreePath$1Result;
.super Ljava/lang/Error;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/source/util/DocTreePath;->getPath(Lorg/openjdk/source/util/DocTreePath;Lorg/openjdk/source/doctree/DocTree;)Lorg/openjdk/source/util/DocTreePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# static fields
.field static final serialVersionUID:J = -0x527689c44f0eae19L


# instance fields
.field path:Lorg/openjdk/source/util/DocTreePath;


# direct methods
.method public constructor <init>(Lorg/openjdk/source/util/DocTreePath;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    iput-object p1, p0, Lorg/openjdk/source/util/DocTreePath$1Result;->path:Lorg/openjdk/source/util/DocTreePath;

    return-void
.end method
