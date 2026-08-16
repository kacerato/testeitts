.class public Lai/c;
.super Luh/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lai/e;)V
    .locals 3

    sget-object v0, Lai/a;->a:Loh/x;

    new-instance v1, Loh/I0;

    new-instance v2, Loh/G0;

    invoke-virtual {p1}, Lai/e;->d()Loh/h;

    move-result-object p1

    invoke-direct {v2, p1}, Loh/G0;-><init>(Loh/h;)V

    invoke-direct {v1, v2}, Loh/I0;-><init>(Loh/g;)V

    invoke-direct {p0, v0, v1}, Luh/a;-><init>(Loh/x;Loh/G;)V

    return-void
.end method
