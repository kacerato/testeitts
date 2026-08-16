.class public Lql/j$b;
.super Lql/r$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lql/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lql/r$a<",
        "Lql/j$b;",
        ">;"
    }
.end annotation


# instance fields
.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lql/r$a;-><init>(I)V

    iput v0, p0, Lql/j$b;->e:I

    iput v0, p0, Lql/j$b;->f:I

    iput v0, p0, Lql/j$b;->g:I

    return-void
.end method

.method public static synthetic j(Lql/j$b;)I
    .locals 0

    iget p0, p0, Lql/j$b;->e:I

    return p0
.end method

.method public static synthetic k(Lql/j$b;)I
    .locals 0

    iget p0, p0, Lql/j$b;->f:I

    return p0
.end method

.method public static synthetic l(Lql/j$b;)I
    .locals 0

    iget p0, p0, Lql/j$b;->g:I

    return p0
.end method


# virtual methods
.method public e()Lql/r;
    .locals 2

    new-instance v0, Lql/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lql/j;-><init>(Lql/j$b;Lql/j$a;)V

    return-object v0
.end method

.method public bridge synthetic f()Lql/r$a;
    .locals 1

    invoke-virtual {p0}, Lql/j$b;->m()Lql/j$b;

    move-result-object v0

    return-object v0
.end method

.method public m()Lql/j$b;
    .locals 0

    return-object p0
.end method

.method public n(I)Lql/j$b;
    .locals 0

    iput p1, p0, Lql/j$b;->f:I

    return-object p0
.end method

.method public o(I)Lql/j$b;
    .locals 0

    iput p1, p0, Lql/j$b;->g:I

    return-object p0
.end method

.method public p(I)Lql/j$b;
    .locals 0

    iput p1, p0, Lql/j$b;->e:I

    return-object p0
.end method
