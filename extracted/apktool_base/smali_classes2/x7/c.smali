.class public Lx7/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lx7/c;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "title",
            "position"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lx7/c;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    .line 5
    iput-object p1, p0, Lx7/c;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f0c01d2

    return v0
.end method

.method public b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1

    iget-object v0, p0, Lx7/c;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lx7/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const v0, 0x7f09053c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lx7/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    iput-object p1, p0, Lx7/c;->b:Ljava/lang/String;

    return-void
.end method
