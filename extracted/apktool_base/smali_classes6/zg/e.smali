.class public Lzg/e;
.super Lzg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzg/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzg/b<",
        "Lzg/e$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lzg/j;LBg/k;[CI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lzg/b;-><init>(Lzg/j;LBg/k;[CIZ)V

    return-void
.end method


# virtual methods
.method public bridge synthetic g(LBg/k;[CZ)Lvg/d;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lzg/e;->j(LBg/k;[CZ)Lzg/e$a;

    move-result-object p1

    return-object p1
.end method

.method public j(LBg/k;[CZ)Lzg/e$a;
    .locals 0

    new-instance p1, Lzg/e$a;

    invoke-direct {p1}, Lzg/e$a;-><init>()V

    return-object p1
.end method
