.class public final Lcom/google/protobuf/Descriptors$g;
.super Lcom/google/protobuf/Descriptors$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Descriptors$g$a;,
        Lcom/google/protobuf/Descriptors$g$b;
    }
.end annotation


# instance fields
.field public b:Lcom/google/protobuf/H$r;

.field public final c:[Lcom/google/protobuf/Descriptors$b;

.field public final d:[Lcom/google/protobuf/Descriptors$d;

.field public final e:[Lcom/google/protobuf/Descriptors$l;

.field public final f:[Lcom/google/protobuf/Descriptors$f;

.field public final g:[Lcom/google/protobuf/Descriptors$g;

.field public final h:[Lcom/google/protobuf/Descriptors$g;

.field public final i:Lcom/google/protobuf/Descriptors$c;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/H$r;[Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$c;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "proto",
            "dependencies",
            "pool",
            "allowUnknownDependencies"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/Descriptors$h;-><init>(Lcom/google/protobuf/Descriptors$a;)V

    .line 2
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$g;->i:Lcom/google/protobuf/Descriptors$c;

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$g;->b:Lcom/google/protobuf/H$r;

    .line 4
    invoke-virtual {p2}, [Lcom/google/protobuf/Descriptors$g;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/protobuf/Descriptors$g;

    iput-object v1, p0, Lcom/google/protobuf/Descriptors$g;->g:[Lcom/google/protobuf/Descriptors$g;

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, p2, v4

    .line 7
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$g;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 9
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->n1()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 10
    invoke-virtual {p1, v2}, Lcom/google/protobuf/H$r;->g4(I)I

    move-result v4

    if-ltz v4, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->d4()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 12
    invoke-virtual {p1, v4}, Lcom/google/protobuf/H$r;->f4(I)Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/Descriptors$g;

    if-nez v5, :cond_2

    if-eqz p4, :cond_1

    goto :goto_2

    .line 14
    :cond_1
    new-instance p1, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid public dependency: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2, v0}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$g;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw p1

    .line 15
    :cond_2
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 16
    :cond_3
    new-instance p1, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "Invalid public dependency index."

    invoke-direct {p1, p0, p2, v0}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$g;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw p1

    .line 17
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    new-array p4, p4, [Lcom/google/protobuf/Descriptors$g;

    iput-object p4, p0, Lcom/google/protobuf/Descriptors$g;->h:[Lcom/google/protobuf/Descriptors$g;

    .line 18
    invoke-interface {p2, p4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$g;->w()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p0}, Lcom/google/protobuf/Descriptors$c;->a(Ljava/lang/String;Lcom/google/protobuf/Descriptors$g;)V

    .line 20
    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->z4()I

    move-result p2

    if-lez p2, :cond_5

    .line 21
    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->z4()I

    move-result p2

    new-array p2, p2, [Lcom/google/protobuf/Descriptors$b;

    goto :goto_3

    .line 22
    :cond_5
    invoke-static {}, Lcom/google/protobuf/Descriptors;->g()[Lcom/google/protobuf/Descriptors$b;

    move-result-object p2

    :goto_3
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$g;->c:[Lcom/google/protobuf/Descriptors$b;

    move p2, v3

    .line 23
    :goto_4
    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->z4()I

    move-result p3

    if-ge p2, p3, :cond_6

    .line 24
    iget-object p3, p0, Lcom/google/protobuf/Descriptors$g;->c:[Lcom/google/protobuf/Descriptors$b;

    new-instance p4, Lcom/google/protobuf/Descriptors$b;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/H$r;->j4(I)Lcom/google/protobuf/H$b;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p4

    move-object v6, p0

    move v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/google/protobuf/Descriptors$b;-><init>(Lcom/google/protobuf/H$b;Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$b;ILcom/google/protobuf/Descriptors$a;)V

    aput-object p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 25
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->f0()I

    move-result p2

    if-lez p2, :cond_7

    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->f0()I

    move-result p2

    new-array p2, p2, [Lcom/google/protobuf/Descriptors$d;

    goto :goto_5

    .line 27
    :cond_7
    invoke-static {}, Lcom/google/protobuf/Descriptors;->h()[Lcom/google/protobuf/Descriptors$d;

    move-result-object p2

    :goto_5
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$g;->d:[Lcom/google/protobuf/Descriptors$d;

    move p2, v3

    .line 28
    :goto_6
    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->f0()I

    move-result p3

    if-ge p2, p3, :cond_8

    .line 29
    iget-object p3, p0, Lcom/google/protobuf/Descriptors$g;->d:[Lcom/google/protobuf/Descriptors$d;

    new-instance p4, Lcom/google/protobuf/Descriptors$d;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/H$r;->i0(I)Lcom/google/protobuf/H$d;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p4

    move-object v6, p0

    move v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/google/protobuf/Descriptors$d;-><init>(Lcom/google/protobuf/H$d;Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$b;ILcom/google/protobuf/Descriptors$a;)V

    aput-object p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 30
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->e2()I

    move-result p2

    if-lez p2, :cond_9

    .line 31
    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->e2()I

    move-result p2

    new-array p2, p2, [Lcom/google/protobuf/Descriptors$l;

    goto :goto_7

    .line 32
    :cond_9
    invoke-static {}, Lcom/google/protobuf/Descriptors;->i()[Lcom/google/protobuf/Descriptors$l;

    move-result-object p2

    :goto_7
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$g;->e:[Lcom/google/protobuf/Descriptors$l;

    move p2, v3

    .line 33
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->e2()I

    move-result p3

    if-ge p2, p3, :cond_a

    .line 34
    iget-object p3, p0, Lcom/google/protobuf/Descriptors$g;->e:[Lcom/google/protobuf/Descriptors$l;

    new-instance p4, Lcom/google/protobuf/Descriptors$l;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/H$r;->H1(I)Lcom/google/protobuf/H$J;

    move-result-object v1

    invoke-direct {p4, v1, p0, p2, v0}, Lcom/google/protobuf/Descriptors$l;-><init>(Lcom/google/protobuf/H$J;Lcom/google/protobuf/Descriptors$g;ILcom/google/protobuf/Descriptors$a;)V

    aput-object p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    .line 35
    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->P()I

    move-result p2

    if-lez p2, :cond_b

    .line 36
    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->P()I

    move-result p2

    new-array p2, p2, [Lcom/google/protobuf/Descriptors$f;

    goto :goto_9

    .line 37
    :cond_b
    invoke-static {}, Lcom/google/protobuf/Descriptors;->b()[Lcom/google/protobuf/Descriptors$f;

    move-result-object p2

    :goto_9
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$g;->f:[Lcom/google/protobuf/Descriptors$f;

    .line 38
    :goto_a
    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->P()I

    move-result p2

    if-ge v3, p2, :cond_c

    .line 39
    iget-object p2, p0, Lcom/google/protobuf/Descriptors$g;->f:[Lcom/google/protobuf/Descriptors$f;

    new-instance p3, Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {p1, v3}, Lcom/google/protobuf/H$r;->u0(I)Lcom/google/protobuf/H$n;

    move-result-object v5

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v4, p3

    move-object v6, p0

    move v8, v3

    invoke-direct/range {v4 .. v10}, Lcom/google/protobuf/Descriptors$f;-><init>(Lcom/google/protobuf/H$n;Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$b;IZLcom/google/protobuf/Descriptors$a;)V

    aput-object p3, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_c
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/protobuf/Descriptors$b;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0}, Lcom/google/protobuf/Descriptors$h;-><init>(Lcom/google/protobuf/Descriptors$a;)V

    .line 41
    new-instance v0, Lcom/google/protobuf/Descriptors$c;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$g;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/google/protobuf/Descriptors$c;-><init>([Lcom/google/protobuf/Descriptors$g;Z)V

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$g;->i:Lcom/google/protobuf/Descriptors$c;

    .line 42
    invoke-static {}, Lcom/google/protobuf/H$r;->V6()Lcom/google/protobuf/H$r$b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".placeholder.proto"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/protobuf/H$r$b;->g8(Ljava/lang/String;)Lcom/google/protobuf/H$r$b;

    move-result-object v2

    .line 44
    invoke-virtual {v2, p1}, Lcom/google/protobuf/H$r$b;->k8(Ljava/lang/String;)Lcom/google/protobuf/H$r$b;

    move-result-object v2

    .line 45
    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$b;->D()Lcom/google/protobuf/H$b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/protobuf/H$r$b;->K6(Lcom/google/protobuf/H$b;)Lcom/google/protobuf/H$r$b;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lcom/google/protobuf/H$r$b;->V6()Lcom/google/protobuf/H$r;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/Descriptors$g;->b:Lcom/google/protobuf/H$r;

    .line 47
    new-array v2, v1, [Lcom/google/protobuf/Descriptors$g;

    iput-object v2, p0, Lcom/google/protobuf/Descriptors$g;->g:[Lcom/google/protobuf/Descriptors$g;

    .line 48
    new-array v1, v1, [Lcom/google/protobuf/Descriptors$g;

    iput-object v1, p0, Lcom/google/protobuf/Descriptors$g;->h:[Lcom/google/protobuf/Descriptors$g;

    .line 49
    filled-new-array {p2}, [Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Descriptors$g;->c:[Lcom/google/protobuf/Descriptors$b;

    .line 50
    invoke-static {}, Lcom/google/protobuf/Descriptors;->h()[Lcom/google/protobuf/Descriptors$d;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Descriptors$g;->d:[Lcom/google/protobuf/Descriptors$d;

    .line 51
    invoke-static {}, Lcom/google/protobuf/Descriptors;->i()[Lcom/google/protobuf/Descriptors$l;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Descriptors$g;->e:[Lcom/google/protobuf/Descriptors$l;

    .line 52
    invoke-static {}, Lcom/google/protobuf/Descriptors;->b()[Lcom/google/protobuf/Descriptors$f;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Descriptors$g;->f:[Lcom/google/protobuf/Descriptors$f;

    .line 53
    invoke-virtual {v0, p1, p0}, Lcom/google/protobuf/Descriptors$c;->a(Ljava/lang/String;Lcom/google/protobuf/Descriptors$g;)V

    .line 54
    invoke-virtual {v0, p2}, Lcom/google/protobuf/Descriptors$c;->b(Lcom/google/protobuf/Descriptors$h;)V

    return-void
.end method

.method public static A([Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;)Lcom/google/protobuf/Descriptors$g;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "descriptorDataParts",
            "descriptorOuterClass",
            "dependencyClassNames",
            "dependencyFileNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/protobuf/Descriptors$g;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/google/protobuf/Descriptors$g;->j(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;)[Lcom/google/protobuf/Descriptors$g;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/protobuf/Descriptors$g;->B([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$g;)Lcom/google/protobuf/Descriptors$g;

    move-result-object p0

    return-object p0
.end method

.method public static B([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$g;)Lcom/google/protobuf/Descriptors$g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "descriptorDataParts",
            "dependencies"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/Descriptors$g;->F([Ljava/lang/String;)[B

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/H$r;->j7([B)Lcom/google/protobuf/H$r;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, p1, v0}, Lcom/google/protobuf/Descriptors$g;->h(Lcom/google/protobuf/H$r;[Lcom/google/protobuf/Descriptors$g;Z)Lcom/google/protobuf/Descriptors$g;

    move-result-object p0
    :try_end_1
    .catch Lcom/google/protobuf/Descriptors$DescriptorValidationException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid embedded descriptor for \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/H$r;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed to parse protocol buffer descriptor for generated code."

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static C([Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;Lcom/google/protobuf/Descriptors$g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "descriptorDataParts",
            "descriptorOuterClass",
            "dependencyClassNames",
            "dependencyFileNames",
            "descriptorAssigner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Descriptors$g$a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/google/protobuf/Descriptors$g;->j(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;)[Lcom/google/protobuf/Descriptors$g;

    move-result-object p1

    invoke-static {p0, p1, p4}, Lcom/google/protobuf/Descriptors$g;->D([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$g$a;)V

    return-void
.end method

.method public static D([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$g$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "descriptorDataParts",
            "dependencies",
            "descriptorAssigner"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Failed to parse protocol buffer descriptor for generated code."

    invoke-static {p0}, Lcom/google/protobuf/Descriptors$g;->F([Ljava/lang/String;)[B

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/H$r;->j7([B)Lcom/google/protobuf/H$r;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x1

    :try_start_1
    invoke-static {v1, p1, v2}, Lcom/google/protobuf/Descriptors$g;->h(Lcom/google/protobuf/H$r;[Lcom/google/protobuf/Descriptors$g;Z)Lcom/google/protobuf/Descriptors$g;

    move-result-object p1
    :try_end_1
    .catch Lcom/google/protobuf/Descriptors$DescriptorValidationException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-interface {p2, p1}, Lcom/google/protobuf/Descriptors$g$a;->a(Lcom/google/protobuf/Descriptors$g;)Lcom/google/protobuf/b0;

    move-result-object p2

    if-eqz p2, :cond_0

    :try_start_2
    invoke-static {p0, p2}, Lcom/google/protobuf/H$r;->k7([BLcom/google/protobuf/d0;)Lcom/google/protobuf/H$r;

    move-result-object p0
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/Descriptors$g;->G(Lcom/google/protobuf/H$r;)V

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    return-void

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid embedded descriptor for \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/H$r;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static E(Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/b0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "descriptor",
            "registry"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$g;->b:Lcom/google/protobuf/H$r;

    invoke-virtual {v0}, Lcom/google/protobuf/b;->toByteString()Lcom/google/protobuf/x;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p1}, Lcom/google/protobuf/H$r;->c7(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Descriptors$g;->G(Lcom/google/protobuf/H$r;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed to parse protocol buffer descriptor for generated code."

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static F([Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "strings"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    aget-object p0, p0, v2

    sget-object v0, Lcom/google/protobuf/D0;->c:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/google/protobuf/D0;->c:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/google/protobuf/Descriptors$g;)Lcom/google/protobuf/Descriptors$c;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/Descriptors$g;->i:Lcom/google/protobuf/Descriptors$c;

    return-object p0
.end method

.method public static g(Lcom/google/protobuf/H$r;[Lcom/google/protobuf/Descriptors$g;)Lcom/google/protobuf/Descriptors$g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proto",
            "dependencies"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/Descriptors$g;->h(Lcom/google/protobuf/H$r;[Lcom/google/protobuf/Descriptors$g;Z)Lcom/google/protobuf/Descriptors$g;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lcom/google/protobuf/H$r;[Lcom/google/protobuf/Descriptors$g;Z)Lcom/google/protobuf/Descriptors$g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "proto",
            "dependencies",
            "allowUnknownDependencies"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/Descriptors$c;

    invoke-direct {v0, p1, p2}, Lcom/google/protobuf/Descriptors$c;-><init>([Lcom/google/protobuf/Descriptors$g;Z)V

    new-instance v1, Lcom/google/protobuf/Descriptors$g;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/protobuf/Descriptors$g;-><init>(Lcom/google/protobuf/H$r;[Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$c;Z)V

    invoke-direct {v1}, Lcom/google/protobuf/Descriptors$g;->i()V

    return-object v1
.end method

.method private i()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$g;->c:[Lcom/google/protobuf/Descriptors$b;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/google/protobuf/Descriptors$b;->e(Lcom/google/protobuf/Descriptors$b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$g;->e:[Lcom/google/protobuf/Descriptors$l;

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/google/protobuf/Descriptors$l;->e(Lcom/google/protobuf/Descriptors$l;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$g;->f:[Lcom/google/protobuf/Descriptors$f;

    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/google/protobuf/Descriptors$f;->e(Lcom/google/protobuf/Descriptors$f;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static j(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;)[Lcom/google/protobuf/Descriptors$g;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "descriptorOuterClass",
            "dependencyClassNames",
            "dependencyFileNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")[",
            "Lcom/google/protobuf/Descriptors$g;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "descriptor"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Descriptors$g;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {}, Lcom/google/protobuf/Descriptors;->a()Ljava/util/logging/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Descriptors for \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p2, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" can not be found."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array p0, v1, [Lcom/google/protobuf/Descriptors$g;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/protobuf/Descriptors$g;

    return-object p0
.end method


# virtual methods
.method public final G(Lcom/google/protobuf/H$r;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "proto"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$g;->b:Lcom/google/protobuf/H$r;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$g;->c:[Lcom/google/protobuf/Descriptors$b;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/H$r;->j4(I)Lcom/google/protobuf/H$b;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/Descriptors$b;->g(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/H$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$g;->d:[Lcom/google/protobuf/Descriptors$d;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/H$r;->i0(I)Lcom/google/protobuf/H$d;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/Descriptors$d;->e(Lcom/google/protobuf/Descriptors$d;Lcom/google/protobuf/H$d;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$g;->e:[Lcom/google/protobuf/Descriptors$l;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/H$r;->H1(I)Lcom/google/protobuf/H$J;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/Descriptors$l;->g(Lcom/google/protobuf/Descriptors$l;Lcom/google/protobuf/H$J;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$g;->f:[Lcom/google/protobuf/Descriptors$f;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/H$r;->u0(I)Lcom/google/protobuf/H$n;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/Descriptors$f;->g(Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/H$n;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public H()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$g;->z()Lcom/google/protobuf/Descriptors$g$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$g$b;->PROTO3:Lcom/google/protobuf/Descriptors$g$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public I()Lcom/google/protobuf/H$r;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$g;->b:Lcom/google/protobuf/H$r;

    return-object v0
.end method

.method public a()Lcom/google/protobuf/Descriptors$g;
    .locals 0

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$g;->b:Lcom/google/protobuf/H$r;

    invoke-virtual {v0}, Lcom/google/protobuf/H$r;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$g;->b:Lcom/google/protobuf/H$r;

    invoke-virtual {v0}, Lcom/google/protobuf/H$r;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcom/google/protobuf/Y0;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$g;->I()Lcom/google/protobuf/H$r;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$d;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$g;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$g;->i:Lcom/google/protobuf/Descriptors$c;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Descriptors$c;->c(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$h;

    move-result-object p1

    instance-of v0, p1, Lcom/google/protobuf/Descriptors$d;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$h;->a()Lcom/google/protobuf/Descriptors$g;

    move-result-object v0

    if-ne v0, p0, :cond_2

    check-cast p1, Lcom/google/protobuf/Descriptors$d;

    return-object p1

    :cond_2
    return-object v3
.end method

.method public m(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$f;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$g;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$g;->i:Lcom/google/protobuf/Descriptors$c;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Descriptors$c;->c(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$h;

    move-result-object p1

    instance-of v0, p1, Lcom/google/protobuf/Descriptors$f;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$h;->a()Lcom/google/protobuf/Descriptors$g;

    move-result-object v0

    if-ne v0, p0, :cond_2

    check-cast p1, Lcom/google/protobuf/Descriptors$f;

    return-object p1

    :cond_2
    return-object v3
.end method

.method public o(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$b;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$g;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$g;->i:Lcom/google/protobuf/Descriptors$c;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Descriptors$c;->c(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$h;

    move-result-object p1

    instance-of v0, p1, Lcom/google/protobuf/Descriptors$b;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$h;->a()Lcom/google/protobuf/Descriptors$g;

    move-result-object v0

    if-ne v0, p0, :cond_2

    check-cast p1, Lcom/google/protobuf/Descriptors$b;

    return-object p1

    :cond_2
    return-object v3
.end method

.method public q(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$l;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$g;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$g;->i:Lcom/google/protobuf/Descriptors$c;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Descriptors$c;->c(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$h;

    move-result-object p1

    instance-of v0, p1, Lcom/google/protobuf/Descriptors$l;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$h;->a()Lcom/google/protobuf/Descriptors$g;

    move-result-object v0

    if-ne v0, p0, :cond_2

    check-cast p1, Lcom/google/protobuf/Descriptors$l;

    return-object p1

    :cond_2
    return-object v3
.end method

.method public r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Descriptors$g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$g;->g:[Lcom/google/protobuf/Descriptors$g;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Descriptors$d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$g;->d:[Lcom/google/protobuf/Descriptors$d;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Descriptors$f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$g;->f:[Lcom/google/protobuf/Descriptors$f;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Descriptors$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$g;->c:[Lcom/google/protobuf/Descriptors$b;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public v()Lcom/google/protobuf/H$v;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$g;->b:Lcom/google/protobuf/H$r;

    invoke-virtual {v0}, Lcom/google/protobuf/H$r;->getOptions()Lcom/google/protobuf/H$v;

    move-result-object v0

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$g;->b:Lcom/google/protobuf/H$r;

    invoke-virtual {v0}, Lcom/google/protobuf/H$r;->getPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Descriptors$g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$g;->h:[Lcom/google/protobuf/Descriptors$g;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Descriptors$l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$g;->e:[Lcom/google/protobuf/Descriptors$l;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public z()Lcom/google/protobuf/Descriptors$g$b;
    .locals 3

    sget-object v0, Lcom/google/protobuf/Descriptors$g$b;->PROTO3:Lcom/google/protobuf/Descriptors$g$b;

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$g$b;->a(Lcom/google/protobuf/Descriptors$g$b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/protobuf/Descriptors$g;->b:Lcom/google/protobuf/H$r;

    invoke-virtual {v2}, Lcom/google/protobuf/H$r;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/protobuf/Descriptors$g$b;->PROTO2:Lcom/google/protobuf/Descriptors$g$b;

    return-object v0
.end method
