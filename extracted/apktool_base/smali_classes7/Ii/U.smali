.class public LIi/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/D;
.implements Lorg/bouncycastle/util/n;


# static fields
.field public static final c:I = 0x100

.field public static final d:I = 0x200

.field public static final e:I = 0x400


# instance fields
.field public final a:LBi/o;

.field public b:LIi/V;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    sget-object v0, LBi/o;->ANY:LBi/o;

    invoke-direct {p0, p1, p2, v0}, LIi/U;-><init>(IILBi/o;)V

    return-void
.end method

.method public constructor <init>(IILBi/o;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LIi/V;

    invoke-direct {v0, p1, p2}, LIi/V;-><init>(II)V

    iput-object v0, p0, LIi/U;->b:LIi/V;

    iput-object p3, p0, LIi/U;->a:LBi/o;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LIi/U;->a(LXi/K0;)V

    invoke-virtual {p0}, LIi/U;->f()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1, p3}, LIi/Z;->a(LBi/y;ILBi/o;)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    return-void
.end method

.method public constructor <init>(LIi/U;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LIi/V;

    iget-object v1, p1, LIi/U;->b:LIi/V;

    invoke-direct {v0, v1}, LIi/V;-><init>(LIi/V;)V

    iput-object v0, p0, LIi/U;->b:LIi/V;

    iget-object v0, p1, LIi/U;->a:LBi/o;

    iput-object v0, p0, LIi/U;->a:LBi/o;

    invoke-virtual {p1}, LIi/U;->f()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1, v0}, LIi/Z;->a(LBi/y;ILBi/o;)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    return-void
.end method


# virtual methods
.method public a(LXi/K0;)V
    .locals 1

    iget-object v0, p0, LIi/U;->b:LIi/V;

    invoke-virtual {v0, p1}, LIi/V;->i(LXi/K0;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skein-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LIi/U;->b:LIi/V;

    invoke-virtual {v1}, LIi/V;->f()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LIi/U;->b:LIi/V;

    invoke-virtual {v1}, LIi/V;->h()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c([BI)I
    .locals 1

    iget-object v0, p0, LIi/U;->b:LIi/V;

    invoke-virtual {v0, p1, p2}, LIi/V;->e([BI)I

    move-result p1

    return p1
.end method

.method public copy()Lorg/bouncycastle/util/n;
    .locals 1

    new-instance v0, LIi/U;

    invoke-direct {v0, p0}, LIi/U;-><init>(LIi/U;)V

    return-object v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, LIi/U;->b:LIi/V;

    invoke-virtual {v0}, LIi/V;->h()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, LIi/U;->b:LIi/V;

    invoke-virtual {v0}, LIi/V;->f()I

    move-result v0

    return v0
.end method

.method public j(Lorg/bouncycastle/util/n;)V
    .locals 1

    check-cast p1, LIi/U;

    iget-object v0, p0, LIi/U;->b:LIi/V;

    iget-object p1, p1, LIi/U;->b:LIi/V;

    invoke-virtual {v0, p1}, LIi/V;->j(Lorg/bouncycastle/util/n;)V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, LIi/U;->b:LIi/V;

    invoke-virtual {v0}, LIi/V;->n()V

    return-void
.end method

.method public update(B)V
    .locals 1

    .line 1
    iget-object v0, p0, LIi/U;->b:LIi/V;

    invoke-virtual {v0, p1}, LIi/V;->s(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, LIi/U;->b:LIi/V;

    invoke-virtual {v0, p1, p2, p3}, LIi/V;->t([BII)V

    return-void
.end method
