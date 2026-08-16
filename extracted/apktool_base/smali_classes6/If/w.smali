.class public final synthetic LIf/w;
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

.field public final synthetic g:LMf/q;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;LMf/q;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;LMf/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LIf/w;->b:Ljava/util/ArrayList;

    iput-object p2, p0, LIf/w;->c:LMf/q;

    iput-object p3, p0, LIf/w;->d:Ljava/nio/file/Path;

    iput-object p4, p0, LIf/w;->e:Ljava/nio/file/Path;

    iput-object p5, p0, LIf/w;->f:Ljava/nio/file/Path;

    iput-object p6, p0, LIf/w;->g:LMf/q;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, LIf/w;->b:Ljava/util/ArrayList;

    iget-object v1, p0, LIf/w;->c:LMf/q;

    iget-object v2, p0, LIf/w;->d:Ljava/nio/file/Path;

    iget-object v3, p0, LIf/w;->e:Ljava/nio/file/Path;

    iget-object v4, p0, LIf/w;->f:Ljava/nio/file/Path;

    iget-object v5, p0, LIf/w;->g:LMf/q;

    move-object v6, p1

    check-cast v6, Ljava/nio/file/Path;

    move-object v7, p2

    check-cast v7, Ljava/nio/file/attribute/BasicFileAttributes;

    invoke-static/range {v0 .. v7}, LIf/z;->L(Ljava/util/ArrayList;LMf/q;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;LMf/q;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method
