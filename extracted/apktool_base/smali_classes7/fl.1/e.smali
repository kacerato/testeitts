.class public Lfl/e;
.super LXi/c;
.source "SourceFile"


# instance fields
.field public final c:Lfl/f;


# direct methods
.method public constructor <init>(ZLfl/f;)V
    .locals 0

    invoke-direct {p0, p1}, LXi/c;-><init>(Z)V

    iput-object p2, p0, Lfl/e;->c:Lfl/f;

    return-void
.end method


# virtual methods
.method public d()Lfl/f;
    .locals 1

    iget-object v0, p0, Lfl/e;->c:Lfl/f;

    return-object v0
.end method
