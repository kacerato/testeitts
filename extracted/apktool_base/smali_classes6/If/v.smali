.class public final synthetic LIf/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LMf/l;


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

    iput-object p1, p0, LIf/v;->b:Ljava/util/ArrayList;

    iput-object p2, p0, LIf/v;->c:LMf/q;

    iput-object p3, p0, LIf/v;->d:Ljava/nio/file/Path;

    iput-object p4, p0, LIf/v;->e:Ljava/nio/file/Path;

    iput-object p5, p0, LIf/v;->f:Ljava/nio/file/Path;

    iput-object p6, p0, LIf/v;->g:LMf/q;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, LIf/v;->b:Ljava/util/ArrayList;

    iget-object v1, p0, LIf/v;->c:LMf/q;

    iget-object v2, p0, LIf/v;->d:Ljava/nio/file/Path;

    iget-object v3, p0, LIf/v;->e:Ljava/nio/file/Path;

    iget-object v4, p0, LIf/v;->f:Ljava/nio/file/Path;

    iget-object v5, p0, LIf/v;->g:LMf/q;

    move-object v6, p1

    check-cast v6, LIf/g;

    invoke-static/range {v0 .. v6}, LIf/z;->N(Ljava/util/ArrayList;LMf/q;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;LMf/q;LIf/g;)Lnf/P0;

    move-result-object p1

    return-object p1
.end method
