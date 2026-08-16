.class public LF5/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LF5/c$q0;,
        LF5/c$o0;,
        LF5/c$u0;,
        LF5/c$r0;,
        LF5/c$t0;,
        LF5/c$p0;,
        LF5/c$s0;,
        LF5/c$n0;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/String;[F)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "var"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LF5/c;->B(Ljava/lang/String;[F[F)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static B(Ljava/lang/String;[F[F)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "var",
            "reset"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, LF5/c;->C(Ljava/lang/String;[F[FLF5/c$u0;)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static C(Ljava/lang/String;[F[FLF5/c$u0;)LC5/b;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "var",
            "reset",
            "onChanged"
        }
    .end annotation

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-instance v2, LC5/b;

    sget-object v3, LC5/b$a;->Vector:LC5/b$a;

    new-array v1, v1, [LC5/b;

    invoke-direct {v2, p0, v3, v1}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v3, LF5/c$z;

    invoke-direct {v3, p1, p3}, LF5/c$z;-><init>([FLF5/c$u0;)V

    sget-object v4, LC5/b$a;->SLFloatWrap:LC5/b$a;

    const-string v5, "X"

    invoke-direct {v1, v3, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v3, 0x0

    aput-object v1, p0, v3

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v3, LF5/c$A;

    invoke-direct {v3, p1, p3}, LF5/c$A;-><init>([FLF5/c$u0;)V

    const-string v5, "Y"

    invoke-direct {v1, v3, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v3, 0x1

    aput-object v1, p0, v3

    if-eqz p2, :cond_1

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v4, LF5/c$B;

    invoke-direct {v4, p1, p2, p3, v2}, LF5/c$B;-><init>([F[FLF5/c$u0;LC5/b;)V

    const-string p1, "R"

    sget-object p2, LC5/b$a;->Button:LC5/b$a;

    invoke-direct {v1, v4, p1, p2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v1, v3}, LC5/b;->n(Z)LC5/b;

    move-result-object p1

    aput-object p1, p0, v0

    :cond_1
    return-object v2
.end method

.method public static D(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LC5/b;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "var",
            "reset"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, LC5/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LC5/a;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, LC5/b;-><init>(LC5/a;)V

    iget-object p0, v0, LC5/b;->Q:LC5/a;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT_GREEN:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    iput v1, p0, LC5/a;->p:I

    new-instance p0, LC5/b;

    sget-object v1, LC5/b$a;->Vector:LC5/b$a;

    const/4 v3, 0x2

    new-array v3, v3, [LC5/b;

    const/4 v4, 0x0

    invoke-direct {p0, v4, v1, v3}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    iget-object v1, p0, LC5/b;->p:[LC5/b;

    new-instance v3, LC5/b;

    new-instance v4, LF5/c$t;

    invoke-direct {v4, p1}, LF5/c$t;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    sget-object v5, LC5/b$a;->SLFloatWrap:LC5/b$a;

    const-string v6, "X"

    invoke-direct {v3, v4, v6, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    aput-object v3, v1, v2

    iget-object v1, p0, LC5/b;->p:[LC5/b;

    new-instance v2, LC5/b;

    new-instance v3, LF5/c$u;

    invoke-direct {v3, p1}, LF5/c$u;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    const-string v4, "Y"

    invoke-direct {v2, v3, v4, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v1, v0, LC5/b;->Q:LC5/a;

    iget-object v1, v1, LC5/a;->o:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, LC5/b;->Q:LC5/a;

    iget-object v1, v1, LC5/a;->o:Ljava/util/List;

    new-instance v2, LC5/b;

    new-instance v4, LF5/c$v;

    invoke-direct {v4, p1, p2, p0}, LF5/c$v;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;LC5/b;)V

    const-string p0, "R"

    sget-object p1, LC5/b$a;->Button:LC5/b$a;

    invoke-direct {v2, v4, p0, p1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v2, v3}, LC5/b;->n(Z)LC5/b;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static E(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "var"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LF5/c;->F(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static F(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;)LC5/b;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "var",
            "reset"
        }
    .end annotation

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-instance v2, LC5/b;

    sget-object v3, LC5/b$a;->Vector:LC5/b$a;

    new-array v1, v1, [LC5/b;

    invoke-direct {v2, p0, v3, v1}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v3, LF5/c$C;

    invoke-direct {v3, p1}, LF5/c$C;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;)V

    sget-object v4, LC5/b$a;->SLIntWrap:LC5/b$a;

    const-string v5, "X"

    invoke-direct {v1, v3, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v3, 0x0

    aput-object v1, p0, v3

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v3, LF5/c$D;

    invoke-direct {v3, p1}, LF5/c$D;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;)V

    const-string v5, "Y"

    invoke-direct {v1, v3, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v3, 0x1

    aput-object v1, p0, v3

    if-eqz p2, :cond_1

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v4, LF5/c$E;

    invoke-direct {v4, p1, p2, v2}, LF5/c$E;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;LC5/b;)V

    const-string p1, "R"

    sget-object p2, LC5/b$a;->Button:LC5/b$a;

    invoke-direct {v1, v4, p1, p2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v1, v3}, LC5/b;->n(Z)LC5/b;

    move-result-object p1

    aput-object p1, p0, v0

    :cond_1
    return-object v2
.end method

.method public static G(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "var"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LF5/c;->H(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static H(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;)LC5/b;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "var",
            "reset"
        }
    .end annotation

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-instance v2, LC5/b;

    sget-object v3, LC5/b$a;->Vector:LC5/b$a;

    new-array v1, v1, [LC5/b;

    invoke-direct {v2, p0, v3, v1}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v3, LF5/c$F;

    invoke-direct {v3, p1}, LF5/c$F;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;)V

    sget-object v4, LC5/b$a;->SLIntWrap:LC5/b$a;

    const-string v5, "X"

    invoke-direct {v1, v3, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v3, 0x0

    aput-object v1, p0, v3

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v3, LF5/c$H;

    invoke-direct {v3, p1}, LF5/c$H;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;)V

    const-string v5, "Y"

    invoke-direct {v1, v3, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v3, 0x1

    aput-object v1, p0, v3

    if-eqz p2, :cond_1

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v4, LF5/c$I;

    invoke-direct {v4, p1, p2, v2}, LF5/c$I;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;LC5/b;)V

    const-string p1, "R"

    sget-object p2, LC5/b$a;->Button:LC5/b$a;

    invoke-direct {v1, v4, p1, p2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v1, v3}, LC5/b;->n(Z)LC5/b;

    move-result-object p1

    aput-object p1, p0, v0

    :cond_1
    return-object v2
.end method

.method public static I(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "var"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LF5/c;->J(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static J(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LC5/b;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "var",
            "reset"
        }
    .end annotation

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-instance v2, LC5/b;

    sget-object v3, LC5/b$a;->Vector:LC5/b$a;

    new-array v1, v1, [LC5/b;

    invoke-direct {v2, p0, v3, v1}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v3, LF5/c$J;

    invoke-direct {v3, p1}, LF5/c$J;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    sget-object v4, LC5/b$a;->SLIntWrap:LC5/b$a;

    const-string v5, "X"

    invoke-direct {v1, v3, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v3, 0x0

    aput-object v1, p0, v3

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v3, LF5/c$K;

    invoke-direct {v3, p1}, LF5/c$K;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    const-string v5, "Y"

    invoke-direct {v1, v3, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v3, 0x1

    aput-object v1, p0, v3

    if-eqz p2, :cond_1

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v4, LF5/c$L;

    invoke-direct {v4, p1, p2, v2}, LF5/c$L;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;LC5/b;)V

    const-string p1, "R"

    sget-object p2, LC5/b$a;->Button:LC5/b$a;

    invoke-direct {v1, v4, p1, p2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v1, v3}, LC5/b;->n(Z)LC5/b;

    move-result-object p1

    aput-object p1, p0, v0

    :cond_1
    return-object v2
.end method

.method public static K(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "var"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LF5/c;->L(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static L(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LC5/b;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "var",
            "reset"
        }
    .end annotation

    const/4 v0, 0x3

    if-eqz p2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-instance v2, LC5/b;

    sget-object v3, LC5/b$a;->Vector:LC5/b$a;

    new-array v1, v1, [LC5/b;

    invoke-direct {v2, p0, v3, v1}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v3, LF5/c$k0;

    invoke-direct {v3, p1}, LF5/c$k0;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    sget-object v4, LC5/b$a;->SLFloatWrap:LC5/b$a;

    const-string v5, "X"

    invoke-direct {v1, v3, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v3, 0x0

    aput-object v1, p0, v3

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v3, LF5/c$l0;

    invoke-direct {v3, p1}, LF5/c$l0;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const-string v5, "Y"

    invoke-direct {v1, v3, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v3, 0x1

    aput-object v1, p0, v3

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v5, LF5/c$m0;

    invoke-direct {v5, p1}, LF5/c$m0;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const-string v6, "z"

    invoke-direct {v1, v5, v6, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v4, 0x2

    aput-object v1, p0, v4

    if-eqz p2, :cond_1

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v4, LF5/c$b;

    invoke-direct {v4, p1, p2, v2}, LF5/c$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;LC5/b;)V

    const-string p1, "R"

    sget-object p2, LC5/b$a;->Button:LC5/b$a;

    invoke-direct {v1, v4, p1, p2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v1, v3}, LC5/b;->n(Z)LC5/b;

    move-result-object p1

    aput-object p1, p0, v0

    :cond_1
    return-object v2
.end method

.method public static M(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;LF5/c$u0;)LC5/b;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "var",
            "reset",
            "onChanged"
        }
    .end annotation

    const/4 v0, 0x3

    if-eqz p2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-instance v2, LC5/b;

    sget-object v3, LC5/b$a;->Vector:LC5/b$a;

    new-array v1, v1, [LC5/b;

    invoke-direct {v2, p0, v3, v1}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v3, LF5/c$g;

    invoke-direct {v3, p1, p3}, LF5/c$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;LF5/c$u0;)V

    sget-object v4, LC5/b$a;->SLFloatWrap:LC5/b$a;

    const-string v5, "X"

    invoke-direct {v1, v3, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v3, 0x0

    aput-object v1, p0, v3

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v3, LF5/c$h;

    invoke-direct {v3, p1, p3}, LF5/c$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;LF5/c$u0;)V

    const-string v5, "Y"

    invoke-direct {v1, v3, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v3, 0x1

    aput-object v1, p0, v3

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v5, LF5/c$i;

    invoke-direct {v5, p1, p3}, LF5/c$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;LF5/c$u0;)V

    const-string v6, "Z"

    invoke-direct {v1, v5, v6, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v4, 0x2

    aput-object v1, p0, v4

    if-eqz p2, :cond_1

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v4, LF5/c$j;

    invoke-direct {v4, p1, p2, p3, v2}, LF5/c$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;LF5/c$u0;LC5/b;)V

    const-string p1, "R"

    sget-object p2, LC5/b$a;->Button:LC5/b$a;

    invoke-direct {v1, v4, p1, p2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v1, v3}, LC5/b;->n(Z)LC5/b;

    move-result-object p1

    aput-object p1, p0, v0

    :cond_1
    return-object v2
.end method

.method public static N(Ljava/lang/String;[F)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "var"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LF5/c;->O(Ljava/lang/String;[F[F)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static O(Ljava/lang/String;[F[F)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "var",
            "reset"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, LF5/c;->P(Ljava/lang/String;[F[FLF5/c$u0;)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static P(Ljava/lang/String;[F[FLF5/c$u0;)LC5/b;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "var",
            "reset",
            "onChanged"
        }
    .end annotation

    const/4 v0, 0x3

    if-eqz p2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-instance v2, LC5/b;

    sget-object v3, LC5/b$a;->Vector:LC5/b$a;

    new-array v1, v1, [LC5/b;

    invoke-direct {v2, p0, v3, v1}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v3, LF5/c$c;

    invoke-direct {v3, p1, p3}, LF5/c$c;-><init>([FLF5/c$u0;)V

    sget-object v4, LC5/b$a;->SLFloatWrap:LC5/b$a;

    const-string v5, "X"

    invoke-direct {v1, v3, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v3, 0x0

    aput-object v1, p0, v3

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v3, LF5/c$d;

    invoke-direct {v3, p1, p3}, LF5/c$d;-><init>([FLF5/c$u0;)V

    const-string v5, "Y"

    invoke-direct {v1, v3, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v3, 0x1

    aput-object v1, p0, v3

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v5, LF5/c$e;

    invoke-direct {v5, p1, p3}, LF5/c$e;-><init>([FLF5/c$u0;)V

    const-string v6, "Z"

    invoke-direct {v1, v5, v6, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v4, 0x2

    aput-object v1, p0, v4

    if-eqz p2, :cond_1

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v4, LF5/c$f;

    invoke-direct {v4, p1, p2, p3, v2}, LF5/c$f;-><init>([F[FLF5/c$u0;LC5/b;)V

    const-string p1, "R"

    sget-object p2, LC5/b$a;->Button:LC5/b$a;

    invoke-direct {v1, v4, p1, p2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v1, v3}, LC5/b;->n(Z)LC5/b;

    move-result-object p1

    aput-object p1, p0, v0

    :cond_1
    return-object v2
.end method

.method public static Q(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "var"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LF5/c;->R(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static R(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "var",
            "reset"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT_GREEN:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    invoke-static {p0, p1, p2, v0}, LF5/c;->S(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;I)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static S(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;I)LC5/b;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "var",
            "reset",
            "color"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, LC5/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LC5/a;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, LC5/b;-><init>(LC5/a;)V

    iget-object p0, v0, LC5/b;->Q:LC5/a;

    iput p3, p0, LC5/a;->p:I

    const/4 p0, 0x3

    if-eqz p2, :cond_0

    const/4 p3, 0x4

    goto :goto_0

    :cond_0
    move p3, p0

    :goto_0
    new-instance v1, LC5/b;

    sget-object v3, LC5/b$a;->Vector:LC5/b$a;

    new-array p3, p3, [LC5/b;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v3, p3}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    iget-object p3, v1, LC5/b;->p:[LC5/b;

    new-instance v3, LC5/b;

    new-instance v4, LF5/c$G;

    invoke-direct {v4, p1}, LF5/c$G;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    sget-object v5, LC5/b$a;->SLFloatWrap:LC5/b$a;

    const-string v6, "X"

    invoke-direct {v3, v4, v6, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    aput-object v3, p3, v2

    iget-object p3, v1, LC5/b;->p:[LC5/b;

    new-instance v2, LC5/b;

    new-instance v3, LF5/c$R;

    invoke-direct {v3, p1}, LF5/c$R;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const-string v4, "Y"

    invoke-direct {v2, v3, v4, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v3, 0x1

    aput-object v2, p3, v3

    iget-object p3, v1, LC5/b;->p:[LC5/b;

    new-instance v2, LC5/b;

    new-instance v4, LF5/c$c0;

    invoke-direct {v4, p1}, LF5/c$c0;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const-string v6, "Z"

    invoke-direct {v2, v4, v6, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v4, 0x2

    aput-object v2, p3, v4

    if-eqz p2, :cond_1

    iget-object p3, v1, LC5/b;->p:[LC5/b;

    new-instance v2, LC5/b;

    new-instance v4, LF5/c$j0;

    invoke-direct {v4, p1, p2, v1}, LF5/c$j0;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;LC5/b;)V

    const-string p1, "R"

    sget-object p2, LC5/b$a;->Button:LC5/b$a;

    invoke-direct {v2, v4, p1, p2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v2, v3}, LC5/b;->n(Z)LC5/b;

    move-result-object p1

    aput-object p1, p3, p0

    :cond_1
    iget-object p0, v0, LC5/b;->Q:LC5/a;

    iget-object p0, p0, LC5/a;->o:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static T(Ljava/lang/String;[F)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "var"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LF5/c;->U(Ljava/lang/String;[F[F)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static U(Ljava/lang/String;[F[F)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "var",
            "reset"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, LF5/c;->V(Ljava/lang/String;[F[FLF5/c$u0;)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static V(Ljava/lang/String;[F[FLF5/c$u0;)LC5/b;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "var",
            "reset",
            "onChanged"
        }
    .end annotation

    const/4 v0, 0x4

    if-eqz p2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-instance v2, LC5/b;

    sget-object v3, LC5/b$a;->Vector:LC5/b$a;

    new-array v1, v1, [LC5/b;

    invoke-direct {v2, p0, v3, v1}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v3, LF5/c$S;

    invoke-direct {v3, p1, p3}, LF5/c$S;-><init>([FLF5/c$u0;)V

    sget-object v4, LC5/b$a;->SLFloatWrap:LC5/b$a;

    const-string v5, "X"

    invoke-direct {v1, v3, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v3, 0x0

    aput-object v1, p0, v3

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v3, LF5/c$T;

    invoke-direct {v3, p1, p3}, LF5/c$T;-><init>([FLF5/c$u0;)V

    const-string v5, "Y"

    invoke-direct {v1, v3, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v3, 0x1

    aput-object v1, p0, v3

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v5, LF5/c$U;

    invoke-direct {v5, p1, p3}, LF5/c$U;-><init>([FLF5/c$u0;)V

    const-string v6, "Z"

    invoke-direct {v1, v5, v6, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v5, 0x2

    aput-object v1, p0, v5

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v5, LF5/c$V;

    invoke-direct {v5, p1, p3}, LF5/c$V;-><init>([FLF5/c$u0;)V

    const-string v6, "W"

    invoke-direct {v1, v5, v6, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v4, 0x3

    aput-object v1, p0, v4

    if-eqz p2, :cond_1

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v4, LF5/c$W;

    invoke-direct {v4, p1, p2, p3, v2}, LF5/c$W;-><init>([F[FLF5/c$u0;LC5/b;)V

    const-string p1, "R"

    sget-object p2, LC5/b$a;->Button:LC5/b$a;

    invoke-direct {v1, v4, p1, p2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v1, v3}, LC5/b;->n(Z)LC5/b;

    move-result-object p1

    aput-object p1, p0, v0

    :cond_1
    return-object v2
.end method

.method public static W(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "var"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LF5/c;->X(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static X(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)LC5/b;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "var",
            "reset"
        }
    .end annotation

    const/4 v0, 0x4

    if-eqz p2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-instance v2, LC5/b;

    sget-object v3, LC5/b$a;->Vector:LC5/b$a;

    new-array v1, v1, [LC5/b;

    invoke-direct {v2, p0, v3, v1}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v3, LF5/c$M;

    invoke-direct {v3, p1}, LF5/c$M;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V

    sget-object v4, LC5/b$a;->SLIntWrap:LC5/b$a;

    const-string v5, "X"

    invoke-direct {v1, v3, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v3, 0x0

    aput-object v1, p0, v3

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v3, LF5/c$N;

    invoke-direct {v3, p1}, LF5/c$N;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V

    const-string v5, "Y"

    invoke-direct {v1, v3, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v3, 0x1

    aput-object v1, p0, v3

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v5, LF5/c$O;

    invoke-direct {v5, p1}, LF5/c$O;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V

    const-string v6, "Z"

    invoke-direct {v1, v5, v6, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v5, 0x2

    aput-object v1, p0, v5

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v5, LF5/c$P;

    invoke-direct {v5, p1}, LF5/c$P;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V

    const-string v6, "W"

    invoke-direct {v1, v5, v6, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v4, 0x3

    aput-object v1, p0, v4

    if-eqz p2, :cond_1

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v4, LF5/c$Q;

    invoke-direct {v4, p1, p2, v2}, LF5/c$Q;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;LC5/b;)V

    const-string p1, "R"

    sget-object p2, LC5/b$a;->Button:LC5/b$a;

    invoke-direct {v1, v4, p1, p2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v1, v3}, LC5/b;->n(Z)LC5/b;

    move-result-object p1

    aput-object p1, p0, v0

    :cond_1
    return-object v2
.end method

.method public static Y(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "floatingPanelArea"
        }
    .end annotation

    const/16 v0, 0xc8

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;->Fixed:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;

    const/16 v2, 0x132

    invoke-virtual {p0, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->I1(IILcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;LF5/a;)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "brushListener"
        }
    .end annotation

    const-string v0, "Brush"

    invoke-static {p0, v0, p1}, LF5/c;->b(Landroid/content/Context;Ljava/lang/String;LF5/a;)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;LF5/a;)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "tittle",
            "brushListener"
        }
    .end annotation

    new-instance p0, LC5/b;

    new-instance v0, LF5/c$Z;

    invoke-direct {v0, p1, p2}, LF5/c$Z;-><init>(Ljava/lang/String;LF5/a;)V

    const p1, 0x7f0c00d0

    const/4 p2, 0x0

    invoke-direct {p0, v0, p1, p2}, LC5/b;-><init>(LD5/e;ILjava/lang/Object;)V

    return-object p0
.end method

.method public static c(Ljava/lang/String;LF5/b;)LC5/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "listener"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, LF5/c$X;

    invoke-direct {v1, p1}, LF5/c$X;-><init>(LF5/b;)V

    sget-object p1, LC5/b$a;->Button:LC5/b$a;

    invoke-direct {v0, v1, p0, p1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    return-object v0
.end method

.method public static d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inspectorMemory",
            "tittleText",
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, LN7/c;->B()Landroid/view/LayoutInflater;

    move-result-object v5

    new-instance v6, LC5/b;

    new-instance v7, LF5/c$l;

    move-object v0, v7

    move-object v1, p2

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, LF5/c$l;-><init>(LF5/c$o0;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Landroid/content/Context;Landroid/view/LayoutInflater;)V

    const p0, 0x7f0c00d8

    const/4 p1, 0x0

    invoke-direct {v6, v7, p0, p1}, LC5/b;-><init>(LD5/e;ILjava/lang/Object;)V

    return-object v6
.end method

.method public static e(Ljava/lang/String;LF5/c$o0;)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittleText",
            "listener"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;LF5/c$o0;)LC5/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittleText",
            "inspectorMemory",
            "listener"
        }
    .end annotation

    invoke-static {p1, p0, p2}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;LJAVARuntime/Color;LF5/c$p0;)LC5/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "color",
            "listener"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, LC5/b;

    new-instance v1, LF5/c$g0;

    invoke-direct {v1, p2, p1}, LF5/c$g0;-><init>(LF5/c$p0;LJAVARuntime/Color;)V

    sget-object p1, LC5/b$a;->Color:LC5/b$a;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v0, v1, p0, p1, p2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Landroid/content/Context;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Color can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "listener can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Ljava/lang/String;LF5/c$q0;)LC5/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "title",
            "decalListener"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, LF5/c$a;

    invoke-direct {v1, p0, p1}, LF5/c$a;-><init>(Ljava/lang/String;LF5/c$q0;)V

    const p0, 0x7f0c00fb

    const/4 p1, 0x0

    invoke-direct {v0, v1, p0, p1}, LC5/b;-><init>(LD5/e;ILjava/lang/Object;)V

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "enumClass",
            "value",
            "listener"
        }
    .end annotation

    sget-object v0, LC5/b$a;->SLDropdown:LC5/b$a;

    invoke-static {p0, p1, p2, p3, v0}, LF5/c;->j(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;LC5/b$a;)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;LC5/b$a;)LC5/b;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "enumClass",
            "value",
            "listener",
            "type"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-interface {p3, v2}, LF5/c$r0;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p3, v2}, LF5/c$r0;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p3, p2}, LF5/c$r0;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    move-object v3, p1

    goto :goto_2

    :cond_2
    const-string p1, ""

    goto :goto_1

    :goto_2
    new-instance p1, LC5/b;

    new-instance v2, LF5/c$e0;

    invoke-direct {v2, v0, p3}, LF5/c$e0;-><init>(Ljava/util/List;LF5/c$r0;)V

    move-object v1, p1

    move-object v5, p4

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;Ljava/util/List;LC5/b$a;Ljava/lang/String;)V

    return-object p1

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "enumClass should be an enum"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static k(Ljava/lang/String;LF5/d;)LC5/b;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "listener"
        }
    .end annotation

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sget-object v0, Lrc/a;->t:Lrc/a$f;

    invoke-virtual {v0}, Lrc/a$f;->e()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/android/tools/r8/internal/oN0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/oN0;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Jo1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Jo1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    new-instance v6, LC5/b;

    new-instance v1, LF5/c$Y;

    invoke-direct {v1, p1, v3}, LF5/c$Y;-><init>(LF5/d;Ljava/util/List;)V

    invoke-interface {p1}, LF5/d;->get()Ljava/lang/String;

    move-result-object v2

    sget-object v4, LC5/b$a;->SLDropdown:LC5/b$a;

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;Ljava/util/List;LC5/b$a;Ljava/lang/String;)V

    return-object v6
.end method

.method public static l(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;LF5/e;)LC5/b;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "editor",
            "listener"
        }
    .end annotation

    if-eqz p2, :cond_1

    new-instance v0, LC5/b;

    new-instance v1, LC5/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, LC5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    invoke-direct {v0, v1}, LC5/b;-><init>(LC5/a;)V

    iget-object p0, v0, LC5/b;->Q:LC5/a;

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, LC5/a;->p:I

    move p0, v2

    :goto_0
    invoke-interface {p2}, LF5/e;->d()I

    move-result p1

    if-ge p0, p1, :cond_0

    new-instance p1, LC5/b;

    sget-object v1, LC5/b$a;->Vector:LC5/b$a;

    const/4 v3, 0x2

    new-array v3, v3, [LC5/b;

    const/4 v4, 0x0

    invoke-direct {p1, v4, v1, v3}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    iget-object v1, p1, LC5/b;->p:[LC5/b;

    new-instance v3, LC5/b;

    new-instance v5, LF5/c$b0;

    invoke-direct {v5, p2, p0}, LF5/c$b0;-><init>(LF5/e;I)V

    const v6, 0x7f0c00fd

    invoke-direct {v3, v5, v6, v4}, LC5/b;-><init>(LD5/e;ILjava/lang/Object;)V

    aput-object v3, v1, v2

    iget-object v1, p1, LC5/b;->p:[LC5/b;

    aget-object v3, v1, v2

    const/4 v4, 0x1

    iput-boolean v4, v3, LC5/b;->H:Z

    invoke-interface {p2, p0}, LF5/e;->b(I)LC5/b;

    move-result-object v3

    aput-object v3, v1, v4

    iget-object v1, v0, LC5/b;->Q:LC5/a;

    iget-object v1, v1, LC5/a;->o:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, v0, LC5/b;->Q:LC5/a;

    iget-object p0, p0, LC5/a;->o:Ljava/util/List;

    new-instance p1, LC5/b;

    new-instance v1, LF5/c$d0;

    invoke-direct {v1, p2}, LF5/c$d0;-><init>(LF5/e;)V

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ADD_NEW:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    sget-object v2, LC5/b$a;->Button:LC5/b$a;

    invoke-direct {p1, v1, p2, v2}, LC5/b;-><init>(LD5/b;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "listener can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static m(Landroid/content/Context;LF5/f;)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    const-string v0, "Prefab"

    invoke-static {p0, v0, p1}, LF5/c;->n(Landroid/content/Context;Ljava/lang/String;LF5/f;)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static n(Landroid/content/Context;Ljava/lang/String;LF5/f;)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "tittle",
            "listener"
        }
    .end annotation

    new-instance p0, LC5/b;

    new-instance v0, LF5/c$a0;

    invoke-direct {v0, p1, p2}, LF5/c$a0;-><init>(Ljava/lang/String;LF5/f;)V

    const p1, 0x7f0c00d0

    const/4 p2, 0x0

    invoke-direct {p0, v0, p1, p2}, LC5/b;-><init>(LD5/e;ILjava/lang/Object;)V

    return-object p0
.end method

.method public static o(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "quaternion"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LF5/c;->p(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)LC5/b;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "quaternion",
            "reset"
        }
    .end annotation

    const/4 v0, 0x3

    if-eqz p2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-instance v2, LC5/b;

    sget-object v3, LC5/b$a;->Vector:LC5/b$a;

    new-array v1, v1, [LC5/b;

    invoke-direct {v2, p0, v3, v1}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v3, LF5/c$p;

    invoke-direct {v3, p1}, LF5/c$p;-><init>(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    sget-object v4, LC5/b$a;->SLFloatWrap:LC5/b$a;

    const-string v5, "X"

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-direct {v1, v3, v5, v4, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;F)V

    const/4 v3, 0x0

    aput-object v1, p0, v3

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v3, LF5/c$q;

    invoke-direct {v3, p1}, LF5/c$q;-><init>(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    const-string v5, "Y"

    invoke-direct {v1, v3, v5, v4, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;F)V

    const/4 v3, 0x1

    aput-object v1, p0, v3

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v5, LF5/c$r;

    invoke-direct {v5, p1}, LF5/c$r;-><init>(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    const-string v7, "Z"

    invoke-direct {v1, v5, v7, v4, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;F)V

    const/4 v4, 0x2

    aput-object v1, p0, v4

    if-eqz p2, :cond_1

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v4, LF5/c$s;

    invoke-direct {v4, p1, p2, v2}, LF5/c$s;-><init>(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;LC5/b;)V

    const-string p1, "R"

    sget-object p2, LC5/b$a;->Button:LC5/b$a;

    invoke-direct {v1, v4, p1, p2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v1, v3}, LC5/b;->n(Z)LC5/b;

    move-result-object p1

    aput-object p1, p0, v0

    :cond_1
    return-object v2
.end method

.method public static q(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "quaternion",
            "reset"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT_GREEN:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    invoke-static {p0, p1, p2, v0}, LF5/c;->r(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;I)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static r(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;I)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "quaternion",
            "reset",
            "color"
        }
    .end annotation

    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT_GREEN:LAc/b;

    invoke-static {p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p3

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, LF5/c;->s(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;ILcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;ILcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)LC5/b;
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
            "tittle",
            "quaternion",
            "reset",
            "color",
            "editor"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, LC5/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, p4}, LC5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    invoke-direct {v0, v1}, LC5/b;-><init>(LC5/a;)V

    iget-object p0, v0, LC5/b;->Q:LC5/a;

    iput p3, p0, LC5/a;->p:I

    new-instance p0, LC5/b;

    sget-object p3, LC5/b$a;->Vector:LC5/b$a;

    const/4 p4, 0x3

    new-array p4, p4, [LC5/b;

    const/4 v1, 0x0

    invoke-direct {p0, v1, p3, p4}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    iget-object p3, p0, LC5/b;->p:[LC5/b;

    new-instance p4, LC5/b;

    new-instance v1, LF5/c$k;

    invoke-direct {v1, p1}, LF5/c$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    sget-object v3, LC5/b$a;->SLFloatWrap:LC5/b$a;

    const-string v4, "X"

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-direct {p4, v1, v4, v3, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;F)V

    const/4 v1, 0x0

    aput-object p4, p3, v1

    iget-object p3, p0, LC5/b;->p:[LC5/b;

    new-instance p4, LC5/b;

    new-instance v1, LF5/c$m;

    invoke-direct {v1, p1}, LF5/c$m;-><init>(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    const-string v4, "Y"

    invoke-direct {p4, v1, v4, v3, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;F)V

    aput-object p4, p3, v2

    iget-object p3, p0, LC5/b;->p:[LC5/b;

    new-instance p4, LC5/b;

    new-instance v1, LF5/c$n;

    invoke-direct {v1, p1}, LF5/c$n;-><init>(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    const-string v4, "Z"

    invoke-direct {p4, v1, v4, v3, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;F)V

    const/4 v1, 0x2

    aput-object p4, p3, v1

    iget-object p3, v0, LC5/b;->Q:LC5/a;

    iget-object p3, p3, LC5/a;->o:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, v0, LC5/b;->Q:LC5/a;

    iget-object p3, p3, LC5/a;->o:Ljava/util/List;

    new-instance p4, LC5/b;

    new-instance v1, LF5/c$o;

    invoke-direct {v1, p1, p2, p0}, LF5/c$o;-><init>(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;LC5/b;)V

    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->RESET:LAc/b;

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, LC5/b$a;->Button:LC5/b$a;

    invoke-direct {p4, v1, p0, p1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {p4, v2}, LC5/b;->n(Z)LC5/b;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static t(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "quaternion",
            "reset",
            "editor"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT_GREEN:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    invoke-static {p0, p1, p2, v0, p3}, LF5/c;->s(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;ILcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static u(Ljava/lang/String;IILF5/c$s0;)LC5/b;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "value",
            "maxID",
            "listener"
        }
    .end annotation

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    const-string v5, "x"

    if-ge v2, v1, :cond_1

    aget v6, v0, v2

    if-le v4, p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p2, LC5/b;

    new-instance v1, LF5/c$i0;

    invoke-direct {v1, p3, p1}, LF5/c$i0;-><init>(LF5/c$s0;I)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    aget v0, v0, p1

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    aget p1, v0, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, LC5/b$a;->SLDropdown:LC5/b$a;

    move-object v0, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;Ljava/util/List;LC5/b$a;Ljava/lang/String;)V

    return-object p2
.end method

.method public static v(Ljava/lang/String;ILF5/c$s0;)LC5/b;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "value",
            "listener"
        }
    .end annotation

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const-string v4, "x"

    if-ge v2, v1, :cond_0

    aget v5, v0, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v6, LC5/b;

    new-instance v1, LF5/c$h0;

    invoke-direct {v1, p2, p1}, LF5/c$h0;-><init>(LF5/c$s0;I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    aget v0, v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    aget p1, v0, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, LC5/b$a;->SLDropdown:LC5/b$a;

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;Ljava/util/List;LC5/b$a;Ljava/lang/String;)V

    return-object v6
.end method

.method public static w(Ljava/lang/String;LJAVARuntime/Texture;LF5/c$t0;)LC5/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "texture",
            "listener"
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, LC5/b;

    new-instance v1, LF5/c$f0;

    invoke-direct {v1, p2, p1}, LF5/c$f0;-><init>(LF5/c$t0;LJAVARuntime/Texture;)V

    sget-object p1, LC5/b$a;->Texture:LC5/b$a;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v0, v1, p0, p1, p2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Landroid/content/Context;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "listener can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static x(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "var"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LF5/c;->y(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static y(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "var",
            "reset"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, LF5/c;->z(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;LF5/c$u0;)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static z(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;LF5/c$u0;)LC5/b;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "var",
            "reset",
            "onChanged"
        }
    .end annotation

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-instance v2, LC5/b;

    sget-object v3, LC5/b$a;->Vector:LC5/b$a;

    new-array v1, v1, [LC5/b;

    invoke-direct {v2, p0, v3, v1}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v3, LF5/c$w;

    invoke-direct {v3, p1, p3}, LF5/c$w;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;LF5/c$u0;)V

    sget-object v4, LC5/b$a;->SLFloatWrap:LC5/b$a;

    const-string v5, "X"

    invoke-direct {v1, v3, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v3, 0x0

    aput-object v1, p0, v3

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v3, LF5/c$x;

    invoke-direct {v3, p1, p3}, LF5/c$x;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;LF5/c$u0;)V

    const-string v5, "Y"

    invoke-direct {v1, v3, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v3, 0x1

    aput-object v1, p0, v3

    if-eqz p2, :cond_1

    iget-object p0, v2, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v4, LF5/c$y;

    invoke-direct {v4, p1, p2, p3, v2}, LF5/c$y;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;LF5/c$u0;LC5/b;)V

    const-string p1, "R"

    sget-object p2, LC5/b$a;->Button:LC5/b$a;

    invoke-direct {v1, v4, p1, p2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v1, v3}, LC5/b;->n(Z)LC5/b;

    move-result-object p1

    aput-object p1, p0, v0

    :cond_1
    return-object v2
.end method
