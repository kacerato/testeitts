.class public LUm/d;
.super LUm/t;
.source "SourceFile"


# instance fields
.field public g:C


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LUm/t;-><init>()V

    return-void
.end method


# virtual methods
.method public c(LUm/C;)V
    .locals 0

    invoke-interface {p1, p0}, LUm/C;->K(LUm/d;)V

    return-void
.end method

.method public s()C
    .locals 1

    iget-char v0, p0, LUm/d;->g:C

    return v0
.end method

.method public t(C)V
    .locals 0

    iput-char p1, p0, LUm/d;->g:C

    return-void
.end method
