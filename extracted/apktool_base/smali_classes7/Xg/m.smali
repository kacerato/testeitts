.class public LXg/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sb",
            "key",
            "value",
            "separator"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "on"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p1, "off"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sb",
            "key",
            "value",
            "separator"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/StringBuilder;Ljava/lang/String;LXg/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sb",
            "key",
            "options"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, LXg/m;->f(LXg/B;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/StringBuilder;Ljava/lang/String;LXg/i;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sb",
            "key",
            "value",
            "separator"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, LXg/j;->f(LXg/i;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public static e(LXg/k;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mtl"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "newmtl "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, LXg/k;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "illum"

    invoke-interface {p0}, LXg/k;->C1()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, LXg/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Ns"

    invoke-interface {p0}, LXg/k;->R1()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, LXg/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Ni"

    invoke-interface {p0}, LXg/k;->d2()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, LXg/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LXg/k;->m1()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "d"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0}, LXg/k;->L2()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "-halo"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "Ka"

    invoke-interface {p0}, LXg/k;->g2()LXg/i;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, LXg/m;->d(Ljava/lang/StringBuilder;Ljava/lang/String;LXg/i;Ljava/lang/String;)V

    const-string v2, "Kd"

    invoke-interface {p0}, LXg/k;->t2()LXg/i;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, LXg/m;->d(Ljava/lang/StringBuilder;Ljava/lang/String;LXg/i;Ljava/lang/String;)V

    const-string v2, "Ks"

    invoke-interface {p0}, LXg/k;->u1()LXg/i;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, LXg/m;->d(Ljava/lang/StringBuilder;Ljava/lang/String;LXg/i;Ljava/lang/String;)V

    const-string v2, "Tf"

    invoke-interface {p0}, LXg/k;->U1()LXg/i;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, LXg/m;->d(Ljava/lang/StringBuilder;Ljava/lang/String;LXg/i;Ljava/lang/String;)V

    const-string v2, "sharpness"

    invoke-interface {p0}, LXg/k;->H2()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, LXg/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "map_Ka"

    invoke-interface {p0}, LXg/k;->P1()LXg/B;

    move-result-object v3

    invoke-static {v0, v2, v3}, LXg/m;->c(Ljava/lang/StringBuilder;Ljava/lang/String;LXg/B;)V

    const-string v2, "map_Kd"

    invoke-interface {p0}, LXg/k;->C2()LXg/B;

    move-result-object v3

    invoke-static {v0, v2, v3}, LXg/m;->c(Ljava/lang/StringBuilder;Ljava/lang/String;LXg/B;)V

    const-string v2, "map_Ks"

    invoke-interface {p0}, LXg/k;->r2()LXg/B;

    move-result-object v3

    invoke-static {v0, v2, v3}, LXg/m;->c(Ljava/lang/StringBuilder;Ljava/lang/String;LXg/B;)V

    const-string v2, "map_Ns"

    invoke-interface {p0}, LXg/k;->a2()LXg/B;

    move-result-object v3

    invoke-static {v0, v2, v3}, LXg/m;->c(Ljava/lang/StringBuilder;Ljava/lang/String;LXg/B;)V

    const-string v2, "map_d"

    invoke-interface {p0}, LXg/k;->W1()LXg/B;

    move-result-object v3

    invoke-static {v0, v2, v3}, LXg/m;->c(Ljava/lang/StringBuilder;Ljava/lang/String;LXg/B;)V

    const-string v2, "bump"

    invoke-interface {p0}, LXg/k;->b2()LXg/B;

    move-result-object v3

    invoke-static {v0, v2, v3}, LXg/m;->c(Ljava/lang/StringBuilder;Ljava/lang/String;LXg/B;)V

    const-string v2, "disp"

    invoke-interface {p0}, LXg/k;->j2()LXg/B;

    move-result-object v3

    invoke-static {v0, v2, v3}, LXg/m;->c(Ljava/lang/StringBuilder;Ljava/lang/String;LXg/B;)V

    const-string v2, "decal"

    invoke-interface {p0}, LXg/k;->s1()LXg/B;

    move-result-object v3

    invoke-static {v0, v2, v3}, LXg/m;->c(Ljava/lang/StringBuilder;Ljava/lang/String;LXg/B;)V

    invoke-interface {p0}, LXg/k;->O1()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LXg/B;

    const-string v4, "refl"

    invoke-static {v0, v4, v3}, LXg/m;->c(Ljava/lang/StringBuilder;Ljava/lang/String;LXg/B;)V

    goto :goto_0

    :cond_2
    const-string v2, "Pr"

    invoke-interface {p0}, LXg/k;->i2()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, LXg/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "map_Pr"

    invoke-interface {p0}, LXg/k;->f2()LXg/B;

    move-result-object v3

    invoke-static {v0, v2, v3}, LXg/m;->c(Ljava/lang/StringBuilder;Ljava/lang/String;LXg/B;)V

    const-string v2, "Pm"

    invoke-interface {p0}, LXg/k;->U2()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, LXg/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "map_Pm"

    invoke-interface {p0}, LXg/k;->G2()LXg/B;

    move-result-object v3

    invoke-static {v0, v2, v3}, LXg/m;->c(Ljava/lang/StringBuilder;Ljava/lang/String;LXg/B;)V

    const-string v2, "Ps"

    invoke-interface {p0}, LXg/k;->q2()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, LXg/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "map_Ps"

    invoke-interface {p0}, LXg/k;->k2()LXg/B;

    move-result-object v3

    invoke-static {v0, v2, v3}, LXg/m;->c(Ljava/lang/StringBuilder;Ljava/lang/String;LXg/B;)V

    const-string v2, "Pc"

    invoke-interface {p0}, LXg/k;->z1()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, LXg/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Pcr"

    invoke-interface {p0}, LXg/k;->p1()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, LXg/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Ke"

    invoke-interface {p0}, LXg/k;->x2()LXg/i;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, LXg/m;->d(Ljava/lang/StringBuilder;Ljava/lang/String;LXg/i;Ljava/lang/String;)V

    const-string v2, "map_Ke"

    invoke-interface {p0}, LXg/k;->w2()LXg/B;

    move-result-object v3

    invoke-static {v0, v2, v3}, LXg/m;->c(Ljava/lang/StringBuilder;Ljava/lang/String;LXg/B;)V

    const-string v2, "aniso"

    invoke-interface {p0}, LXg/k;->B1()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, LXg/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "anisor"

    invoke-interface {p0}, LXg/k;->Z1()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, LXg/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "norm"

    invoke-interface {p0}, LXg/k;->M2()LXg/B;

    move-result-object p0

    invoke-static {v0, v1, p0}, LXg/m;->c(Ljava/lang/StringBuilder;Ljava/lang/String;LXg/B;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(LXg/B;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, LXg/B;->q()Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "-blendu"

    const-string v3, " "

    invoke-static {v0, v2, v1, v3}, LXg/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, "-blendv"

    invoke-interface {p0}, LXg/B;->o()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, LXg/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, "-boost"

    invoke-interface {p0}, LXg/B;->r()Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, LXg/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "-mm"

    invoke-interface {p0}, LXg/B;->n()LXg/i;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, LXg/m;->d(Ljava/lang/StringBuilder;Ljava/lang/String;LXg/i;Ljava/lang/String;)V

    const-string v1, "-o"

    invoke-interface {p0}, LXg/B;->u()LXg/i;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, LXg/m;->d(Ljava/lang/StringBuilder;Ljava/lang/String;LXg/i;Ljava/lang/String;)V

    const-string v1, "-s"

    invoke-interface {p0}, LXg/B;->getS()LXg/i;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, LXg/m;->d(Ljava/lang/StringBuilder;Ljava/lang/String;LXg/i;Ljava/lang/String;)V

    const-string v1, "-t"

    invoke-interface {p0}, LXg/B;->j()LXg/i;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, LXg/m;->d(Ljava/lang/StringBuilder;Ljava/lang/String;LXg/i;Ljava/lang/String;)V

    const-string v1, "-texres"

    invoke-interface {p0}, LXg/B;->v()Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, LXg/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "-clamp"

    invoke-interface {p0}, LXg/B;->e()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, LXg/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, "-bm"

    invoke-interface {p0}, LXg/B;->m()Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, LXg/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "-imfchan"

    invoke-interface {p0}, LXg/B;->w()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, LXg/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "-type"

    invoke-interface {p0}, LXg/B;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, LXg/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LXg/B;->getFileName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(LXg/k;Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mtl",
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, LXg/m;->e(LXg/k;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public static h(Ljava/lang/Iterable;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mtls",
            "outputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LXg/k;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0, v0}, LXg/m;->i(Ljava/lang/Iterable;Ljava/io/Writer;)V

    return-void
.end method

.method public static i(Ljava/lang/Iterable;Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mtls",
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LXg/k;",
            ">;",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXg/k;

    invoke-static {v0, p1}, LXg/m;->g(LXg/k;Ljava/io/Writer;)V

    goto :goto_0

    :cond_0
    return-void
.end method
