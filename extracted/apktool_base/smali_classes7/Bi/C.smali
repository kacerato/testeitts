.class public LBi/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LBi/c;

.field public b:LBi/F;


# direct methods
.method public constructor <init>(LBi/c;LBi/F;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LBi/C;->a:LBi/c;

    iput-object p2, p0, LBi/C;->b:LBi/F;

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 2

    iget-object v0, p0, LBi/C;->b:LBi/F;

    iget-object v1, p0, LBi/C;->a:LBi/c;

    invoke-virtual {v1}, LBi/c;->b()LXi/c;

    move-result-object v1

    invoke-interface {v0, v1}, LBi/F;->a(LXi/c;)[B

    move-result-object v0

    return-object v0
.end method

.method public b()LBi/c;
    .locals 1

    iget-object v0, p0, LBi/C;->a:LBi/c;

    return-object v0
.end method
