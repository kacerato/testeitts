.class public Lbl/d;
.super LXi/c;
.source "SourceFile"


# instance fields
.field public final c:Lbl/e;


# direct methods
.method public constructor <init>(ZLbl/e;)V
    .locals 0

    invoke-direct {p0, p1}, LXi/c;-><init>(Z)V

    iput-object p2, p0, Lbl/d;->c:Lbl/e;

    return-void
.end method


# virtual methods
.method public d()Lbl/e;
    .locals 1

    iget-object v0, p0, Lbl/d;->c:Lbl/e;

    return-object v0
.end method
