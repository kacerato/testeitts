.class public LUm/w;
.super LUm/t;
.source "SourceFile"


# instance fields
.field public g:I

.field public h:C


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LUm/t;-><init>()V

    return-void
.end method


# virtual methods
.method public c(LUm/C;)V
    .locals 0

    invoke-interface {p1, p0}, LUm/C;->u(LUm/w;)V

    return-void
.end method

.method public s()C
    .locals 1

    iget-char v0, p0, LUm/w;->h:C

    return v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, LUm/w;->g:I

    return v0
.end method

.method public u(C)V
    .locals 0

    iput-char p1, p0, LUm/w;->h:C

    return-void
.end method

.method public v(I)V
    .locals 0

    iput p1, p0, LUm/w;->g:I

    return-void
.end method
