.class public Lcom/itsmagic/engine/Core/Components/GIAP/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "icon",
            "type",
            "quantity"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/d;->e:Z

    .line 3
    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/d;->a:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/itsmagic/engine/Core/Components/GIAP/d;->b:I

    .line 5
    iput-object p3, p0, Lcom/itsmagic/engine/Core/Components/GIAP/d;->d:Ljava/lang/String;

    .line 6
    iput p4, p0, Lcom/itsmagic/engine/Core/Components/GIAP/d;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IZ)V
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
            "code",
            "icon",
            "type",
            "quantity",
            "subscription"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/d;->a:Ljava/lang/String;

    .line 9
    iput p2, p0, Lcom/itsmagic/engine/Core/Components/GIAP/d;->b:I

    .line 10
    iput p4, p0, Lcom/itsmagic/engine/Core/Components/GIAP/d;->c:I

    .line 11
    iput-object p3, p0, Lcom/itsmagic/engine/Core/Components/GIAP/d;->d:Ljava/lang/String;

    .line 12
    iput-boolean p5, p0, Lcom/itsmagic/engine/Core/Components/GIAP/d;->e:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/d;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/d;->c:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/d;->e:Z

    return v0
.end method
