.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bottom:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private left:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private right:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private top:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->left:I

    .line 3
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->top:I

    .line 4
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->right:I

    .line 5
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->bottom:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->left:I

    .line 8
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->top:I

    .line 9
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->right:I

    .line 10
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->bottom:I

    return-void
.end method

.method public constructor <init>(IIII)V
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
            "z",
            "w"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->left:I

    .line 13
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->top:I

    .line 14
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->right:I

    .line 15
    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->bottom:I

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;-><init>()V

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->left:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->left:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->top:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->top:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->right:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->right:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->bottom:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->bottom:I

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->bottom:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->bottom:I

    return v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->a()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->left:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->right:I

    add-int/2addr v0, v1

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->left:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->right:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->top:I

    return v0
.end method

.method public h()I
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->top:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->left:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->right:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->top:I

    return v0
.end method

.method public l(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->left:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->top:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->right:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->bottom:I

    return-void
.end method

.method public m(IIII)V
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
            "z",
            "w"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->left:I

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->top:I

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->right:I

    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->bottom:I

    return-void
.end method

.method public n(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->left:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->left:I

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->top:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->top:I

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->right:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->right:I

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->bottom:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->bottom:I

    return-void
.end method

.method public o(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bottom"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->bottom:I

    return-void
.end method

.method public p(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "left"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->left:I

    return-void
.end method

.method public q(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "right"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->right:I

    return-void
.end method

.method public r(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "top"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->top:I

    return-void
.end method
