.class public Lx8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:J

.field public d:Ljava/io/File;

.field public e:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tittle"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx8/a;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lx8/a;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "type"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lx8/a;->a:Ljava/lang/String;

    .line 6
    iput p2, p0, Lx8/a;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJLjava/io/File;Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "type",
            "size",
            "file",
            "projectVersion"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lx8/a;->a:Ljava/lang/String;

    .line 9
    iput p2, p0, Lx8/a;->b:I

    .line 10
    iput-wide p3, p0, Lx8/a;->c:J

    .line 11
    iput-object p5, p0, Lx8/a;->d:Ljava/io/File;

    .line 12
    iput-object p6, p0, Lx8/a;->e:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lx8/a;->d:Ljava/io/File;

    return-object v0
.end method

.method public b()Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;
    .locals 1

    iget-object v0, p0, Lx8/a;->e:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lx8/a;->c:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lx8/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lx8/a;->b:I

    return v0
.end method

.method public f(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iput-object p1, p0, Lx8/a;->d:Ljava/io/File;

    return-void
.end method

.method public g(Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "projectVersion"
        }
    .end annotation

    iput-object p1, p0, Lx8/a;->e:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    return-void
.end method

.method public h(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    iput-wide p1, p0, Lx8/a;->c:J

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tittle"
        }
    .end annotation

    iput-object p1, p0, Lx8/a;->a:Ljava/lang/String;

    return-void
.end method

.method public j(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iput p1, p0, Lx8/a;->b:I

    return-void
.end method
