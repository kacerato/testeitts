.class Lorg/openjdk/source/util/TreePath$1Result;
.super Ljava/lang/Error;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/source/util/TreePath;->getPath(Lorg/openjdk/source/util/TreePath;Lorg/openjdk/source/tree/Tree;)Lorg/openjdk/source/util/TreePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# static fields
.field static final serialVersionUID:J = -0x527689c44f0eae19L


# instance fields
.field path:Lorg/openjdk/source/util/TreePath;


# direct methods
.method public constructor <init>(Lorg/openjdk/source/util/TreePath;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    iput-object p1, p0, Lorg/openjdk/source/util/TreePath$1Result;->path:Lorg/openjdk/source/util/TreePath;

    return-void
.end method
