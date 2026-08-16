.class public LNm/c;
.super LUm/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LNm/c$a;
    }
.end annotation


# instance fields
.field public f:Z

.field public g:LNm/c$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LUm/g;-><init>()V

    return-void
.end method


# virtual methods
.method public p()LNm/c$a;
    .locals 1

    iget-object v0, p0, LNm/c;->g:LNm/c$a;

    return-object v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, LNm/c;->f:Z

    return v0
.end method

.method public r(LNm/c$a;)V
    .locals 0

    iput-object p1, p0, LNm/c;->g:LNm/c$a;

    return-void
.end method

.method public s(Z)V
    .locals 0

    iput-boolean p1, p0, LNm/c;->f:Z

    return-void
.end method
