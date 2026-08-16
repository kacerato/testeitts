.class public final Lcom/google/protobuf/Descriptors;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/protobuf/B;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Descriptors$j;,
        Lcom/google/protobuf/Descriptors$k;,
        Lcom/google/protobuf/Descriptors$c;,
        Lcom/google/protobuf/Descriptors$DescriptorValidationException;,
        Lcom/google/protobuf/Descriptors$h;,
        Lcom/google/protobuf/Descriptors$i;,
        Lcom/google/protobuf/Descriptors$l;,
        Lcom/google/protobuf/Descriptors$e;,
        Lcom/google/protobuf/Descriptors$d;,
        Lcom/google/protobuf/Descriptors$f;,
        Lcom/google/protobuf/Descriptors$b;,
        Lcom/google/protobuf/Descriptors$g;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:[I

.field public static final c:[Lcom/google/protobuf/Descriptors$b;

.field public static final d:[Lcom/google/protobuf/Descriptors$f;

.field public static final e:[Lcom/google/protobuf/Descriptors$d;

.field public static final f:[Lcom/google/protobuf/Descriptors$l;

.field public static final g:[Lcom/google/protobuf/Descriptors$k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/google/protobuf/Descriptors;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/Descriptors;->a:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/google/protobuf/Descriptors;->b:[I

    new-array v1, v0, [Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lcom/google/protobuf/Descriptors;->c:[Lcom/google/protobuf/Descriptors$b;

    new-array v1, v0, [Lcom/google/protobuf/Descriptors$f;

    sput-object v1, Lcom/google/protobuf/Descriptors;->d:[Lcom/google/protobuf/Descriptors$f;

    new-array v1, v0, [Lcom/google/protobuf/Descriptors$d;

    sput-object v1, Lcom/google/protobuf/Descriptors;->e:[Lcom/google/protobuf/Descriptors$d;

    new-array v1, v0, [Lcom/google/protobuf/Descriptors$l;

    sput-object v1, Lcom/google/protobuf/Descriptors;->f:[Lcom/google/protobuf/Descriptors$l;

    new-array v0, v0, [Lcom/google/protobuf/Descriptors$k;

    sput-object v0, Lcom/google/protobuf/Descriptors;->g:[Lcom/google/protobuf/Descriptors$k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Descriptors;->a:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static synthetic b()[Lcom/google/protobuf/Descriptors$f;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Descriptors;->d:[Lcom/google/protobuf/Descriptors$f;

    return-object v0
.end method

.method public static synthetic c([Ljava/lang/Object;ILcom/google/protobuf/Descriptors$j;I)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/Descriptors;->j([Ljava/lang/Object;ILcom/google/protobuf/Descriptors$j;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d()[Lcom/google/protobuf/Descriptors$k;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Descriptors;->g:[Lcom/google/protobuf/Descriptors$k;

    return-object v0
.end method

.method public static synthetic e(Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/Descriptors;->k(Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f()[I
    .locals 1

    sget-object v0, Lcom/google/protobuf/Descriptors;->b:[I

    return-object v0
.end method

.method public static synthetic g()[Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Descriptors;->c:[Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static synthetic h()[Lcom/google/protobuf/Descriptors$d;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Descriptors;->e:[Lcom/google/protobuf/Descriptors$d;

    return-object v0
.end method

.method public static synthetic i()[Lcom/google/protobuf/Descriptors$l;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Descriptors;->f:[Lcom/google/protobuf/Descriptors$l;

    return-object v0
.end method

.method public static j([Ljava/lang/Object;ILcom/google/protobuf/Descriptors$j;I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "array",
            "size",
            "getter",
            "number"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I",
            "Lcom/google/protobuf/Descriptors$j<",
            "TT;>;I)TT;"
        }
    .end annotation

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_2

    add-int v1, v0, p1

    div-int/lit8 v1, v1, 0x2

    aget-object v2, p0, v1

    invoke-interface {p2, v2}, Lcom/google/protobuf/Descriptors$j;->a(Ljava/lang/Object;)I

    move-result v3

    if-ge p3, v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    move p1, v1

    goto :goto_0

    :cond_0
    if-le p3, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static k(Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "file",
            "parent",
            "name"
        }
    .end annotation

    const/16 v0, 0x2e

    if-eqz p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$g;->w()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p2
.end method
