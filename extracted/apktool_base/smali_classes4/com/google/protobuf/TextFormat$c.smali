.class public final Lcom/google/protobuf/TextFormat$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TextFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/TextFormat$c$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/google/protobuf/TextFormat$c;


# instance fields
.field public final a:Z

.field public final b:Lcom/google/protobuf/l2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/protobuf/TextFormat$c;

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/protobuf/l2;->d()Lcom/google/protobuf/l2;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/TextFormat$c;-><init>(ZLcom/google/protobuf/l2;)V

    sput-object v0, Lcom/google/protobuf/TextFormat$c;->c:Lcom/google/protobuf/TextFormat$c;

    return-void
.end method

.method public constructor <init>(ZLcom/google/protobuf/l2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "escapeNonAscii",
            "typeRegistry"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/protobuf/TextFormat$c;->a:Z

    iput-object p2, p0, Lcom/google/protobuf/TextFormat$c;->b:Lcom/google/protobuf/l2;

    return-void
.end method

.method public static synthetic a(Lcom/google/protobuf/r2;Lcom/google/protobuf/TextFormat$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/protobuf/TextFormat$c;->s(Lcom/google/protobuf/r2;Lcom/google/protobuf/TextFormat$d;)V

    return-void
.end method

.method public static synthetic b()Lcom/google/protobuf/TextFormat$c;
    .locals 1

    sget-object v0, Lcom/google/protobuf/TextFormat$c;->c:Lcom/google/protobuf/TextFormat$c;

    return-object v0
.end method

.method public static q(IILjava/util/List;Lcom/google/protobuf/TextFormat$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "number",
            "wireType",
            "values",
            "generator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/protobuf/TextFormat$d;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    const-string v1, ": "

    invoke-virtual {p3, v1}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    invoke-static {p1, v0, p3}, Lcom/google/protobuf/TextFormat$c;->r(ILjava/lang/Object;Lcom/google/protobuf/TextFormat$d;)V

    invoke-virtual {p3}, Lcom/google/protobuf/TextFormat$d;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static r(ILjava/lang/Object;Lcom/google/protobuf/TextFormat$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "tag",
            "value",
            "generator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/A2;->b(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    check-cast p1, Ljava/lang/Integer;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "0x%08x"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad tag: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Lcom/google/protobuf/r2;

    invoke-static {p1, p2}, Lcom/google/protobuf/TextFormat$c;->s(Lcom/google/protobuf/r2;Lcom/google/protobuf/TextFormat$d;)V

    goto :goto_0

    :cond_2
    :try_start_0
    move-object p0, p1

    check-cast p0, Lcom/google/protobuf/x;

    invoke-static {p0}, Lcom/google/protobuf/r2;->d3(Lcom/google/protobuf/x;)Lcom/google/protobuf/r2;

    move-result-object p0

    const-string v0, "{"

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/google/protobuf/TextFormat$d;->a()V

    invoke-virtual {p2}, Lcom/google/protobuf/TextFormat$d;->b()V

    invoke-static {p0, p2}, Lcom/google/protobuf/TextFormat$c;->s(Lcom/google/protobuf/r2;Lcom/google/protobuf/TextFormat$d;)V

    invoke-virtual {p2}, Lcom/google/protobuf/TextFormat$d;->c()V

    const-string p0, "}"

    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "\""

    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    check-cast p1, Lcom/google/protobuf/x;

    invoke-static {p1}, Lcom/google/protobuf/TextFormat;->e(Lcom/google/protobuf/x;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    check-cast p1, Ljava/lang/Long;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "0x%016x"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/TextFormat;->T(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static s(Lcom/google/protobuf/r2;Lcom/google/protobuf/TextFormat$d;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "unknownFields",
            "generator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/r2;->a0()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/r2$c;

    invoke-virtual {v2}, Lcom/google/protobuf/r2$c;->t()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, p1}, Lcom/google/protobuf/TextFormat$c;->q(IILjava/util/List;Lcom/google/protobuf/TextFormat$d;)V

    const/4 v3, 0x5

    invoke-virtual {v2}, Lcom/google/protobuf/r2$c;->m()Ljava/util/List;

    move-result-object v4

    invoke-static {v1, v3, v4, p1}, Lcom/google/protobuf/TextFormat$c;->q(IILjava/util/List;Lcom/google/protobuf/TextFormat$d;)V

    const/4 v3, 0x1

    invoke-virtual {v2}, Lcom/google/protobuf/r2$c;->n()Ljava/util/List;

    move-result-object v4

    invoke-static {v1, v3, v4, p1}, Lcom/google/protobuf/TextFormat$c;->q(IILjava/util/List;Lcom/google/protobuf/TextFormat$d;)V

    const/4 v3, 0x2

    invoke-virtual {v2}, Lcom/google/protobuf/r2$c;->q()Ljava/util/List;

    move-result-object v4

    invoke-static {v1, v3, v4, p1}, Lcom/google/protobuf/TextFormat$c;->q(IILjava/util/List;Lcom/google/protobuf/TextFormat$d;)V

    invoke-virtual {v2}, Lcom/google/protobuf/r2$c;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/r2;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    const-string v3, " {"

    invoke-virtual {p1, v3}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$d;->a()V

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$d;->b()V

    invoke-static {v2, p1}, Lcom/google/protobuf/TextFormat$c;->s(Lcom/google/protobuf/r2;Lcom/google/protobuf/TextFormat$d;)V

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$d;->c()V

    const-string v2, "}"

    invoke-virtual {p1, v2}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$d;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public c(Z)Lcom/google/protobuf/TextFormat$c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "escapeNonAscii"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/TextFormat$c;

    iget-object v1, p0, Lcom/google/protobuf/TextFormat$c;->b:Lcom/google/protobuf/l2;

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/TextFormat$c;-><init>(ZLcom/google/protobuf/l2;)V

    return-object v0
.end method

.method public final d(Lcom/google/protobuf/e1;Lcom/google/protobuf/TextFormat$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "generator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/protobuf/e1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "google.protobuf.Any"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/TextFormat$c;->g(Lcom/google/protobuf/e1;Lcom/google/protobuf/TextFormat$d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/TextFormat$c;->m(Lcom/google/protobuf/e1;Lcom/google/protobuf/TextFormat$d;)V

    return-void
.end method

.method public e(Lcom/google/protobuf/e1;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/protobuf/TextFormat;->a(Ljava/lang/Appendable;)Lcom/google/protobuf/TextFormat$d;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/TextFormat$c;->d(Lcom/google/protobuf/e1;Lcom/google/protobuf/TextFormat$d;)V

    return-void
.end method

.method public f(Lcom/google/protobuf/r2;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fields",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/protobuf/TextFormat;->a(Ljava/lang/Appendable;)Lcom/google/protobuf/TextFormat$d;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/protobuf/TextFormat$c;->s(Lcom/google/protobuf/r2;Lcom/google/protobuf/TextFormat$d;)V

    return-void
.end method

.method public final g(Lcom/google/protobuf/e1;Lcom/google/protobuf/TextFormat$d;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "generator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/protobuf/e1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/Descriptors$b;->k(I)Lcom/google/protobuf/Descriptors$f;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/google/protobuf/Descriptors$b;->k(I)Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$f;->A()Lcom/google/protobuf/Descriptors$f$c;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$f$c;->STRING:Lcom/google/protobuf/Descriptors$f$c;

    if-ne v4, v5, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->A()Lcom/google/protobuf/Descriptors$f$c;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$f$c;->BYTES:Lcom/google/protobuf/Descriptors$f$c;

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v2}, Lcom/google/protobuf/e1;->getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    :cond_1
    invoke-interface {p1, v0}, Lcom/google/protobuf/e1;->getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->b:Lcom/google/protobuf/l2;

    invoke-virtual {v0, v2}, Lcom/google/protobuf/l2;->c(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    invoke-static {v0}, Lcom/google/protobuf/P;->r6(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/P;->w6()Lcom/google/protobuf/P$c;

    move-result-object v0

    check-cast p1, Lcom/google/protobuf/x;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Y0$a;->mergeFrom(Lcom/google/protobuf/x;)Lcom/google/protobuf/Y0$a;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "["

    invoke-virtual {p2, p1}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v2}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    const-string p1, "] {"

    invoke-virtual {p2, p1}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/google/protobuf/TextFormat$d;->a()V

    invoke-virtual {p2}, Lcom/google/protobuf/TextFormat$d;->b()V

    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/TextFormat$c;->d(Lcom/google/protobuf/e1;Lcom/google/protobuf/TextFormat$d;)V

    invoke-virtual {p2}, Lcom/google/protobuf/TextFormat$d;->c()V

    const-string p1, "}"

    invoke-virtual {p2, p1}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/google/protobuf/TextFormat$d;->a()V

    return v1

    :catch_0
    :cond_3
    :goto_0
    return v3
.end method

.method public final h(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "field",
            "value",
            "generator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/google/protobuf/TextFormat$c$a;

    invoke-direct {v2, v1, p1}, Lcom/google/protobuf/TextFormat$c$a;-><init>(Ljava/lang/Object;Lcom/google/protobuf/Descriptors$f;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/TextFormat$c$a;

    invoke-virtual {v0}, Lcom/google/protobuf/TextFormat$c$a;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/protobuf/TextFormat$c;->n(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$d;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/protobuf/TextFormat$c;->n(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$d;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/TextFormat$c;->n(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$d;)V

    :cond_3
    return-void
.end method

.method public i(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "field",
            "value",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p3}, Lcom/google/protobuf/TextFormat;->a(Ljava/lang/Appendable;)Lcom/google/protobuf/TextFormat$d;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/TextFormat$c;->h(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$d;)V

    return-void
.end method

.method public j(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/TextFormat$c;->i(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final k(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "field",
            "value",
            "generator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/TextFormat$a;->b:[I

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->A()Lcom/google/protobuf/Descriptors$f$c;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "\""

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    check-cast p2, Lcom/google/protobuf/e1;

    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/TextFormat$c;->d(Lcom/google/protobuf/e1;Lcom/google/protobuf/TextFormat$d;)V

    goto/16 :goto_2

    :pswitch_1
    check-cast p2, Lcom/google/protobuf/Descriptors$e;

    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$e;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    instance-of p1, p2, Lcom/google/protobuf/x;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/google/protobuf/x;

    invoke-static {p2}, Lcom/google/protobuf/TextFormat;->e(Lcom/google/protobuf/x;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    check-cast p2, [B

    invoke-static {p2}, Lcom/google/protobuf/TextFormat;->f([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/google/protobuf/TextFormat$c;->a:Z

    if-eqz p1, :cond_1

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/protobuf/c2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/protobuf/TextFormat;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\n"

    const-string v1, "\\n"

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p3, p1}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_4
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/protobuf/TextFormat;->T(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/google/protobuf/TextFormat;->S(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_6
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_7
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_8
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_9
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_a
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public l(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "field",
            "value",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p3}, Lcom/google/protobuf/TextFormat;->a(Ljava/lang/Appendable;)Lcom/google/protobuf/TextFormat$d;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/TextFormat$c;->k(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$d;)V

    return-void
.end method

.method public final m(Lcom/google/protobuf/e1;Lcom/google/protobuf/TextFormat$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "generator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/protobuf/e1;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$f;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1, p2}, Lcom/google/protobuf/TextFormat$c;->h(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$d;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/e1;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/protobuf/TextFormat$c;->s(Lcom/google/protobuf/r2;Lcom/google/protobuf/TextFormat$d;)V

    return-void
.end method

.method public final n(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "field",
            "value",
            "generator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "["

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->q()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->w()Lcom/google/protobuf/H$z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$z;->X2()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->A()Lcom/google/protobuf/Descriptors$f$c;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$c;->MESSAGE:Lcom/google/protobuf/Descriptors$f$c;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->t()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->x()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->x()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v0, "]"

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->A()Lcom/google/protobuf/Descriptors$f$c;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$c;->GROUP:Lcom/google/protobuf/Descriptors$f$c;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->x()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v0, v1, :cond_3

    const-string v0, " {"

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/google/protobuf/TextFormat$d;->a()V

    invoke-virtual {p3}, Lcom/google/protobuf/TextFormat$d;->b()V

    goto :goto_2

    :cond_3
    const-string v0, ": "

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/TextFormat$c;->k(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$d;)V

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object p1

    if-ne p1, v1, :cond_4

    invoke-virtual {p3}, Lcom/google/protobuf/TextFormat$d;->c()V

    const-string p1, "}"

    invoke-virtual {p3, p1}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-virtual {p3}, Lcom/google/protobuf/TextFormat$d;->a()V

    return-void
.end method

.method public o(Lcom/google/protobuf/e1;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/TextFormat$c;->e(Lcom/google/protobuf/e1;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public p(Lcom/google/protobuf/r2;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fields"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/TextFormat$c;->f(Lcom/google/protobuf/r2;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public t(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->c(Ljava/lang/Appendable;)Lcom/google/protobuf/TextFormat$d;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protobuf/TextFormat$c;->h(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$d;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public u(Lcom/google/protobuf/e1;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->c(Ljava/lang/Appendable;)Lcom/google/protobuf/TextFormat$d;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/TextFormat$c;->d(Lcom/google/protobuf/e1;Lcom/google/protobuf/TextFormat$d;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public v(Lcom/google/protobuf/r2;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fields"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->c(Ljava/lang/Appendable;)Lcom/google/protobuf/TextFormat$d;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/protobuf/TextFormat$c;->s(Lcom/google/protobuf/r2;Lcom/google/protobuf/TextFormat$d;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public w(Lcom/google/protobuf/l2;)Lcom/google/protobuf/TextFormat$c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeRegistry"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->b:Lcom/google/protobuf/l2;

    invoke-static {}, Lcom/google/protobuf/l2;->d()Lcom/google/protobuf/l2;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/protobuf/TextFormat$c;

    iget-boolean v1, p0, Lcom/google/protobuf/TextFormat$c;->a:Z

    invoke-direct {v0, v1, p1}, Lcom/google/protobuf/TextFormat$c;-><init>(ZLcom/google/protobuf/l2;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only one typeRegistry is allowed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
