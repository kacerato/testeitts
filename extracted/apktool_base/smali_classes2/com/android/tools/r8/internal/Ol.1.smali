.class public final Lcom/android/tools/r8/internal/Ol;
.super Lcom/android/tools/r8/internal/Ql;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/android/tools/r8/internal/Iw;


# static fields
.field public static final n:[Lcom/android/tools/r8/internal/Tx0;


# instance fields
.field public final b:I

.field public final c:Lcom/android/tools/r8/internal/Ek;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/android/tools/r8/internal/Pl;

.field public final f:Lcom/android/tools/r8/internal/Cl;

.field public final g:Z

.field public h:Lcom/android/tools/r8/internal/Nl;

.field public i:Lcom/android/tools/r8/internal/Cl;

.field public j:Lcom/android/tools/r8/internal/Cl;

.field public final k:Lcom/android/tools/r8/internal/Sl;

.field public l:Lcom/android/tools/r8/internal/Hl;

.field public m:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/Tx0;->f:[Lcom/android/tools/r8/internal/Tx0;

    invoke-virtual {v0}, [Lcom/android/tools/r8/internal/Tx0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/internal/Tx0;

    sput-object v0, Lcom/android/tools/r8/internal/Ol;->n:[Lcom/android/tools/r8/internal/Tx0;

    sget-object v0, Lcom/android/tools/r8/internal/Nl;->h:[Lcom/android/tools/r8/internal/Nl;

    array-length v0, v0

    sget-object v1, Lcom/android/tools/r8/internal/Dk;->u:[Lcom/android/tools/r8/internal/Dk;

    invoke-virtual {v1}, [Lcom/android/tools/r8/internal/Dk;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/tools/r8/internal/Dk;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "descriptor.proto has a new declared type but Descriptors.java wasn\'t updated."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ek;Lcom/android/tools/r8/internal/Pl;Lcom/android/tools/r8/internal/Cl;IZ)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ql;-><init>()V

    iput p4, p0, Lcom/android/tools/r8/internal/Ol;->b:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ek;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/android/tools/r8/internal/Ul;->a(Lcom/android/tools/r8/internal/Pl;Lcom/android/tools/r8/internal/Cl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/android/tools/r8/internal/Ol;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ol;->e:Lcom/android/tools/r8/internal/Pl;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ek;->h()Z

    move-result p4

    if-eqz p4, :cond_1

    iget p4, p1, Lcom/android/tools/r8/internal/Ek;->f:I

    invoke-static {p4}, Lcom/android/tools/r8/internal/Dk;->a(I)Lcom/android/tools/r8/internal/Dk;

    move-result-object p4

    if-nez p4, :cond_0

    sget-object p4, Lcom/android/tools/r8/internal/Dk;->c:Lcom/android/tools/r8/internal/Dk;

    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/Nl;->h:[Lcom/android/tools/r8/internal/Nl;

    iget p4, p4, Lcom/android/tools/r8/internal/Dk;->b:I

    add-int/lit8 p4, p4, -0x1

    aget-object p4, v0, p4

    iput-object p4, p0, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    :cond_1
    iget-boolean p4, p1, Lcom/android/tools/r8/internal/Ek;->m:Z

    iput-boolean p4, p0, Lcom/android/tools/r8/internal/Ol;->g:Z

    iget p4, p1, Lcom/android/tools/r8/internal/Ek;->d:I

    if-lez p4, :cond_9

    const/4 p4, 0x0

    if-eqz p5, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ek;->e()Z

    move-result p5

    if-eqz p5, :cond_4

    iput-object p4, p0, Lcom/android/tools/r8/internal/Ol;->i:Lcom/android/tools/r8/internal/Cl;

    if-eqz p3, :cond_2

    iput-object p3, p0, Lcom/android/tools/r8/internal/Ol;->f:Lcom/android/tools/r8/internal/Cl;

    goto :goto_0

    :cond_2
    iput-object p4, p0, Lcom/android/tools/r8/internal/Ol;->f:Lcom/android/tools/r8/internal/Cl;

    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ek;->f()Z

    move-result p1

    if-nez p1, :cond_3

    iput-object p4, p0, Lcom/android/tools/r8/internal/Ol;->k:Lcom/android/tools/r8/internal/Sl;

    goto :goto_2

    :cond_3
    new-instance p1, Lcom/android/tools/r8/internal/Fl;

    const-string p2, "FieldDescriptorProto.oneof_index set for extension field."

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/android/tools/r8/internal/Fl;

    const-string p2, "FieldDescriptorProto.extendee not set for extension field."

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ek;->e()Z

    move-result p5

    if-nez p5, :cond_8

    iput-object p3, p0, Lcom/android/tools/r8/internal/Ol;->i:Lcom/android/tools/r8/internal/Cl;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ek;->f()Z

    move-result p5

    if-eqz p5, :cond_7

    iget p5, p1, Lcom/android/tools/r8/internal/Ek;->j:I

    if-ltz p5, :cond_6

    iget-object v0, p3, Lcom/android/tools/r8/internal/Cl;->b:Lcom/android/tools/r8/internal/hk;

    iget-object v0, v0, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p5, v0, :cond_6

    iget-object p3, p3, Lcom/android/tools/r8/internal/Cl;->j:[Lcom/android/tools/r8/internal/Sl;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iget p1, p1, Lcom/android/tools/r8/internal/Ek;->j:I

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Sl;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ol;->k:Lcom/android/tools/r8/internal/Sl;

    iget p3, p1, Lcom/android/tools/r8/internal/Sl;->g:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p1, Lcom/android/tools/r8/internal/Sl;->g:I

    goto :goto_1

    :cond_6
    new-instance p1, Lcom/android/tools/r8/internal/Fl;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "FieldDescriptorProto.oneof_index is out of range for type "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p3, Lcom/android/tools/r8/internal/Cl;->b:Lcom/android/tools/r8/internal/hk;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/hk;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    throw p1

    :cond_7
    iput-object p4, p0, Lcom/android/tools/r8/internal/Ol;->k:Lcom/android/tools/r8/internal/Sl;

    :goto_1
    iput-object p4, p0, Lcom/android/tools/r8/internal/Ol;->f:Lcom/android/tools/r8/internal/Cl;

    :goto_2
    iget-object p1, p2, Lcom/android/tools/r8/internal/Pl;->h:Lcom/android/tools/r8/internal/El;

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/El;->a(Lcom/android/tools/r8/internal/Ql;)V

    return-void

    :cond_8
    new-instance p1, Lcom/android/tools/r8/internal/Fl;

    const-string p2, "FieldDescriptorProto.extendee set for non-extension field."

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Lcom/android/tools/r8/internal/Fl;

    const-string p2, "Field numbers must be positive integers."

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lcom/android/tools/r8/internal/Ol;)V
    .locals 10

    .line 2
    const-string v0, "Couldn\'t parse default value: "

    const-string v1, "Unknown enum default value: \""

    .line 3
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 4
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ek;->e()Z

    move-result v2

    const-string v3, "\" is not a message type."

    const-string v4, "\""

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    .line 5
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ol;->e:Lcom/android/tools/r8/internal/Pl;

    .line 6
    iget-object v2, v2, Lcom/android/tools/r8/internal/Pl;->h:Lcom/android/tools/r8/internal/El;

    .line 7
    iget-object v6, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 8
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Ek;->b()Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-virtual {v2, p0, v6}, Lcom/android/tools/r8/internal/El;->a(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)Lcom/android/tools/r8/internal/Ql;

    move-result-object v2

    .line 10
    instance-of v6, v2, Lcom/android/tools/r8/internal/Cl;

    if-eqz v6, :cond_2

    .line 11
    check-cast v2, Lcom/android/tools/r8/internal/Cl;

    iput-object v2, p0, Lcom/android/tools/r8/internal/Ol;->i:Lcom/android/tools/r8/internal/Cl;

    .line 12
    iget-object v6, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 13
    iget v6, v6, Lcom/android/tools/r8/internal/Ek;->d:I

    .line 14
    iget-object v7, v2, Lcom/android/tools/r8/internal/Cl;->k:[I

    invoke-static {v7, v6}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v7

    if-gez v7, :cond_0

    not-int v7, v7

    sub-int/2addr v7, v5

    :cond_0
    if-ltz v7, :cond_1

    .line 15
    iget-object v2, v2, Lcom/android/tools/r8/internal/Cl;->l:[I

    aget v2, v2, v7

    if-ge v6, v2, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/Fl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ol;->i:Lcom/android/tools/r8/internal/Cl;

    .line 18
    iget-object v2, v2, Lcom/android/tools/r8/internal/Cl;->c:Ljava/lang/String;

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" does not declare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 21
    iget v2, v2, Lcom/android/tools/r8/internal/Ek;->d:I

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " as an extension number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    .line 24
    throw v0

    .line 25
    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/Fl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 26
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ek;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    .line 28
    throw v0

    .line 29
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ek;->i()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 30
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ol;->e:Lcom/android/tools/r8/internal/Pl;

    .line 31
    iget-object v2, v2, Lcom/android/tools/r8/internal/Pl;->h:Lcom/android/tools/r8/internal/El;

    .line 32
    iget-object v6, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 33
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Ek;->c()Ljava/lang/String;

    move-result-object v6

    .line 34
    invoke-virtual {v2, p0, v6}, Lcom/android/tools/r8/internal/El;->a(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)Lcom/android/tools/r8/internal/Ql;

    move-result-object v2

    .line 35
    iget-object v6, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Ek;->h()Z

    move-result v6

    if-nez v6, :cond_6

    .line 36
    instance-of v6, v2, Lcom/android/tools/r8/internal/Cl;

    if-eqz v6, :cond_4

    .line 37
    sget-object v6, Lcom/android/tools/r8/internal/Nl;->e:Lcom/android/tools/r8/internal/Nl;

    iput-object v6, p0, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    goto :goto_1

    .line 38
    :cond_4
    instance-of v6, v2, Lcom/android/tools/r8/internal/Hl;

    if-eqz v6, :cond_5

    .line 39
    sget-object v6, Lcom/android/tools/r8/internal/Nl;->g:Lcom/android/tools/r8/internal/Nl;

    iput-object v6, p0, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    goto :goto_1

    .line 40
    :cond_5
    new-instance v0, Lcom/android/tools/r8/internal/Fl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 41
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ek;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is not a type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    .line 43
    throw v0

    .line 44
    :cond_6
    :goto_1
    iget-object v6, p0, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    .line 45
    iget-object v6, v6, Lcom/android/tools/r8/internal/Nl;->b:Lcom/android/tools/r8/internal/Ml;

    .line 46
    sget-object v7, Lcom/android/tools/r8/internal/Ml;->k:Lcom/android/tools/r8/internal/Ml;

    if-ne v6, v7, :cond_9

    .line 47
    instance-of v6, v2, Lcom/android/tools/r8/internal/Cl;

    if-eqz v6, :cond_8

    .line 48
    check-cast v2, Lcom/android/tools/r8/internal/Cl;

    iput-object v2, p0, Lcom/android/tools/r8/internal/Ol;->j:Lcom/android/tools/r8/internal/Cl;

    .line 49
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ek;->d()Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    .line 50
    :cond_7
    new-instance v0, Lcom/android/tools/r8/internal/Fl;

    const-string v1, "Messages can\'t have default values."

    .line 51
    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    .line 52
    throw v0

    .line 53
    :cond_8
    new-instance v0, Lcom/android/tools/r8/internal/Fl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 54
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ek;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    .line 56
    throw v0

    .line 57
    :cond_9
    sget-object v3, Lcom/android/tools/r8/internal/Ml;->j:Lcom/android/tools/r8/internal/Ml;

    if-ne v6, v3, :cond_b

    .line 58
    instance-of v3, v2, Lcom/android/tools/r8/internal/Hl;

    if-eqz v3, :cond_a

    .line 59
    check-cast v2, Lcom/android/tools/r8/internal/Hl;

    iput-object v2, p0, Lcom/android/tools/r8/internal/Ol;->l:Lcom/android/tools/r8/internal/Hl;

    goto :goto_2

    .line 60
    :cond_a
    new-instance v0, Lcom/android/tools/r8/internal/Fl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 61
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ek;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is not an enum type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    .line 63
    throw v0

    .line 64
    :cond_b
    new-instance v0, Lcom/android/tools/r8/internal/Fl;

    const-string v1, "Field with primitive type has type_name."

    .line 65
    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    .line 66
    throw v0

    .line 67
    :cond_c
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    .line 68
    iget-object v2, v2, Lcom/android/tools/r8/internal/Nl;->b:Lcom/android/tools/r8/internal/Ml;

    .line 69
    sget-object v3, Lcom/android/tools/r8/internal/Ml;->k:Lcom/android/tools/r8/internal/Ml;

    if-eq v2, v3, :cond_21

    sget-object v3, Lcom/android/tools/r8/internal/Ml;->j:Lcom/android/tools/r8/internal/Ml;

    if-eq v2, v3, :cond_21

    .line 70
    :goto_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 71
    iget-object v2, v2, Lcom/android/tools/r8/internal/Ek;->l:Lcom/android/tools/r8/internal/Jk;

    if-nez v2, :cond_d

    .line 72
    sget-object v2, Lcom/android/tools/r8/internal/Jk;->l:Lcom/android/tools/r8/internal/Jk;

    .line 73
    :cond_d
    iget-boolean v2, v2, Lcom/android/tools/r8/internal/Jk;->e:Z

    if-eqz v2, :cond_f

    .line 74
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 75
    sget-object v2, Lcom/android/tools/r8/internal/Ol;->n:[Lcom/android/tools/r8/internal/Tx0;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    .line 76
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Tx0;->a()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_3

    .line 77
    :cond_e
    new-instance v0, Lcom/android/tools/r8/internal/Fl;

    const-string v1, "[packed = true] can only be specified for repeated primitive fields."

    .line 78
    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    .line 79
    throw v0

    .line 80
    :cond_f
    :goto_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ek;->d()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_19

    .line 81
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v2

    if-nez v2, :cond_18

    const/16 v2, 0x22

    .line 82
    :try_start_0
    iget-object v6, p0, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    .line 83
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "nan"

    const-string v8, "-inf"

    const-string v9, "inf"

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_6

    .line 84
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->l:Lcom/android/tools/r8/internal/Hl;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Ek;->a()Ljava/lang/String;

    move-result-object v4

    .line 85
    iget-object v5, v0, Lcom/android/tools/r8/internal/Hl;->d:Lcom/android/tools/r8/internal/Pl;

    .line 86
    iget-object v5, v5, Lcom/android/tools/r8/internal/Pl;->h:Lcom/android/tools/r8/internal/El;

    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/android/tools/r8/internal/Hl;->c:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    .line 88
    invoke-virtual {v5, v4, v0}, Lcom/android/tools/r8/internal/El;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/Ql;

    move-result-object v0

    .line 89
    instance-of v4, v0, Lcom/android/tools/r8/internal/Kl;

    if-eqz v4, :cond_10

    .line 90
    move-object v3, v0

    check-cast v3, Lcom/android/tools/r8/internal/Kl;

    goto :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_5

    .line 91
    :cond_10
    :goto_4
    iput-object v3, p0, Lcom/android/tools/r8/internal/Ol;->m:Ljava/lang/Object;

    if-eqz v3, :cond_11

    goto/16 :goto_6

    .line 92
    :cond_11
    new-instance v0, Lcom/android/tools/r8/internal/Fl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 93
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ek;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    .line 95
    throw v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    :pswitch_1
    :try_start_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ek;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/Cr0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/i8;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/Ol;->m:Ljava/lang/Object;
    :try_end_2
    .catch Lcom/android/tools/r8/internal/yr0; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    :catch_1
    move-exception v1

    .line 97
    :try_start_3
    new-instance v3, Lcom/android/tools/r8/internal/Fl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-direct {v3, p0, v0}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 101
    throw v3

    .line 102
    :pswitch_2
    new-instance v0, Lcom/android/tools/r8/internal/Fl;

    const-string v1, "Message type had default value."

    .line 103
    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    .line 104
    throw v0

    .line 105
    :pswitch_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ol;->m:Ljava/lang/Object;

    goto/16 :goto_6

    .line 106
    :pswitch_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ol;->m:Ljava/lang/Object;

    goto/16 :goto_6

    .line 107
    :pswitch_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->a()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0, v4, v4}, Lcom/android/tools/r8/internal/Cr0;->a(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ol;->m:Ljava/lang/Object;

    goto/16 :goto_6

    .line 110
    :pswitch_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->a()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0, v5, v4}, Lcom/android/tools/r8/internal/Cr0;->a(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ol;->m:Ljava/lang/Object;

    goto/16 :goto_6

    .line 113
    :pswitch_7
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->a()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v0, v4, v5}, Lcom/android/tools/r8/internal/Cr0;->a(Ljava/lang/String;ZZ)J

    move-result-wide v0

    .line 115
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ol;->m:Ljava/lang/Object;

    goto/16 :goto_6

    .line 116
    :pswitch_8
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->a()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0, v5, v5}, Lcom/android/tools/r8/internal/Cr0;->a(Ljava/lang/String;ZZ)J

    move-result-wide v0

    .line 118
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ol;->m:Ljava/lang/Object;

    goto/16 :goto_6

    .line 119
    :pswitch_9
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 120
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ol;->m:Ljava/lang/Object;

    goto/16 :goto_6

    .line 121
    :cond_12
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 122
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ol;->m:Ljava/lang/Object;

    goto/16 :goto_6

    .line 123
    :cond_13
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 124
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ol;->m:Ljava/lang/Object;

    goto/16 :goto_6

    .line 125
    :cond_14
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ol;->m:Ljava/lang/Object;

    goto/16 :goto_6

    .line 126
    :pswitch_a
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 127
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ol;->m:Ljava/lang/Object;

    goto/16 :goto_6

    .line 128
    :cond_15
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 129
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ol;->m:Ljava/lang/Object;

    goto/16 :goto_6

    .line 130
    :cond_16
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 131
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ol;->m:Ljava/lang/Object;

    goto :goto_6

    .line 132
    :cond_17
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ol;->m:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    .line 133
    :goto_5
    new-instance v1, Lcom/android/tools/r8/internal/Fl;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not parse default value: \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 134
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Ek;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-direct {v1, p0, v2}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 137
    throw v1

    .line 138
    :cond_18
    new-instance v0, Lcom/android/tools/r8/internal/Fl;

    const-string v1, "Repeated fields cannot have default values."

    .line 139
    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    .line 140
    throw v0

    .line 141
    :cond_19
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 142
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ol;->m:Ljava/lang/Object;

    goto :goto_6

    .line 143
    :cond_1a
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    .line 144
    iget-object v0, v0, Lcom/android/tools/r8/internal/Nl;->b:Lcom/android/tools/r8/internal/Ml;

    .line 145
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1b

    .line 146
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    .line 147
    iget-object v0, v0, Lcom/android/tools/r8/internal/Nl;->b:Lcom/android/tools/r8/internal/Ml;

    .line 148
    iget-object v0, v0, Lcom/android/tools/r8/internal/Ml;->b:Ljava/io/Serializable;

    .line 149
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ol;->m:Ljava/lang/Object;

    goto :goto_6

    .line 150
    :cond_1b
    iput-object v3, p0, Lcom/android/tools/r8/internal/Ol;->m:Ljava/lang/Object;

    goto :goto_6

    .line 151
    :cond_1c
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->l:Lcom/android/tools/r8/internal/Hl;

    .line 152
    iget-object v0, v0, Lcom/android/tools/r8/internal/Hl;->e:[Lcom/android/tools/r8/internal/Kl;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 153
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ol;->m:Ljava/lang/Object;

    .line 154
    :goto_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->i:Lcom/android/tools/r8/internal/Cl;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Cl;->f()Lcom/android/tools/r8/internal/Tk;

    move-result-object v0

    .line 155
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/Tk;->d:Z

    if-eqz v0, :cond_20

    .line 156
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->e()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 157
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 158
    iget v0, v0, Lcom/android/tools/r8/internal/Ek;->e:I

    .line 159
    invoke-static {v0}, Lcom/android/tools/r8/internal/Ck;->a(I)Lcom/android/tools/r8/internal/Ck;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 160
    sget-object v0, Lcom/android/tools/r8/internal/Ck;->c:Lcom/android/tools/r8/internal/Ck;

    .line 161
    :cond_1d
    sget-object v1, Lcom/android/tools/r8/internal/Ck;->c:Lcom/android/tools/r8/internal/Ck;

    if-ne v0, v1, :cond_1e

    .line 162
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    .line 163
    sget-object v1, Lcom/android/tools/r8/internal/Nl;->e:Lcom/android/tools/r8/internal/Nl;

    if-ne v0, v1, :cond_1e

    goto :goto_7

    .line 164
    :cond_1e
    new-instance v0, Lcom/android/tools/r8/internal/Fl;

    const-string v1, "Extensions of MessageSets must be optional messages."

    .line 165
    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    .line 166
    throw v0

    .line 167
    :cond_1f
    new-instance v0, Lcom/android/tools/r8/internal/Fl;

    const-string v1, "MessageSets cannot have fields, only extensions."

    .line 168
    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    .line 169
    throw v0

    :cond_20
    :goto_7
    return-void

    .line 170
    :cond_21
    new-instance v0, Lcom/android/tools/r8/internal/Fl;

    const-string v1, "Field with message or enum type missing type_name."

    .line 171
    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    .line 172
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Pl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->e:Lcom/android/tools/r8/internal/Pl;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/android/tools/r8/internal/Ol;

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->i:Lcom/android/tools/r8/internal/Cl;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ol;->i:Lcom/android/tools/r8/internal/Cl;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    iget v0, v0, Lcom/android/tools/r8/internal/Ek;->d:I

    iget-object p1, p1, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    iget p1, p1, Lcom/android/tools/r8/internal/Ek;->d:I

    sub-int/2addr v0, p1

    return v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptors can only be compared to other FieldDescriptors for fields of the same message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d()Lcom/android/tools/r8/internal/fW;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    return-object v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Nl;->b:Lcom/android/tools/r8/internal/Ml;

    sget-object v1, Lcom/android/tools/r8/internal/Ml;->k:Lcom/android/tools/r8/internal/Ml;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->m:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FieldDescriptor.getDefaultValue() called on an embedded message field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()Lcom/android/tools/r8/internal/Hl;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Nl;->b:Lcom/android/tools/r8/internal/Ml;

    sget-object v1, Lcom/android/tools/r8/internal/Ml;->j:Lcom/android/tools/r8/internal/Ml;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->l:Lcom/android/tools/r8/internal/Hl;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ol;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "This field is not of enum type. ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()Lcom/android/tools/r8/internal/Vx0;
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/Ol;->n:[Lcom/android/tools/r8/internal/Tx0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/tools/r8/internal/Tx0;->b:Lcom/android/tools/r8/internal/Vx0;

    return-object v0
.end method

.method public final h()Lcom/android/tools/r8/internal/Cl;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Nl;->b:Lcom/android/tools/r8/internal/Ml;

    sget-object v1, Lcom/android/tools/r8/internal/Ml;->k:Lcom/android/tools/r8/internal/Ml;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->j:Lcom/android/tools/r8/internal/Cl;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ol;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "This field is not of message type. ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    sget-object v1, Lcom/android/tools/r8/internal/Nl;->e:Lcom/android/tools/r8/internal/Nl;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ol;->h()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Cl;->f()Lcom/android/tools/r8/internal/Tk;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/Tk;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/tools/r8/internal/Ol;->n:[Lcom/android/tools/r8/internal/Tx0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Tx0;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->e:Lcom/android/tools/r8/internal/Pl;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Pl;->e()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ek;->l:Lcom/android/tools/r8/internal/Jk;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/Jk;->l:Lcom/android/tools/r8/internal/Jk;

    :cond_0
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/Jk;->e:Z

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ek;->l:Lcom/android/tools/r8/internal/Jk;

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/tools/r8/internal/Jk;->l:Lcom/android/tools/r8/internal/Jk;

    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Jk;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ek;->l:Lcom/android/tools/r8/internal/Jk;

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/tools/r8/internal/Jk;->l:Lcom/android/tools/r8/internal/Jk;

    :cond_3
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/Jk;->e:Z

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_6
    return v1
.end method

.method public final k()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    iget v0, v0, Lcom/android/tools/r8/internal/Ek;->e:I

    invoke-static {v0}, Lcom/android/tools/r8/internal/Ck;->a(I)Lcom/android/tools/r8/internal/Ck;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/Ck;->c:Lcom/android/tools/r8/internal/Ck;

    :cond_0
    sget-object v1, Lcom/android/tools/r8/internal/Ck;->e:Lcom/android/tools/r8/internal/Ck;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    sget-object v1, Lcom/android/tools/r8/internal/Nl;->c:Lcom/android/tools/r8/internal/Nl;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->i:Lcom/android/tools/r8/internal/Cl;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Cl;->f()Lcom/android/tools/r8/internal/Tk;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/Tk;->g:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->e:Lcom/android/tools/r8/internal/Pl;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Pl;->e()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->e:Lcom/android/tools/r8/internal/Pl;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Pl;->b:Lcom/android/tools/r8/internal/Mk;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Mk;->l:Lcom/android/tools/r8/internal/Qk;

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/tools/r8/internal/Qk;->z:Lcom/android/tools/r8/internal/Qk;

    :cond_3
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/Qk;->h:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ol;->d:Ljava/lang/String;

    return-object v0
.end method
