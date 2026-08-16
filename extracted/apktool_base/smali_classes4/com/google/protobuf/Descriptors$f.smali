.class public final Lcom/google/protobuf/Descriptors$f;
.super Lcom/google/protobuf/Descriptors$h;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/google/protobuf/o0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Descriptors$f$b;,
        Lcom/google/protobuf/Descriptors$f$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/Descriptors$h;",
        "Ljava/lang/Comparable<",
        "Lcom/google/protobuf/Descriptors$f;",
        ">;",
        "Lcom/google/protobuf/o0$c<",
        "Lcom/google/protobuf/Descriptors$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final o:Lcom/google/protobuf/Descriptors$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Descriptors$j<",
            "Lcom/google/protobuf/Descriptors$f;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:[Lcom/google/protobuf/A2$b;


# instance fields
.field public final b:I

.field public c:Lcom/google/protobuf/H$n;

.field public final d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public final f:Lcom/google/protobuf/Descriptors$g;

.field public final g:Lcom/google/protobuf/Descriptors$b;

.field public final h:Z

.field public i:Lcom/google/protobuf/Descriptors$f$c;

.field public j:Lcom/google/protobuf/Descriptors$b;

.field public k:Lcom/google/protobuf/Descriptors$b;

.field public l:Lcom/google/protobuf/Descriptors$k;

.field public m:Lcom/google/protobuf/Descriptors$d;

