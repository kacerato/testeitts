.class public Lcom/google/protobuf/u2;
.super Lcom/google/protobuf/q2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/q2<",
        "Lcom/google/protobuf/r2;",
        "Lcom/google/protobuf/r2$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proto3"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/q2;-><init>()V

    iput-boolean p1, p0, Lcom/google/protobuf/u2;->a:Z

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;)Lcom/google/protobuf/r2;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/w0;

    iget-object p1, p1, Lcom/google/protobuf/w0;->unknownFields:Lcom/google/protobuf/r2;

    return-object p1
.end method

.method public B(Lcom/google/protobuf/r2;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/r2;->getSerializedSize()I

    move-result p1

    return p1
.end method

.method public C(Lcom/google/protobuf/r2;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unknowns"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/r2;->m1()I

    move-result p1

    return p1
.end method

.method public D(Lcom/google/protobuf/r2;Lcom/google/protobuf/r2;)Lcom/google/protobuf/r2;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "other"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/r2;->V4()Lcom/google/protobuf/r2$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/protobuf/r2$b;->B6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/r2$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/r2$b;->T0()Lcom/google/protobuf/r2;

    move-result-object p1

    return-object p1
.end method

.method public E()Lcom/google/protobuf/r2$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/r2;->Q1()Lcom/google/protobuf/r2$b;

    move-result-object v0

    return-object v0
.end method

.method public F(Ljava/lang/Object;Lcom/google/protobuf/r2$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "builder"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/w0;

    invoke-virtual {p2}, Lcom/google/protobuf/r2$b;->T0()Lcom/google/protobuf/r2;

    move-result-object p2

    iput-object p2, p1, Lcom/google/protobuf/w0;->unknownFields:Lcom/google/protobuf/r2;

    return-void
.end method

.method public G(Ljava/lang/Object;Lcom/google/protobuf/r2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "fields"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/w0;

    iput-object p2, p1, Lcom/google/protobuf/w0;->unknownFields:Lcom/google/protobuf/r2;

    return-void
.end method

.method public H(Lcom/google/protobuf/r2$b;)Lcom/google/protobuf/r2;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fields"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/r2$b;->T0()Lcom/google/protobuf/r2;

    move-result-object p1

    return-object p1
.end method

.method public I(Lcom/google/protobuf/r2;Lcom/google/protobuf/C2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/google/protobuf/r2;->q6(Lcom/google/protobuf/C2;)V

    return-void
.end method

.method public J(Lcom/google/protobuf/r2;Lcom/google/protobuf/C2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/google/protobuf/r2;->r6(Lcom/google/protobuf/C2;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "fields",
            "number",
            "value"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/r2$b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/u2;->u(Lcom/google/protobuf/r2$b;II)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "fields",
            "number",
            "value"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/r2$b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/u2;->v(Lcom/google/protobuf/r2$b;IJ)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "fields",
            "number",
            "subFieldSet"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/r2$b;

    check-cast p3, Lcom/google/protobuf/r2;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/u2;->w(Lcom/google/protobuf/r2$b;ILcom/google/protobuf/r2;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;ILcom/google/protobuf/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "fields",
            "number",
            "value"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/r2$b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/u2;->x(Lcom/google/protobuf/r2$b;ILcom/google/protobuf/x;)V

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "fields",
            "number",
            "value"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/r2$b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/u2;->y(Lcom/google/protobuf/r2$b;IJ)V

    return-void
.end method

.method public bridge synthetic f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "message"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/u2;->z(Ljava/lang/Object;)Lcom/google/protobuf/r2$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "message"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/u2;->A(Ljava/lang/Object;)Lcom/google/protobuf/r2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "message"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/r2;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/u2;->B(Lcom/google/protobuf/r2;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic i(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "unknowns"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/r2;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/u2;->C(Lcom/google/protobuf/r2;)I

    move-result p1

    return p1
.end method

.method public j(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "message",
            "other"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/r2;

    check-cast p2, Lcom/google/protobuf/r2;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/u2;->D(Lcom/google/protobuf/r2;Lcom/google/protobuf/r2;)Lcom/google/protobuf/r2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic n()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/u2;->E()Lcom/google/protobuf/r2$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "message",
            "builder"
        }
    .end annotation

    check-cast p2, Lcom/google/protobuf/r2$b;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/u2;->F(Ljava/lang/Object;Lcom/google/protobuf/r2$b;)V

    return-void
.end method

.method public bridge synthetic p(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "message",
            "fields"
        }
    .end annotation

    check-cast p2, Lcom/google/protobuf/r2;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/u2;->G(Ljava/lang/Object;Lcom/google/protobuf/r2;)V

    return-void
.end method

.method public q(Lcom/google/protobuf/E1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reader"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/protobuf/E1;->u()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic r(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "fields"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/r2$b;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/u2;->H(Lcom/google/protobuf/r2$b;)Lcom/google/protobuf/r2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic s(Ljava/lang/Object;Lcom/google/protobuf/C2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "message",
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/r2;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/u2;->I(Lcom/google/protobuf/r2;Lcom/google/protobuf/C2;)V

    return-void
.end method

.method public bridge synthetic t(Ljava/lang/Object;Lcom/google/protobuf/C2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "message",
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/r2;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/u2;->J(Lcom/google/protobuf/r2;Lcom/google/protobuf/C2;)V

    return-void
.end method

.method public u(Lcom/google/protobuf/r2$b;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fields",
            "number",
            "value"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/r2$c;->u()Lcom/google/protobuf/r2$c$a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/protobuf/r2$c$a;->b(I)Lcom/google/protobuf/r2$c$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/protobuf/r2$c$a;->g()Lcom/google/protobuf/r2$c;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/r2$b;->u6(ILcom/google/protobuf/r2$c;)Lcom/google/protobuf/r2$b;

    return-void
.end method

.method public v(Lcom/google/protobuf/r2$b;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fields",
            "number",
            "value"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/r2$c;->u()Lcom/google/protobuf/r2$c$a;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/google/protobuf/r2$c$a;->c(J)Lcom/google/protobuf/r2$c$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/protobuf/r2$c$a;->g()Lcom/google/protobuf/r2$c;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/r2$b;->u6(ILcom/google/protobuf/r2$c;)Lcom/google/protobuf/r2$b;

    return-void
.end method

.method public w(Lcom/google/protobuf/r2$b;ILcom/google/protobuf/r2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fields",
            "number",
            "subFieldSet"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/r2$c;->u()Lcom/google/protobuf/r2$c$a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/protobuf/r2$c$a;->d(Lcom/google/protobuf/r2;)Lcom/google/protobuf/r2$c$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/protobuf/r2$c$a;->g()Lcom/google/protobuf/r2$c;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/r2$b;->u6(ILcom/google/protobuf/r2$c;)Lcom/google/protobuf/r2$b;

    return-void
.end method

.method public x(Lcom/google/protobuf/r2$b;ILcom/google/protobuf/x;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fields",
            "number",
            "value"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/r2$c;->u()Lcom/google/protobuf/r2$c$a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/protobuf/r2$c$a;->e(Lcom/google/protobuf/x;)Lcom/google/protobuf/r2$c$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/protobuf/r2$c$a;->g()Lcom/google/protobuf/r2$c;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/r2$b;->u6(ILcom/google/protobuf/r2$c;)Lcom/google/protobuf/r2$b;

    return-void
.end method

.method public y(Lcom/google/protobuf/r2$b;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fields",
            "number",
            "value"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/r2$c;->u()Lcom/google/protobuf/r2$c$a;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/google/protobuf/r2$c$a;->f(J)Lcom/google/protobuf/r2$c$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/protobuf/r2$c$a;->g()Lcom/google/protobuf/r2$c;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/r2$b;->u6(ILcom/google/protobuf/r2$c;)Lcom/google/protobuf/r2$b;

    return-void
.end method

.method public z(Ljava/lang/Object;)Lcom/google/protobuf/r2$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/w0;

    iget-object p1, p1, Lcom/google/protobuf/w0;->unknownFields:Lcom/google/protobuf/r2;

    invoke-virtual {p1}, Lcom/google/protobuf/r2;->V4()Lcom/google/protobuf/r2$b;

    move-result-object p1

    return-object p1
.end method
