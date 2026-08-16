.class public Lql/g$b;
.super Lql/r$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lql/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lql/r$a<",
        "Lql/g$b;",
        ">;"
    }
.end annotation


# instance fields
.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lql/r$a;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lql/g$b;->e:I

    iput v0, p0, Lql/g$b;->f:I

    return-void
.end method

.method public static synthetic j(Lql/g$b;)I
    .locals 0

    iget p0, p0, Lql/g$b;->e:I

    return p0
.end method

.method public static synthetic k(Lql/g$b;)I
    .locals 0

    iget p0, p0, Lql/g$b;->f:I

    return p0
.end method


# virtual methods
.method public e()Lql/r;
    .locals 2

    new-instance v0, Lql/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lql/g;-><init>(Lql/g$b;Lql/g$a;)V

    return-object v0
.end method

.method public bridge synthetic f()Lql/r$a;
    .locals 1

    invoke-virtual {p0}, Lql/g$b;->l()Lql/g$b;

    move-result-object v0

    return-object v0
.end method

.method public l()Lql/g$b;
    .locals 0

    return-object p0
.end method

.method public m(I)Lql/g$b;
    .locals 0

    iput p1, p0, Lql/g$b;->e:I

    return-object p0
.end method

.method public n(I)Lql/g$b;
    .locals 0

    iput p1, p0, Lql/g$b;->f:I

    return-object p0
.end method
