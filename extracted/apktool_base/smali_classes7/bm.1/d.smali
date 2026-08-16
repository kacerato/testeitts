.class public Lbm/d;
.super Lbm/e;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 6

    const/16 v4, 0x20

    const/16 v5, 0x20

    const/16 v1, 0x335

    const/16 v2, 0xc

    const/16 v3, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbm/e;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public a()Lam/e;
    .locals 1

    new-instance v0, Lam/a;

    invoke-direct {v0, p0}, Lam/a;-><init>(Lbm/e;)V

    return-object v0
.end method
