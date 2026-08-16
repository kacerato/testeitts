.class public LXi/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/k;


# instance fields
.field public b:LBi/k;

.field public c:[B


# direct methods
.method public constructor <init>(LBi/k;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LXi/y0;->b:LBi/k;

    iput-object p2, p0, LXi/y0;->c:[B

    return-void
.end method


# virtual methods
.method public a()LBi/k;
    .locals 1

    iget-object v0, p0, LXi/y0;->b:LBi/k;

    return-object v0
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, LXi/y0;->c:[B

    return-object v0
.end method
