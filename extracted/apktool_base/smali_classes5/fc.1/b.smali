.class public Lfc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lub/p;

.field public final b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v0, p0, Lfc/b;->b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lfc/b;->e:I

    iput v0, p0, Lfc/b;->f:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lfc/b;->g:I

    return-void
.end method

.method public constructor <init>(Lub/p;IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "texture",
            "x",
            "y",
            "w",
            "h"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v0, p0, Lfc/b;->b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lfc/b;->g:I

    .line 8
    iput-object p1, p0, Lfc/b;->a:Lub/p;

    .line 9
    iput p2, p0, Lfc/b;->c:I

    .line 10
    iput p3, p0, Lfc/b;->d:I

    .line 11
    iput p4, p0, Lfc/b;->e:I

    .line 12
    iput p5, p0, Lfc/b;->f:I

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1

    iget-object v0, p0, Lfc/b;->b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lfc/b;->f:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lfc/b;->g:I

    return v0
.end method

.method public d()Lub/p;
    .locals 1

    iget-object v0, p0, Lfc/b;->a:Lub/p;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lfc/b;->e:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lfc/b;->c:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lfc/b;->d:I

    return v0
.end method

.method public h(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorINT"
        }
    .end annotation

    iget-object v0, p0, Lfc/b;->b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void
.end method

.method public i(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "h"
        }
    .end annotation

    iput p1, p0, Lfc/b;->f:I

    return-void
.end method

.method public j(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    iput p1, p0, Lfc/b;->g:I

    return-void
.end method

.method public k(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "w",
            "h"
        }
    .end annotation

    iput p1, p0, Lfc/b;->c:I

    iput p2, p0, Lfc/b;->d:I

    iput p3, p0, Lfc/b;->e:I

    iput p4, p0, Lfc/b;->f:I

    return-void
.end method

.method public l(Lub/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    iput-object p1, p0, Lfc/b;->a:Lub/p;

    return-void
.end method

.method public m(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "w"
        }
    .end annotation

    iput p1, p0, Lfc/b;->e:I

    return-void
.end method

.method public n(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    iput p1, p0, Lfc/b;->c:I

    return-void
.end method

.method public o(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    iput p1, p0, Lfc/b;->d:I

    return-void
.end method
