.class public Lcom/itsmagic/engine/Activities/Editor/Utils/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Lcom/itsmagic/engine/Activities/Editor/Utils/b;

.field public d:Ljava/lang/String;

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/itsmagic/engine/Activities/Editor/Utils/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "text",
            "color",
            "onClickListener"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->b:I

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->e:Z

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->a:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/b;

    .line 23
    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/itsmagic/engine/Activities/Editor/Utils/b;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "text",
            "color",
            "onClickListener",
            "extraText"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->b:I

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->e:Z

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->a:Ljava/lang/String;

    .line 30
    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->b:I

    .line 31
    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/b;

    .line 32
    iput-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "onClickListener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->b:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->e:Z

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->a:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/b;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "text",
            "onClickListener",
            "extraText"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->b:I

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->e:Z

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->a:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/b;

    .line 15
    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->b:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/itsmagic/engine/Activities/Editor/Utils/b;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/b;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->b:I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extraText"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->d:Ljava/lang/String;

    return-void
.end method

.method public g(Lcom/itsmagic/engine/Activities/Editor/Utils/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onClickListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/b;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->a:Ljava/lang/String;

    return-void
.end method
