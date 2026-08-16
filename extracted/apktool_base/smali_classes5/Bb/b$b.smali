.class public LBb/b$b;
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
.field public final synthetic a:Lub/p;

.field public final synthetic b:LBb/b;


# direct methods
.method public constructor <init>(LBb/b;Lub/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$texture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LBb/b$b;->b:LBb/b;

    iput-object p2, p0, LBb/b$b;->a:Lub/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
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

    iget-object v0, p0, LBb/b$b;->a:Lub/p;

    invoke-virtual {v0, p1, p2}, Lub/p;->i(II)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    return-object p1
.end method

.method public apply()V
    .locals 1

    iget-object v0, p0, LBb/b$b;->a:Lub/p;

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

    iget-object v0, p0, LBb/b$b;->a:Lub/p;

    invoke-virtual {v0, p1, p2, p3}, Lub/p;->b0(IIF)V

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

    iget-object v0, p0, LBb/b$b;->a:Lub/p;

    invoke-virtual {v0, p1, p2, p3}, Lub/p;->a0(IIF)V

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public d(IIFFFF)V
    .locals 7
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

    iget-object v0, p0, LBb/b$b;->a:Lub/p;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lub/p;->f0(IIFFFF)V

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

    iget-object v0, p0, LBb/b$b;->a:Lub/p;

    invoke-virtual {v0, p1, p2}, Lub/p;->l(II)F

    move-result p1

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

    iget-object v0, p0, LBb/b$b;->a:Lub/p;

    invoke-virtual {v0, p1, p2}, Lub/p;->m(II)F

    move-result p1

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

    iget-object v0, p0, LBb/b$b;->a:Lub/p;

    invoke-virtual {v0, p1, p2, p3}, Lub/p;->d0(IIF)V

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

    iget-object v0, p0, LBb/b$b;->a:Lub/p;

    invoke-virtual {v0, p1, p2}, Lub/p;->o(II)F

    move-result p1

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

    iget-object v0, p0, LBb/b$b;->a:Lub/p;

    invoke-virtual {v0, p1, p2}, Lub/p;->n(II)F

    move-result p1

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

    iget-object v0, p0, LBb/b$b;->a:Lub/p;

    invoke-virtual {v0, p1, p2, p3}, Lub/p;->c0(IIF)V

    return-void
.end method

.method public k(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
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
            "out"
        }
    .end annotation

    iget-object v0, p0, LBb/b$b;->a:Lub/p;

    invoke-virtual {v0, p1, p2, p3}, Lub/p;->j(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public l(IIFFF)V
    .locals 6
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

    iget-object v0, p0, LBb/b$b;->a:Lub/p;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lub/p;->e0(IIFFF)V

    return-void
.end method

.method public m(FFFF)V
    .locals 10
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

    move v8, v0

    :goto_0
    iget-object v1, p0, LBb/b$b;->b:LBb/b;

    invoke-static {v1}, LBb/b;->a(LBb/b;)I

    move-result v1

    if-ge v8, v1, :cond_1

    move v9, v0

    :goto_1
    iget-object v1, p0, LBb/b$b;->b:LBb/b;

    invoke-static {v1}, LBb/b;->b(LBb/b;)I

    move-result v1

    if-ge v9, v1, :cond_0

    iget-object v1, p0, LBb/b$b;->a:Lub/p;

    move v2, v8

    move v3, v9

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lub/p;->f0(IIFFFF)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
