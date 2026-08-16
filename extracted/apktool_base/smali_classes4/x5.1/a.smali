.class public Lx5/a;
.super Lx5/d;
.source "SourceFile"


# instance fields
.field public p:I

.field public q:Ljava/lang/String;

.field public r:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "icon",
            "fileType"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lx5/d;-><init>(Ljava/lang/String;)V

    const p1, 0x7f070115

    .line 2
    iput p1, p0, Lx5/a;->p:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lx5/a;->r:Z

    .line 4
    new-instance v0, Lx5/a$a;

    invoke-direct {v0, p0}, Lx5/a$a;-><init>(Lx5/a;)V

    iput-object v0, p0, LF7/i;->b:LF7/j;

    .line 5
    invoke-virtual {p0, p1}, LF7/i;->r(Z)V

    .line 6
    iput p2, p0, Lx5/a;->p:I

    .line 7
    iput-object p3, p0, Lx5/a;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "icon",
            "fileType",
            "allowInsideMeta"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1}, Lx5/d;-><init>(Ljava/lang/String;)V

    const p1, 0x7f070115

    .line 9
    iput p1, p0, Lx5/a;->p:I

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lx5/a;->r:Z

    .line 11
    new-instance v0, Lx5/a$a;

    invoke-direct {v0, p0}, Lx5/a$a;-><init>(Lx5/a;)V

    iput-object v0, p0, LF7/i;->b:LF7/j;

    .line 12
    invoke-virtual {p0, p1}, LF7/i;->r(Z)V

    .line 13
    iput p2, p0, Lx5/a;->p:I

    .line 14
    iput-object p3, p0, Lx5/a;->q:Ljava/lang/String;

    .line 15
    iput-boolean p4, p0, Lx5/a;->r:Z

    return-void
.end method

.method public static synthetic F(Lx5/a;)I
    .locals 0

    iget p0, p0, Lx5/a;->p:I

    return p0
.end method


# virtual methods
.method public D(Ljava/util/List;Lx5/d$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "listInterface"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lj7/b;",
            ">;",
            "Lx5/d$a;",
            ")V"
        }
    .end annotation

    iget-boolean p1, p0, Lx5/a;->r:Z

    iget-object v0, p0, Lx5/a;->q:Ljava/lang/String;

    new-instance v1, Lx5/a$b;

    invoke-direct {v1, p0, p2}, Lx5/a$b;-><init>(Lx5/a;Lx5/d$a;)V

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->i(ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;)V

    return-void
.end method
