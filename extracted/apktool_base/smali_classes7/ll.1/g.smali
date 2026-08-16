.class public Lll/g;
.super LXi/c;
.source "SourceFile"


# instance fields
.field public final c:Lll/h;

.field public final d:I


# direct methods
.method public constructor <init>(ZLll/h;)V
    .locals 0

    invoke-direct {p0, p1}, LXi/c;-><init>(Z)V

    iput-object p2, p0, Lll/g;->c:Lll/h;

    invoke-virtual {p2}, Lll/h;->e()I

    move-result p1

    iput p1, p0, Lll/g;->d:I

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Lll/g;->d:I

    return v0
.end method

.method public e()Lll/h;
    .locals 1

    iget-object v0, p0, Lll/g;->c:Lll/h;

    return-object v0
.end method
