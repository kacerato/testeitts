.class public abstract LB2/b;
.super LB2/c;
.source "SourceFile"


# annotations
.annotation runtime LB2/k;
.end annotation

.annotation runtime LI2/j;
.end annotation


# static fields
.field public static final c:J


# instance fields
.field public final b:[LB2/q;


# direct methods
.method public varargs constructor <init>([LB2/q;)V
    .locals 3

    invoke-direct {p0}, LB2/c;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-static {v2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, LB2/b;->b:[LB2/q;

    return-void
.end method


# virtual methods
.method public a(I)LB2/r;
    .locals 4

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lw2/H;->d(Z)V

    iget-object v1, p0, LB2/b;->b:[LB2/q;

    array-length v1, v1

    new-array v2, v1, [LB2/r;

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v3, p0, LB2/b;->b:[LB2/q;

    aget-object v3, v3, v0

    invoke-interface {v3, p1}, LB2/q;->a(I)LB2/r;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, LB2/b;->l([LB2/r;)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public i()LB2/r;
    .locals 4

    iget-object v0, p0, LB2/b;->b:[LB2/q;

    array-length v0, v0

    new-array v1, v0, [LB2/r;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, LB2/b;->b:[LB2/q;

    aget-object v3, v3, v2

    invoke-interface {v3}, LB2/q;->i()LB2/r;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, LB2/b;->l([LB2/r;)LB2/r;

    move-result-object v0

    return-object v0
.end method

.method public final l([LB2/r;)LB2/r;
    .locals 1

    new-instance v0, LB2/b$a;

    invoke-direct {v0, p0, p1}, LB2/b$a;-><init>(LB2/b;[LB2/r;)V

    return-object v0
.end method

.method public abstract m([LB2/r;)LB2/p;
.end method