.field public n:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/Descriptors$f$a;

    invoke-direct {v0}, Lcom/google/protobuf/Descriptors$f$a;-><init>()V

    sput-object v0, Lcom/google/protobuf/Descriptors$f;->o:Lcom/google/protobuf/Descriptors$j;

    invoke-static {}, Lcom/google/protobuf/A2$b;->values()[Lcom/google/protobuf/A2$b;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/Descriptors$f;->p:[Lcom/google/protobuf/A2$b;

    invoke-static {}, Lcom/google/protobuf/Descriptors$f$c;->a()[Lcom/google/protobuf/Descriptors$f$c;

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lcom/google/protobuf/H$n$d;->values()[Lcom/google/protobuf/H$n$d;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "descriptor.proto has a new declared type but Descriptors.java wasn\'t updated."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/google/protobuf/H$n;Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$b;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "proto",
            "file",
            "parent",
            "index",
            "isExtension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/protobuf/Descriptors$h;-><init>(Lcom/google/protobuf/Descriptors$a;)V

    .line 3
    iput p4, p0, Lcom/google/protobuf/Descriptors$f;->b:I

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/google/protobuf/Descriptors;->e(Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/google/protobuf/Descriptors$f;->d:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$f;->f:Lcom/google/protobuf/Descriptors$g;

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->j2()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->getType()Lcom/google/protobuf/H$n$d;

    move-result-object p4

    invoke-static {p4}, Lcom/google/protobuf/Descriptors$f$c;->d(Lcom/google/protobuf/H$n$d;)Lcom/google/protobuf/Descriptors$f$c;

    move-result-object p4

    iput-object p4, p0, Lcom/google/protobuf/Descriptors$f;->i:Lcom/google/protobuf/Descriptors$f$c;

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->c2()Z

    move-result p4

    iput-boolean p4, p0, Lcom/google/protobuf/Descriptors$f;->h:Z

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result p4

    if-lez p4, :cond_8

    if-eqz p5, :cond_4

    .line 11
    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->W3()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 12
    iput-object v0, p0, Lcom/google/protobuf/Descriptors$f;->j:Lcom/google/protobuf/Descriptors$b;

    if-eqz p3, :cond_1

    .line 13
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$f;->g:Lcom/google/protobuf/Descriptors$b;

    goto :goto_0

    .line 14
    :cond_1
    iput-object v0, p0, Lcom/google/protobuf/Descriptors$f;->g:Lcom/google/protobuf/Descriptors$b;

    .line 15
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->z5()Z

    move-result p1

    if-nez p1, :cond_2

    .line 16
    iput-object v0, p0, Lcom/google/protobuf/Descriptors$f;->l:Lcom/google/protobuf/Descriptors$k;

    goto :goto_2

    .line 17
    :cond_2
    new-instance p1, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "FieldDescriptorProto.oneof_index set for extension field."

    invoke-direct {p1, p0, p2, v0}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw p1

    .line 18
    :cond_3
    new-instance p1, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "FieldDescriptorProto.extendee not set for extension field."

    invoke-direct {p1, p0, p2, v0}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw p1

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->W3()Z

    move-result p4

    if-nez p4, :cond_7

    .line 20
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$f;->j:Lcom/google/protobuf/Descriptors$b;

    .line 21
    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->z5()Z

    move-result p4

    if-eqz p4, :cond_6

    .line 22
    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->J()I

    move-result p4

    if-ltz p4, :cond_5

    .line 23
    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->J()I

    move-result p4

    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$b;->D()Lcom/google/protobuf/H$b;

    move-result-object p5

    invoke-virtual {p5}, Lcom/google/protobuf/H$b;->O0()I

    move-result p5

    if-ge p4, p5, :cond_5

    .line 24
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$b;->v()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->J()I

    move-result p1

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$k;

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$f;->l:Lcom/google/protobuf/Descriptors$k;

    .line 25
    invoke-static {p1}, Lcom/google/protobuf/Descriptors$k;->i(Lcom/google/protobuf/Descriptors$k;)I

    goto :goto_1

    .line 26
    :cond_5
    new-instance p1, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "FieldDescriptorProto.oneof_index is out of range for type "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2, v0}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw p1

    .line 28
    :cond_6
    iput-object v0, p0, Lcom/google/protobuf/Descriptors$f;->l:Lcom/google/protobuf/Descriptors$k;

    .line 29
    :goto_1
    iput-object v0, p0, Lcom/google/protobuf/Descriptors$f;->g:Lcom/google/protobuf/Descriptors$b;

    .line 30
    :goto_2
    invoke-static {p2}, Lcom/google/protobuf/Descriptors$g;->e(Lcom/google/protobuf/Descriptors$g;)Lcom/google/protobuf/Descriptors$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/Descriptors$c;->b(Lcom/google/protobuf/Descriptors$h;)V

    return-void

    .line 31
    :cond_7
    new-instance p1, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "FieldDescriptorProto.extendee set for non-extension field."

    invoke-direct {p1, p0, p2, v0}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw p1

    .line 32
    :cond_8
    new-instance p1, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "Field numbers must be positive integers."

    invoke-direct {p1, p0, p2, v0}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/H$n;Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$b;IZLcom/google/protobuf/Descriptors$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/protobuf/Descriptors$f;-><init>(Lcom/google/protobuf/H$n;Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$b;IZ)V

    return-void
.end method

.method public static synthetic e(Lcom/google/protobuf/Descriptors$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/Descriptors$f;->k()V

    return-void
.end method

.method public static synthetic g(Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/H$n;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Descriptors$f;->L(Lcom/google/protobuf/H$n;)V

    return-void
.end method

.method public static synthetic h()Lcom/google/protobuf/Descriptors$j;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Descriptors$f;->o:Lcom/google/protobuf/Descriptors$j;

    return-object v0
.end method

.method public static synthetic i(Lcom/google/protobuf/Descriptors$f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/protobuf/Descriptors$f;->h:Z

    return p0
.end method

.method private k()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->W3()Z

    move-result v0

    const-string v1, "\" is not a message type."

    const/16 v2, 0x22

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->f:Lcom/google/protobuf/Descriptors$g;

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$g;->e(Lcom/google/protobuf/Descriptors$g;)Lcom/google/protobuf/Descriptors$c;

    move-result-object v0

    iget-object v4, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v4}, Lcom/google/protobuf/H$n;->I5()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$c$b;->TYPES_ONLY:Lcom/google/protobuf/Descriptors$c$b;

    invoke-virtual {v0, v4, p0, v5}, Lcom/google/protobuf/Descriptors$c;->h(Ljava/lang/String;Lcom/google/protobuf/Descriptors$h;Lcom/google/protobuf/Descriptors$c$b;)Lcom/google/protobuf/Descriptors$h;

    move-result-object v0

    instance-of v4, v0, Lcom/google/protobuf/Descriptors$b;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$f;->j:Lcom/google/protobuf/Descriptors$b;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->q()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/protobuf/Descriptors$b;->z(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->q()Lcom/google/protobuf/Descriptors$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" does not declare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " as an extension number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v2}, Lcom/google/protobuf/H$n;->I5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->n4()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->f:Lcom/google/protobuf/Descriptors$g;

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$g;->e(Lcom/google/protobuf/Descriptors$g;)Lcom/google/protobuf/Descriptors$c;

    move-result-object v0

    iget-object v4, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v4}, Lcom/google/protobuf/H$n;->getTypeName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$c$b;->TYPES_ONLY:Lcom/google/protobuf/Descriptors$c$b;

    invoke-virtual {v0, v4, p0, v5}, Lcom/google/protobuf/Descriptors$c;->h(Ljava/lang/String;Lcom/google/protobuf/Descriptors$h;Lcom/google/protobuf/Descriptors$c$b;)Lcom/google/protobuf/Descriptors$h;

    move-result-object v0

    iget-object v4, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v4}, Lcom/google/protobuf/H$n;->j2()Z

    move-result v4

    if-nez v4, :cond_5

    instance-of v4, v0, Lcom/google/protobuf/Descriptors$b;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/google/protobuf/Descriptors$f$c;->MESSAGE:Lcom/google/protobuf/Descriptors$f$c;

    iput-object v4, p0, Lcom/google/protobuf/Descriptors$f;->i:Lcom/google/protobuf/Descriptors$f$c;

    goto :goto_1

    :cond_3
    instance-of v4, v0, Lcom/google/protobuf/Descriptors$d;

    if-eqz v4, :cond_4

    sget-object v4, Lcom/google/protobuf/Descriptors$f$c;->ENUM:Lcom/google/protobuf/Descriptors$f$c;

    iput-object v4, p0, Lcom/google/protobuf/Descriptors$f;->i:Lcom/google/protobuf/Descriptors$f$c;

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v2}, Lcom/google/protobuf/H$n;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is not a type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v4, v5, :cond_8

    instance-of v4, v0, Lcom/google/protobuf/Descriptors$b;

    if-eqz v4, :cond_7

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$f;->k:Lcom/google/protobuf/Descriptors$b;

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->h3()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Messages can\'t have default values."

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0

    :cond_7
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v2}, Lcom/google/protobuf/H$n;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0

    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v1

    sget-object v4, Lcom/google/protobuf/Descriptors$f$b;->ENUM:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v1, v4, :cond_a

    instance-of v1, v0, Lcom/google/protobuf/Descriptors$d;

    if-eqz v1, :cond_9

    check-cast v0, Lcom/google/protobuf/Descriptors$d;

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$f;->m:Lcom/google/protobuf/Descriptors$d;

    goto :goto_2

    :cond_9
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v2}, Lcom/google/protobuf/H$n;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is not an enum type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Field with primitive type has type_name."

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0

    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-eq v0, v1, :cond_1d

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$b;->ENUM:Lcom/google/protobuf/Descriptors$f$b;

    if-eq v0, v1, :cond_1d

    :goto_2
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->getOptions()Lcom/google/protobuf/H$p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$p;->k0()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->I()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_3

    :cond_c
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "[packed = true] can only be specified for repeated primitive fields."

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0

    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->h3()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-nez v0, :cond_15

    :try_start_0
    sget-object v0, Lcom/google/protobuf/Descriptors$a;->a:[I

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->A()Lcom/google/protobuf/Descriptors$f$c;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "nan"

    const-string v4, "-inf"

    const-string v5, "inf"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    :try_start_1
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Message type had default value."

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :pswitch_1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->m:Lcom/google/protobuf/Descriptors$d;

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v1}, Lcom/google/protobuf/H$n;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/Descriptors$d;->h(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$f;->n:Ljava/lang/Object;

    if-eqz v0, :cond_e

    goto/16 :goto_5

    :cond_e
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown enum default value: \""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v4}, Lcom/google/protobuf/H$n;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->Q(Ljava/lang/CharSequence;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$f;->n:Ljava/lang/Object;
    :try_end_2
    .catch Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t parse default value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v4, v0, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/protobuf/Descriptors$a;)V

    throw v1

    :pswitch_3
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$f;->n:Ljava/lang/Object;

    goto/16 :goto_5

    :pswitch_4
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$f;->n:Ljava/lang/Object;

    goto/16 :goto_5

    :pswitch_5
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$f;->n:Ljava/lang/Object;

    goto/16 :goto_5

    :cond_f
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$f;->n:Ljava/lang/Object;

    goto/16 :goto_5

    :cond_10
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$f;->n:Ljava/lang/Object;

    goto/16 :goto_5

    :cond_11
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$f;->n:Ljava/lang/Object;

    goto/16 :goto_5

    :pswitch_6
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$f;->n:Ljava/lang/Object;

    goto/16 :goto_5

    :cond_12
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$f;->n:Ljava/lang/Object;

    goto/16 :goto_5

    :cond_13
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$f;->n:Ljava/lang/Object;

    goto/16 :goto_5

    :cond_14
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$f;->n:Ljava/lang/Object;

    goto/16 :goto_5

    :pswitch_7
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->w(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$f;->n:Ljava/lang/Object;

    goto/16 :goto_5

    :pswitch_8
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->t(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$f;->n:Ljava/lang/Object;

    goto/16 :goto_5

    :pswitch_9
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->v(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$f;->n:Ljava/lang/Object;

    goto/16 :goto_5

    :pswitch_a
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->s(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$f;->n:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :goto_4
    new-instance v1, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse default value: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v5}, Lcom/google/protobuf/H$n;->getDefaultValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/protobuf/Descriptors$a;)V

    throw v1

    :cond_15
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Repeated fields cannot have default values."

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0

    :cond_16
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$f;->n:Ljava/lang/Object;

    goto :goto_5

    :cond_17
    sget-object v0, Lcom/google/protobuf/Descriptors$a;->b:[I

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$f$b;->a(Lcom/google/protobuf/Descriptors$f$b;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$f;->n:Ljava/lang/Object;

    goto :goto_5

    :cond_18
    iput-object v3, p0, Lcom/google/protobuf/Descriptors$f;->n:Ljava/lang/Object;

    goto :goto_5

    :cond_19
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->m:Lcom/google/protobuf/Descriptors$d;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$d;->t()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$f;->n:Ljava/lang/Object;

    :goto_5
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->j:Lcom/google/protobuf/Descriptors$b;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->w()Lcom/google/protobuf/H$z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$z;->X2()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->F()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->H()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->A()Lcom/google/protobuf/Descriptors$f$c;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$c;->MESSAGE:Lcom/google/protobuf/Descriptors$f$c;

    if-ne v0, v1, :cond_1a

    goto :goto_6

    :cond_1a
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Extensions of MessageSets must be optional messages."

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0

    :cond_1b
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "MessageSets cannot have fields, only extensions."

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0

    :cond_1c
    :goto_6
    return-void

    :cond_1d
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Field with message or enum type missing type_name."

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    if-ne v5, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_2

    const/16 v4, 0x61

    if-gt v4, v5, :cond_1

    const/16 v4, 0x7a

    if-gt v5, v4, :cond_1

    add-int/lit8 v5, v5, -0x20

    int-to-char v5, v5

    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Lcom/google/protobuf/Descriptors$f$c;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->i:Lcom/google/protobuf/Descriptors$f$c;

    return-object v0
.end method

.method public B()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->h3()Z

    move-result v0

    return v0
.end method

.method public C()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/protobuf/Descriptors$f;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->f:Lcom/google/protobuf/Descriptors$g;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$g;->z()Lcom/google/protobuf/Descriptors$g$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$g$b;->PROTO2:Lcom/google/protobuf/Descriptors$g$b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->o()Lcom/google/protobuf/Descriptors$k;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public D()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->A()Lcom/google/protobuf/Descriptors$f$c;

    move-result-object v0

    sget-object v2, Lcom/google/protobuf/Descriptors$f$c;->MESSAGE:Lcom/google/protobuf/Descriptors$f$c;

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->A()Lcom/google/protobuf/Descriptors$f$c;

    move-result-object v0

    sget-object v2, Lcom/google/protobuf/Descriptors$f$c;->GROUP:Lcom/google/protobuf/Descriptors$f$c;

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->o()Lcom/google/protobuf/Descriptors$k;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->f:Lcom/google/protobuf/Descriptors$g;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$g;->z()Lcom/google/protobuf/Descriptors$g$b;

    move-result-object v0

    sget-object v2, Lcom/google/protobuf/Descriptors$g$b;->PROTO2:Lcom/google/protobuf/Descriptors$g$b;

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public F()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->W3()Z

    move-result v0

    return v0
.end method

.method public G()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->A()Lcom/google/protobuf/Descriptors$f$c;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$c;->MESSAGE:Lcom/google/protobuf/Descriptors$f$c;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->x()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->w()Lcom/google/protobuf/H$z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$z;->E3()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public H()Z
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->getLabel()Lcom/google/protobuf/H$n$c;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/H$n$c;->LABEL_OPTIONAL:Lcom/google/protobuf/H$n$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public I()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->U1()Lcom/google/protobuf/A2$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/A2$b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public J()Z
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->getLabel()Lcom/google/protobuf/H$n$c;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/H$n$c;->LABEL_REQUIRED:Lcom/google/protobuf/H$n$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public K()Z
    .locals 3

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->i:Lcom/google/protobuf/Descriptors$f$c;

    sget-object v1, Lcom/google/protobuf/Descriptors$f$c;->STRING:Lcom/google/protobuf/Descriptors$f$c;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->q()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->w()Lcom/google/protobuf/H$z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$z;->E3()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->a()Lcom/google/protobuf/Descriptors$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$g;->z()Lcom/google/protobuf/Descriptors$g$b;

    move-result-object v0

    sget-object v2, Lcom/google/protobuf/Descriptors$g$b;->PROTO3:Lcom/google/protobuf/Descriptors$g$b;

    if-ne v0, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->a()Lcom/google/protobuf/Descriptors$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$g;->v()Lcom/google/protobuf/H$v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$v;->w1()Z

    move-result v0

    return v0
.end method

.method public final L(Lcom/google/protobuf/H$n;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "proto"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    return-void
.end method

.method public M()Lcom/google/protobuf/H$n;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    return-object v0
.end method

.method public U1()Lcom/google/protobuf/A2$b;
    .locals 2

    sget-object v0, Lcom/google/protobuf/Descriptors$f;->p:[Lcom/google/protobuf/A2$b;

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$f;->i:Lcom/google/protobuf/Descriptors$f$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public V1()Lcom/google/protobuf/A2$c;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->U1()Lcom/google/protobuf/A2$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/A2$b;->a()Lcom/google/protobuf/A2$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic W1()Lcom/google/protobuf/D0$d;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->s()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    return-object v0
.end method

.method public Z1()Z
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->getLabel()Lcom/google/protobuf/H$n$c;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/H$n$c;->LABEL_REPEATED:Lcom/google/protobuf/H$n$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a()Lcom/google/protobuf/Descriptors$g;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->f:Lcom/google/protobuf/Descriptors$g;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "other"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Descriptors$f;->j(Lcom/google/protobuf/Descriptors$f;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic d()Lcom/google/protobuf/Y0;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->M()Lcom/google/protobuf/H$n;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->getNumber()I

    move-result v0

    return v0
.end method

.method public i2()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->I()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->a()Lcom/google/protobuf/Descriptors$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$g;->z()Lcom/google/protobuf/Descriptors$g$b;

    move-result-object v0

    sget-object v2, Lcom/google/protobuf/Descriptors$g$b;->PROTO2:Lcom/google/protobuf/Descriptors$g$b;

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->y()Lcom/google/protobuf/H$p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$p;->k0()Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->y()Lcom/google/protobuf/H$p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$p;->m2()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->y()Lcom/google/protobuf/H$p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$p;->k0()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public j(Lcom/google/protobuf/Descriptors$f;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "other"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/protobuf/Descriptors$f;->j:Lcom/google/protobuf/Descriptors$b;

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$f;->j:Lcom/google/protobuf/Descriptors$b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptors can only be compared to other FieldDescriptors for fields of the same message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/b1;)Lcom/google/protobuf/b1$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "to",
            "from"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/Y0$a;

    check-cast p2, Lcom/google/protobuf/Y0;

    invoke-interface {p1, p2}, Lcom/google/protobuf/Y0$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;

    move-result-object p1

    return-object p1
.end method

.method public o()Lcom/google/protobuf/Descriptors$k;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->l:Lcom/google/protobuf/Descriptors$k;

    return-object v0
.end method

.method public q()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->j:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public r()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->n:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FieldDescriptor.getDefaultValue() called on an embedded message field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public s()Lcom/google/protobuf/Descriptors$d;
    .locals 3

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$b;->ENUM:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->m:Lcom/google/protobuf/Descriptors$d;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$f;->d:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "This field is not of enum type. (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t()Lcom/google/protobuf/Descriptors$b;
    .locals 3

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->g:Lcom/google/protobuf/Descriptors$b;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$f;->d:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "This field is not an extension. (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/Descriptors$f;->b:I

    return v0
.end method

.method public v()Lcom/google/protobuf/Descriptors$f$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->i:Lcom/google/protobuf/Descriptors$f$c;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f$c;->b()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v0

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->w3()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->v0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$f;->e:Ljava/lang/String;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$f;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public x()Lcom/google/protobuf/Descriptors$b;
    .locals 3

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->k:Lcom/google/protobuf/Descriptors$b;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$f;->d:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "This field is not of message type. (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public y()Lcom/google/protobuf/H$p;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->c:Lcom/google/protobuf/H$n;

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->getOptions()Lcom/google/protobuf/H$p;

    move-result-object v0

    return-object v0
.end method

.method public z()Lcom/google/protobuf/Descriptors$k;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->l:Lcom/google/protobuf/Descriptors$k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$k;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f;->l:Lcom/google/protobuf/Descriptors$k;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
