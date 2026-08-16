.class public LBb/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBb/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBb/b;-><init>([[LBb/b$d;Lub/p;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[[LBb/b$d;

.field public final synthetic b:Lub/p;

.field public final synthetic c:LBb/b;


# direct methods
.method public constructor <init>(LBb/b;[[LBb/b$d;Lub/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$pixels",
            "val$texture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LBb/b$a;->c:LBb/b;

    iput-object p2, p0, LBb/b$a;->a:[[LBb/b$d;

    iput-object p3, p0, LBb/b$a;->b:Lub/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v1, p0, LBb/b$a;->a:[[LBb/b$d;

    aget-object p1, v1, p1

    aget-object p1, p1, p2

    iget p2, p1, LBb/b$d;->d:F

    iget v1, p1, LBb/b$d;->a:F

    iget v2, p1, LBb/b$d;->b:F

    iget p1, p1, LBb/b$d;->c:F

    invoke-direct {v0, p2, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFFF)V

    return-object v0
.end method

.method public apply()V
    .locals 10

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    iget-object v1, p0, LBb/b$a;->c:LBb/b;

    invoke-static {v1}, LBb/b;->a(LBb/b;)I

    move-result v1

    if-ge v8, v1, :cond_1

    move v9, v0

    :goto_1
    iget-object v1, p0, LBb/b$a;->c:LBb/b;

    invoke-static {v1}, LBb/b;->b(LBb/b;)I

    move-result v1

    if-ge v9, v1, :cond_0

    iget-object v1, p0, LBb/b$a;->a:[[LBb/b$d;

    aget-object v1, v1, v8

    aget-object v1, v1, v9

    iget-object v2, p0, LBb/b$a;->b:Lub/p;

    iget v4, v1, LBb/b$d;->a:F

    iget v5, v1, LBb/b$d;->b:F

    iget v6, v1, LBb/b$d;->c:F

    iget v7, v1, LBb/b$d;->d:F

    move-object v1, v2

    move v2, v8

    move v3, v9

    invoke-virtual/range {v1 .. v7}, Lub/p;->f0(IIFFFF)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, LBb/b$a;->b:Lub/p;

    invoke-virtual {v0}, Lub/p;->apply()V

    return-void
.end method

.method public b(IIF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    iget-object v0, p0, LBb/b$a;->a:[[LBb/b$d;

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    iput p3, p1, LBb/b$d;->c:F

    return-void
.end method

.method public c(IIF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    iget-object v0, p0, LBb/b$a;->a:[[LBb/b$d;

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    iput p3, p1, LBb/b$d;->d:F

    return-void
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, LBb/b$a;->a:[[LBb/b$d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public d(IIFFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "r",
            "g",
            "b",
            "a"
        }
    .end annotation

    iget-object v0, p0, LBb/b$a;->a:[[LBb/b$d;

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    iput p3, p1, LBb/b$d;->a:F

    iput p4, p1, LBb/b$d;->b:F

    iput p5, p1, LBb/b$d;->c:F

    iput p6, p1, LBb/b$d;->d:F

    return-void
.end method

.method public e(II)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, LBb/b$a;->a:[[LBb/b$d;

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    iget p1, p1, LBb/b$d;->d:F

    return p1
.end method

.method public f(II)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, LBb/b$a;->a:[[LBb/b$d;

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    iget p1, p1, LBb/b$d;->c:F

    return p1
.end method

.method public g(IIF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    iget-object v0, p0, LBb/b$a;->a:[[LBb/b$d;

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    iput p3, p1, LBb/b$d;->a:F

    return-void
.end method

.method public h(II)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, LBb/b$a;->a:[[LBb/b$d;

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    iget p1, p1, LBb/b$d;->a:F

    return p1
.end method

.method public i(II)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, LBb/b$a;->a:[[LBb/b$d;

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    iget p1, p1, LBb/b$d;->b:F

    return p1
.end method

.method public j(IIF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    iget-object v0, p0, LBb/b$a;->a:[[LBb/b$d;

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    iput p3, p1, LBb/b$d;->b:F

    return-void
.end method

.method public k(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "out"
        }
    .end annotation

    iget-object v0, p0, LBb/b$a;->a:[[LBb/b$d;

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    iget p2, p1, LBb/b$d;->d:F

    iget v0, p1, LBb/b$d;->a:F

    iget v1, p1, LBb/b$d;->b:F

    iget p1, p1, LBb/b$d;->c:F

    invoke-virtual {p3, p2, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->T(FFFF)V

    return-void
.end method

.method public l(IIFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "r",
            "g",
            "b"
        }
    .end annotation

    iget-object v0, p0, LBb/b$a;->a:[[LBb/b$d;

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    iput p3, p1, LBb/b$d;->a:F

    iput p4, p1, LBb/b$d;->b:F

    iput p5, p1, LBb/b$d;->c:F

    return-void
.end method

.method public m(FFFF)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b",
            "a"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LBb/b$a;->c:LBb/b;

    invoke-static {v2}, LBb/b;->a(LBb/b;)I

    move-result v2

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    iget-object v3, p0, LBb/b$a;->c:LBb/b;

    invoke-static {v3}, LBb/b;->b(LBb/b;)I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, LBb/b$a;->a:[[LBb/b$d;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    iput p1, v3, LBb/b$d;->a:F

    iput p2, v3, LBb/b$d;->b:F

    iput p3, v3, LBb/b$d;->c:F

    iput p4, v3, LBb/b$d;->d:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
