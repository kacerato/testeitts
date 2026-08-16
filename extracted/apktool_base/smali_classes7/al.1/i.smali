.class public Lal/i;
.super LXi/c;
.source "SourceFile"


# instance fields
.field public c:Lal/j;


# direct methods
.method public constructor <init>(ZLal/j;)V
    .locals 0

    invoke-direct {p0, p1}, LXi/c;-><init>(Z)V

    iput-object p2, p0, Lal/i;->c:Lal/j;

    return-void
.end method


# virtual methods
.method public d()Lal/j;
    .locals 1

    iget-object v0, p0, Lal/i;->c:Lal/j;

    return-object v0
.end method
