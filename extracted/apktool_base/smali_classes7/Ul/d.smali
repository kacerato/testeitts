.class public LUl/d;
.super LXi/c;
.source "SourceFile"


# instance fields
.field public c:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0, p1}, LXi/c;-><init>(Z)V

    iput p2, p0, LUl/d;->c:I

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, LUl/d;->c:I

    return v0
.end method
