.class public LYd/y0;
.super LYd/C;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field public static final f:J = -0x2348186ae0b7b9b1L


# direct methods
.method public constructor <init>(Lbe/c;)V
    .locals 0

    invoke-direct {p0, p1}, LYd/C;-><init>(Lbe/c;)V

    return-void
.end method

.method private c()Ljava/lang/Object;
    .locals 2

    new-instance v0, LYd/C;

    iget-object v1, p0, LYd/C;->d:Lbe/c;

    invoke-direct {v0, v1}, LYd/C;-><init>(Lbe/c;)V

    return-object v0
.end method


# virtual methods
.method public subList(II)Lbe/c;
    .locals 2

    new-instance v0, LYd/y0;

    iget-object v1, p0, LYd/C;->d:Lbe/c;

    invoke-interface {v1, p1, p2}, Lbe/c;->subList(II)Lbe/c;

    move-result-object p1

    invoke-direct {v0, p1}, LYd/y0;-><init>(Lbe/c;)V

    return-object v0
.end method
