.class public LUm/m;
.super LUm/b;
.source "SourceFile"


# instance fields
.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LUm/b;-><init>()V

    return-void
.end method


# virtual methods
.method public c(LUm/C;)V
    .locals 0

    invoke-interface {p1, p0}, LUm/C;->D(LUm/m;)V

    return-void
.end method

.method public q()I
    .locals 1

    iget v0, p0, LUm/m;->f:I

    return v0
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, LUm/m;->f:I

    return-void
.end method
