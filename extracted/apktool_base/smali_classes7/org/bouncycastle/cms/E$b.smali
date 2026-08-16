.class public Lorg/bouncycastle/cms/E$b;
.super Lorg/bouncycastle/cms/N0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/N0;Lhi/b;)V
    .locals 1

    iget-object v0, p1, Lorg/bouncycastle/cms/N0;->i:Luh/Y;

    invoke-static {v0, p2}, Lorg/bouncycastle/cms/E$b;->B(Luh/Y;Lhi/b;)Luh/Y;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/N0;-><init>(Lorg/bouncycastle/cms/N0;Luh/Y;)V

    return-void
.end method

.method public static B(Luh/Y;Lhi/b;)Luh/Y;
    .locals 8

    new-instance v7, Luh/Y;

    invoke-virtual {p0}, Luh/Y;->A()Luh/X;

    move-result-object v1

    invoke-virtual {p0}, Luh/Y;->v()Lhi/b;

    move-result-object v2

    invoke-virtual {p0}, Luh/Y;->u()Loh/G;

    move-result-object v3

    invoke-virtual {p0}, Luh/Y;->y()Loh/y;

    move-result-object v5

    invoke-virtual {p0}, Luh/Y;->B()Loh/G;

    move-result-object v6

    move-object v0, v7

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Luh/Y;-><init>(Luh/X;Lhi/b;Loh/G;Lhi/b;Loh/y;Loh/G;)V

    return-object v7
.end method
