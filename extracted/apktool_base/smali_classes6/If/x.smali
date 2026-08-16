.class public final synthetic LIf/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LMf/p;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:LMf/q;

.field public final synthetic d:Ljava/nio/file/Path;

.field public final synthetic e:Ljava/nio/file/Path;

.field public final synthetic f:Ljava/nio/file/Path;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;LMf/q;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LIf/x;->b:Ljava/util/ArrayList;

    iput-object p2, p0, LIf/x;->c:LMf/q;

    iput-object p3, p0, LIf/x;->d:Ljava/nio/file/Path;

    iput-object p4, p0, LIf/x;->e:Ljava/nio/file/Path;

    iput-object p5, p0, LIf/x;->f:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, LIf/x;->b:Ljava/util/ArrayList;

    iget-object v1, p0, LIf/x;->c:LMf/q;

    iget-object v2, p0, LIf/x;->d:Ljava/nio/file/Path;

    iget-object v3, p0, LIf/x;->e:Ljava/nio/file/Path;

    iget-object v4, p0, LIf/x;->f:Ljava/nio/file/Path;

    move-object v5, p1

    check-cast v5, Ljava/nio/file/Path;

    move-object v6, p2

    check-cast v6, Ljava/io/IOException;

    invoke-static/range {v0 .. v6}, LIf/z;->K(Ljava/util/ArrayList;LMf/q;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method
