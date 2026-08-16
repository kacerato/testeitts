.class public Lbl/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# instance fields
.field public g:Lbl/e;

.field public h:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()LBi/c;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lbl/c;->g:Lbl/e;

    iget-object v2, v0, Lbl/c;->h:Ljava/security/SecureRandom;

    invoke-virtual {v1, v2}, Lbl/e;->a(Ljava/security/SecureRandom;)Lbl/a;

    move-result-object v1

    invoke-virtual {v1}, Lbl/a;->b()[[B

    move-result-object v1

    new-instance v2, Lbl/g;

    iget-object v3, v0, Lbl/c;->g:Lbl/e;

    const/4 v4, 0x0

    aget-object v5, v1, v4

    const/4 v6, 0x6

    aget-object v7, v1, v6

    invoke-direct {v2, v3, v5, v7}, Lbl/g;-><init>(Lbl/e;[B[B)V

    new-instance v3, Lbl/f;

    iget-object v9, v0, Lbl/c;->g:Lbl/e;

    aget-object v10, v1, v4

    const/4 v4, 0x1

    aget-object v11, v1, v4

    const/4 v4, 0x2

    aget-object v12, v1, v4

    const/4 v4, 0x3

    aget-object v13, v1, v4

    const/4 v4, 0x4

    aget-object v14, v1, v4

    const/4 v4, 0x5

    aget-object v15, v1, v4

    aget-object v16, v1, v6

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lbl/f;-><init>(Lbl/e;[B[B[B[B[B[B[B)V

    new-instance v1, LBi/c;

    invoke-direct {v1, v2, v3}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v1
.end method

.method private d(LBi/G;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lbl/b;

    invoke-virtual {v0}, Lbl/b;->c()Lbl/e;

    move-result-object v0

    iput-object v0, p0, Lbl/c;->g:Lbl/e;

    invoke-virtual {p1}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lbl/c;->h:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 1

    invoke-direct {p0}, Lbl/c;->c()LBi/c;

    move-result-object v0

    return-object v0
.end method

.method public b(LBi/G;)V
    .locals 0

    invoke-direct {p0, p1}, Lbl/c;->d(LBi/G;)V

    return-void
.end method
