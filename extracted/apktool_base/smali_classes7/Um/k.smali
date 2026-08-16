.class public LUm/k;
.super LUm/b;
.source "SourceFile"


# instance fields
.field public f:C

.field public g:I

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LUm/b;-><init>()V

    return-void
.end method


# virtual methods
.method public c(LUm/C;)V
    .locals 0

    invoke-interface {p1, p0}, LUm/C;->c(LUm/k;)V

    return-void
.end method

.method public q()C
    .locals 1

    iget-char v0, p0, LUm/k;->f:C

    return v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, LUm/k;->h:I

    return v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, LUm/k;->g:I

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LUm/k;->i:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LUm/k;->j:Ljava/lang/String;

    return-object v0
.end method

.method public v(C)V
    .locals 0

    iput-char p1, p0, LUm/k;->f:C

    return-void
.end method

.method public w(I)V
    .locals 0

    iput p1, p0, LUm/k;->h:I

    return-void
.end method

.method public x(I)V
    .locals 0

    iput p1, p0, LUm/k;->g:I

    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LUm/k;->i:Ljava/lang/String;

    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LUm/k;->j:Ljava/lang/String;

    return-void
.end method
