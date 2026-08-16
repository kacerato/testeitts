.class public Lml/g;
.super LXi/c;
.source "SourceFile"


# instance fields
.field public c:Lml/h;


# direct methods
.method public constructor <init>(ZLml/h;)V
    .locals 0

    invoke-direct {p0, p1}, LXi/c;-><init>(Z)V

    iput-object p2, p0, Lml/g;->c:Lml/h;

    return-void
.end method


# virtual methods
.method public d()Lml/h;
    .locals 1

    iget-object v0, p0, Lml/g;->c:Lml/h;

    return-object v0
.end method
