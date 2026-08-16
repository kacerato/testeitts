.class public LYd/C0;
.super LYd/J0;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field public static final f:J = -0x2348186ae0b7b9b1L


# direct methods
.method public constructor <init>(Lbe/i;)V
    .locals 0

    invoke-direct {p0, p1}, LYd/J0;-><init>(Lbe/i;)V

    return-void
.end method

.method private b()Ljava/lang/Object;
    .locals 2

    new-instance v0, LYd/J0;

    iget-object v1, p0, LYd/J0;->d:Lbe/i;

    invoke-direct {v0, v1}, LYd/J0;-><init>(Lbe/i;)V

    return-object v0
.end method


# virtual methods
.method public subList(II)Lbe/i;
    .locals 2

    new-instance v0, LYd/C0;

    iget-object v1, p0, LYd/J0;->d:Lbe/i;

    invoke-interface {v1, p1, p2}, Lbe/i;->subList(II)Lbe/i;

    move-result-object p1

    invoke-direct {v0, p1}, LYd/C0;-><init>(Lbe/i;)V

    return-object v0
.end method
