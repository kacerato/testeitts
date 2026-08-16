.class public Lel/f;
.super LXi/c;
.source "SourceFile"


# instance fields
.field public c:Lel/h;


# direct methods
.method public constructor <init>(ZLel/h;)V
    .locals 0

    invoke-direct {p0, p1}, LXi/c;-><init>(Z)V

    iput-object p2, p0, Lel/f;->c:Lel/h;

    return-void
.end method


# virtual methods
.method public d()Lel/h;
    .locals 1

    iget-object v0, p0, Lel/f;->c:Lel/h;

    return-object v0
.end method
