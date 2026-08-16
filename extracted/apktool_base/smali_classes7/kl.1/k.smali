.class public Lkl/k;
.super LXi/c;
.source "SourceFile"


# instance fields
.field public final c:Lkl/l;


# direct methods
.method public constructor <init>(ZLkl/l;)V
    .locals 0

    invoke-direct {p0, p1}, LXi/c;-><init>(Z)V

    iput-object p2, p0, Lkl/k;->c:Lkl/l;

    return-void
.end method


# virtual methods
.method public d()Lkl/l;
    .locals 1

    iget-object v0, p0, Lkl/k;->c:Lkl/l;

    return-object v0
.end method
