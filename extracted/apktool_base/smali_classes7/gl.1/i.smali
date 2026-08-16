.class public Lgl/i;
.super LXi/c;
.source "SourceFile"


# instance fields
.field public c:Lgl/j;


# direct methods
.method public constructor <init>(ZLgl/j;)V
    .locals 0

    invoke-direct {p0, p1}, LXi/c;-><init>(Z)V

    iput-object p2, p0, Lgl/i;->c:Lgl/j;

    return-void
.end method


# virtual methods
.method public d()Lgl/j;
    .locals 1

    iget-object v0, p0, Lgl/i;->c:Lgl/j;

    return-object v0
.end method
