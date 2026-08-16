.class public Lol/s;
.super LXi/c;
.source "SourceFile"


# instance fields
.field public final c:Lol/t;


# direct methods
.method public constructor <init>(ZLol/t;)V
    .locals 0

    invoke-direct {p0, p1}, LXi/c;-><init>(Z)V

    iput-object p2, p0, Lol/s;->c:Lol/t;

    return-void
.end method


# virtual methods
.method public d()Lol/t;
    .locals 1

    iget-object v0, p0, Lol/s;->c:Lol/t;

    return-object v0
.end method
