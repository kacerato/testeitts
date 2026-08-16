.class public LYd/x0;
.super LYd/r;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field public static final f:J = -0x2348186ae0b7b9b1L


# direct methods
.method public constructor <init>(Lbe/b;)V
    .locals 0

    invoke-direct {p0, p1}, LYd/r;-><init>(Lbe/b;)V

    return-void
.end method

.method private c()Ljava/lang/Object;
    .locals 2

    new-instance v0, LYd/r;

    iget-object v1, p0, LYd/r;->d:Lbe/b;

    invoke-direct {v0, v1}, LYd/r;-><init>(Lbe/b;)V

    return-object v0
.end method


# virtual methods
.method public subList(II)Lbe/b;
    .locals 2

    new-instance v0, LYd/x0;

    iget-object v1, p0, LYd/r;->d:Lbe/b;

    invoke-interface {v1, p1, p2}, Lbe/b;->subList(II)Lbe/b;

    move-result-object p1

    invoke-direct {v0, p1}, LYd/x0;-><init>(Lbe/b;)V

    return-object v0
.end method
