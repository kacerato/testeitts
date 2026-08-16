.class public Lcom/google/protobuf/TextFormat$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TextFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/TextFormat$b$c;,
        Lcom/google/protobuf/TextFormat$b$a;,
        Lcom/google/protobuf/TextFormat$b$b;
    }
.end annotation


# static fields
.field public static final g:I = 0x1000


# instance fields
.field public final a:Lcom/google/protobuf/l2;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Lcom/google/protobuf/TextFormat$b$b;

.field public f:Lcom/google/protobuf/d2$b;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/l2;ZZZLcom/google/protobuf/TextFormat$b$b;Lcom/google/protobuf/d2$b;)V
    .locals 0
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
            "typeRegistry",
            "allowUnknownFields",
            "allowUnknownEnumValues",
            "allowUnknownExtensions",
            "singularOverwritePolicy",
            "parseInfoTreeBuilder"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/TextFormat$b;->a:Lcom/google/protobuf/l2;

    .line 4
    iput-boolean p2, p0, Lcom/google/protobuf/TextFormat$b;->b:Z

    .line 5
    iput-boolean p3, p0, Lcom/google/protobuf/TextFormat$b;->c:Z

    .line 6
    iput-boolean p4, p0, Lcom/google/protobuf/TextFormat$b;->d:Z

    .line 7
    iput-object p5, p0, Lcom/google/protobuf/TextFormat$b;->e:Lcom/google/protobuf/TextFormat$b$b;

    .line 8
    iput-object p6, p0, Lcom/google/protobuf/TextFormat$b;->f:Lcom/google/protobuf/d2$b;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/l2;ZZZLcom/google/protobuf/TextFormat$b$b;Lcom/google/protobuf/d2$b;Lcom/google/protobuf/TextFormat$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/google/protobuf/TextFormat$b;-><init>(Lcom/google/protobuf/l2;ZZZLcom/google/protobuf/TextFormat$b$b;Lcom/google/protobuf/d2$b;)V

    return-void
.end method

.method public static n()Lcom/google/protobuf/TextFormat$b$a;
    .locals 1

    new-instance v0, Lcom/google/protobuf/TextFormat$b$a;

    invoke-direct {v0}, Lcom/google/protobuf/TextFormat$b$a;-><init>()V

    return-object v0
.end method

.method public static s(Ljava/lang/Readable;)Ljava/lang/StringBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    :goto_0
    invoke-interface {p0, v1}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return-object v0

    :cond_0
    invoke-static {v1}, Lcom/google/protobuf/F0;->b(Ljava/nio/Buffer;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/protobuf/TextFormat$b$c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input contains unknown fields and/or extensions:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/TextFormat$b$c;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/google/protobuf/TextFormat$b$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/google/protobuf/TextFormat$b;->b:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/google/protobuf/TextFormat;->b()Ljava/util/logging/Logger;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/google/protobuf/TextFormat$b;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/TextFormat$b$c;

    iget-object v4, v4, Lcom/google/protobuf/TextFormat$b$c;->b:Lcom/google/protobuf/TextFormat$b$c$a;

    sget-object v5, Lcom/google/protobuf/TextFormat$b$c$a;->FIELD:Lcom/google/protobuf/TextFormat$b$c$a;

    if-eq v4, v5, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/google/protobuf/TextFormat;->b()Ljava/util/logging/Logger;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    :cond_4
    move v3, v2

    :cond_5
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/TextFormat$b$c;

    iget-object p1, p1, Lcom/google/protobuf/TextFormat$b$c;->a:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/google/protobuf/TextFormat$ParseException;

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, p1, v0}, Lcom/google/protobuf/TextFormat$ParseException;-><init>(IILjava/lang/String;)V

    throw v1
.end method

.method public final b(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/b0;Lcom/google/protobuf/f1$e;Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/b0$c;Lcom/google/protobuf/d2$b;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "tokenizer",
            "extensionRegistry",
            "target",
            "field",
            "extension",
            "parseTreeBuilder",
            "unknownFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/TextFormat$e;",
            "Lcom/google/protobuf/b0;",
            "Lcom/google/protobuf/f1$e;",
            "Lcom/google/protobuf/Descriptors$f;",
            "Lcom/google/protobuf/b0$c;",
            "Lcom/google/protobuf/d2$b;",
            "Ljava/util/List<",
            "Lcom/google/protobuf/TextFormat$b$c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v0, p5

    iget-object v1, v7, Lcom/google/protobuf/TextFormat$b;->e:Lcom/google/protobuf/TextFormat$b$b;

    sget-object v2, Lcom/google/protobuf/TextFormat$b$b;->FORBID_SINGULAR_OVERWRITES:Lcom/google/protobuf/TextFormat$b$b;

    const-string v6, "\"."

    if-ne v1, v2, :cond_2

    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface/range {p3 .. p4}, Lcom/google/protobuf/f1$e;->hasField(Lcom/google/protobuf/Descriptors$f;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$f;->o()Lcom/google/protobuf/Descriptors$k;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$f;->o()Lcom/google/protobuf/Descriptors$k;

    move-result-object v1

    invoke-interface {v9, v1}, Lcom/google/protobuf/f1$e;->hasOneof(Lcom/google/protobuf/Descriptors$k;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$f;->o()Lcom/google/protobuf/Descriptors$k;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is specified along with field \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9, v0}, Lcom/google/protobuf/f1$e;->getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/Descriptors$f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", another member of oneof \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$k;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$e;->A(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Non-repeated field \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" cannot be overwritten."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$e;->A(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0

    :cond_2
    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_8

    const-string v1, "<"

    invoke-virtual {p1, v1}, Lcom/google/protobuf/TextFormat$e;->C(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ">"

    :goto_1
    move-object v11, v1

    goto :goto_2

    :cond_3
    const-string v1, "{"

    invoke-virtual {p1, v1}, Lcom/google/protobuf/TextFormat$e;->c(Ljava/lang/String;)V

    const-string v1, "}"

    goto :goto_1

    :goto_2
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$f;->x()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "google.protobuf.Any"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "["

    invoke-virtual {p1, v1}, Lcom/google/protobuf/TextFormat$e;->C(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$f;->x()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/P;->r6(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/P;

    move-result-object v0

    invoke-interface {v9, v10, v0}, Lcom/google/protobuf/f1$e;->a(Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;)Lcom/google/protobuf/f1$e;

    move-result-object v12

    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$f;->x()Lcom/google/protobuf/Descriptors$b;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v12

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v6}, Lcom/google/protobuf/TextFormat$b;->k(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/b0;Lcom/google/protobuf/f1$e;Lcom/google/protobuf/d2$b;Ljava/util/List;Lcom/google/protobuf/Descriptors$b;)V

    invoke-interface {v12}, Lcom/google/protobuf/f1$e;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v11}, Lcom/google/protobuf/TextFormat$e;->c(Ljava/lang/String;)V

    :goto_3
    move-object v3, v0

    goto/16 :goto_6

    :cond_4
    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    iget-object v3, v0, Lcom/google/protobuf/b0$c;->b:Lcom/google/protobuf/Y0;

    :goto_4
    invoke-interface {v9, v10, v3}, Lcom/google/protobuf/f1$e;->a(Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;)Lcom/google/protobuf/f1$e;

    move-result-object v12

    :goto_5
    invoke-virtual {p1, v11}, Lcom/google/protobuf/TextFormat$e;->C(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$e;->b()Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v12

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/TextFormat$b;->l(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/b0;Lcom/google/protobuf/f1$e;Lcom/google/protobuf/d2$b;Ljava/util/List;)V

    goto :goto_5

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$e;->z(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0

    :cond_7
    invoke-interface {v12}, Lcom/google/protobuf/f1$e;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/google/protobuf/TextFormat$a;->b:[I

    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$f;->A()Lcom/google/protobuf/Descriptors$f$c;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t get here."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$f;->s()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$e;->x()Z

    move-result v1

    const-string v2, "Enum type \""

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$e;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/Descriptors$d;->j(I)Lcom/google/protobuf/Descriptors$e;

    move-result-object v3

    if-nez v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" has no value with number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v6, v7, Lcom/google/protobuf/TextFormat$b;->c:Z

    if-eqz v6, :cond_9

    invoke-static {}, Lcom/google/protobuf/TextFormat;->b()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$e;->A(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0

    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$e;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/Descriptors$d;->h(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$e;

    move-result-object v3

    if-nez v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" has no value named \""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, v7, Lcom/google/protobuf/TextFormat$b;->c:Z

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/google/protobuf/TextFormat;->b()Ljava/util/logging/Logger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    :cond_b
    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$e;->A(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0

    :pswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$e;->e()Lcom/google/protobuf/x;

    move-result-object v3

    goto :goto_6

    :pswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$e;->l()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :pswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$e;->n()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_6

    :pswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$e;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_6

    :pswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$e;->g()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_6

    :pswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$e;->h()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_6

    :pswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$e;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_6

    :pswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$e;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_6

    :pswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$e;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_c
    :goto_6
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v9, v10, v3}, Lcom/google/protobuf/f1$e;->addRepeatedField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/f1$e;

    goto :goto_7

    :cond_d
    invoke-interface {v9, v10, v3}, Lcom/google/protobuf/f1$e;->setField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/f1$e;

    :goto_7
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

.method public final c(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/b0;Lcom/google/protobuf/f1$e;Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/b0$c;Lcom/google/protobuf/d2$b;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "tokenizer",
            "extensionRegistry",
            "target",
            "field",
            "extension",
            "parseTreeBuilder",
            "unknownFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/TextFormat$e;",
            "Lcom/google/protobuf/b0;",
            "Lcom/google/protobuf/f1$e;",
            "Lcom/google/protobuf/Descriptors$f;",
            "Lcom/google/protobuf/b0$c;",
            "Lcom/google/protobuf/d2$b;",
            "Ljava/util/List<",
            "Lcom/google/protobuf/TextFormat$b$c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    invoke-virtual {p4}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "["

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$e;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$e;->C(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    invoke-virtual/range {p0 .. p7}, Lcom/google/protobuf/TextFormat$b;->b(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/b0;Lcom/google/protobuf/f1$e;Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/b0$c;Lcom/google/protobuf/d2$b;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$e;->C(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, ","

    invoke-virtual {p1, v1}, Lcom/google/protobuf/TextFormat$e;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p7}, Lcom/google/protobuf/TextFormat$b;->b(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/b0;Lcom/google/protobuf/f1$e;Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/b0$c;Lcom/google/protobuf/d2$b;Ljava/util/List;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final d(Lcom/google/protobuf/TextFormat$e;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenizer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    const-string v0, "["

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$e;->C(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$e;->i()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$e;->i()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "."

    invoke-virtual {p1, v1}, Lcom/google/protobuf/TextFormat$e;->C(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$e;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v2, "/"

    invoke-virtual {p1, v2}, Lcom/google/protobuf/TextFormat$e;->C(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$e;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v1}, Lcom/google/protobuf/TextFormat$e;->C(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$e;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v1, "]"

    invoke-virtual {p1, v1}, Lcom/google/protobuf/TextFormat$e;->c(Ljava/lang/String;)V

    return-object v0
.end method

.method public final e(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/Descriptors$b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenizer",
            "immediateMessageType",
            "fieldName"
        }
    .end annotation

    return-void
.end method

.method public final f(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/Descriptors$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenizer",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    const-string v0, ":"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$e;->C(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "["

    invoke-virtual {p1, v1}, Lcom/google/protobuf/TextFormat$e;->w(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/protobuf/TextFormat$b;->q(Lcom/google/protobuf/TextFormat$e;ZLcom/google/protobuf/Descriptors$b;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const-string v0, "{"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$e;->w(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "<"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$e;->w(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/TextFormat$b;->r(Lcom/google/protobuf/TextFormat$e;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/TextFormat$b;->p(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/Descriptors$b;)V

    :goto_0
    return-void
.end method

.method public g(Ljava/lang/CharSequence;Lcom/google/protobuf/b0;Lcom/google/protobuf/Y0$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "input",
            "extensionRegistry",
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/TextFormat$e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/TextFormat$e;-><init>(Ljava/lang/CharSequence;Lcom/google/protobuf/TextFormat$a;)V

    new-instance p1, Lcom/google/protobuf/f1$b;

    invoke-direct {p1, p3}, Lcom/google/protobuf/f1$b;-><init>(Lcom/google/protobuf/Y0$a;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lcom/google/protobuf/TextFormat$e;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/google/protobuf/TextFormat$b;->m(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/b0;Lcom/google/protobuf/f1$e;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/protobuf/TextFormat$b;->a(Ljava/util/List;)V

    return-void
.end method

.method public h(Ljava/lang/CharSequence;Lcom/google/protobuf/Y0$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "input",
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/b0;->v()Lcom/google/protobuf/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/protobuf/TextFormat$b;->g(Ljava/lang/CharSequence;Lcom/google/protobuf/b0;Lcom/google/protobuf/Y0$a;)V

    return-void
.end method

.method public i(Ljava/lang/Readable;Lcom/google/protobuf/b0;Lcom/google/protobuf/Y0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "input",
            "extensionRegistry",
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/TextFormat$b;->s(Ljava/lang/Readable;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/TextFormat$b;->g(Ljava/lang/CharSequence;Lcom/google/protobuf/b0;Lcom/google/protobuf/Y0$a;)V

    return-void
.end method

.method public j(Ljava/lang/Readable;Lcom/google/protobuf/Y0$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "input",
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/b0;->v()Lcom/google/protobuf/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/protobuf/TextFormat$b;->i(Ljava/lang/Readable;Lcom/google/protobuf/b0;Lcom/google/protobuf/Y0$a;)V

    return-void
.end method

.method public final k(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/b0;Lcom/google/protobuf/f1$e;Lcom/google/protobuf/d2$b;Ljava/util/List;Lcom/google/protobuf/Descriptors$b;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x10,
            0x0,
            0x0
        }
        names = {
            "tokenizer",
            "extensionRegistry",
            "target",
            "parseTreeBuilder",
            "unknownFields",
            "anyDescriptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/TextFormat$e;",
            "Lcom/google/protobuf/b0;",
            "Lcom/google/protobuf/f1$e;",
            "Lcom/google/protobuf/d2$b;",
            "Ljava/util/List<",
            "Lcom/google/protobuf/TextFormat$b$c;",
            ">;",
            "Lcom/google/protobuf/Descriptors$b;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$e;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$e;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v9, v0}, Lcom/google/protobuf/TextFormat$b;->e(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/Descriptors$b;Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$e;->C(Ljava/lang/String;)Z

    const-string v0, "<"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$e;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ">"

    :goto_1
    move-object v11, v0

    goto :goto_2

    :cond_0
    const-string v0, "{"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$e;->c(Ljava/lang/String;)V

    const-string v0, "}"

    goto :goto_1

    :goto_2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, v6, Lcom/google/protobuf/TextFormat$b;->a:Lcom/google/protobuf/l2;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/l2;->c(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$b;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/google/protobuf/P;->r6(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/P;->w6()Lcom/google/protobuf/P$c;

    move-result-object v12

    new-instance v13, Lcom/google/protobuf/f1$b;

    invoke-direct {v13, v12}, Lcom/google/protobuf/f1$b;-><init>(Lcom/google/protobuf/Y0$a;)V

    :goto_3
    invoke-virtual {p1, v11}, Lcom/google/protobuf/TextFormat$e;->C(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v3, v13

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/TextFormat$b;->l(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/b0;Lcom/google/protobuf/f1$e;Lcom/google/protobuf/d2$b;Ljava/util/List;)V

    goto :goto_3

    :cond_1
    const-string v0, "type_url"

    invoke-virtual {v9, v0}, Lcom/google/protobuf/Descriptors$b;->j(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Lcom/google/protobuf/f1$e;->setField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/f1$e;

    const-string v0, "value"

    invoke-virtual {v9, v0}, Lcom/google/protobuf/Descriptors$b;->j(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    invoke-interface {v12}, Lcom/google/protobuf/Y0$a;->build()Lcom/google/protobuf/Y0;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/b1;->toByteString()Lcom/google/protobuf/x;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Lcom/google/protobuf/f1$e;->setField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/f1$e;

    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse Any of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Please make sure that the TypeRegistry contains the descriptors for the given types."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$e;->z(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid valid type URL. Found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$e;->z(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0

    :cond_3
    const-string v0, "/"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$e;->C(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_4
    const-string v0, "."

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$e;->C(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_5
    const-string v0, "Expected a valid type URL."

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$e;->A(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0
.end method

.method public final l(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/b0;Lcom/google/protobuf/f1$e;Lcom/google/protobuf/d2$b;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x0,
            0x0
        }
        names = {
            "tokenizer",
            "extensionRegistry",
            "target",
            "parseTreeBuilder",
            "unknownFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/TextFormat$e;",
            "Lcom/google/protobuf/b0;",
            "Lcom/google/protobuf/f1$e;",
            "Lcom/google/protobuf/d2$b;",
            "Ljava/util/List<",
            "Lcom/google/protobuf/TextFormat$b$c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    move-object/from16 v7, p5

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$e;->s()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$e;->p()I

    move-result v12

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/f1$e;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "google.protobuf.Any"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "["

    if-eqz v0, :cond_0

    invoke-virtual {v9, v1}, Lcom/google/protobuf/TextFormat$e;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/protobuf/TextFormat$b;->k(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/b0;Lcom/google/protobuf/f1$e;Lcom/google/protobuf/d2$b;Ljava/util/List;Lcom/google/protobuf/Descriptors$b;)V

    return-void

    :cond_0
    invoke-virtual {v9, v1}, Lcom/google/protobuf/TextFormat$e;->C(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ":\t"

    const-string v2, "."

    const-string v3, ":"

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$e;->i()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v9, v2}, Lcom/google/protobuf/TextFormat$e;->C(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x2e

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$e;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, p2

    move-object/from16 v13, p3

    invoke-interface {v13, v5, v0}, Lcom/google/protobuf/f1$e;->k(Lcom/google/protobuf/b0;Ljava/lang/String;)Lcom/google/protobuf/b0$c;

    move-result-object v2

    const-string v14, "]"

    if-nez v2, :cond_2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$e;->u()I

    move-result v16

    add-int/lit8 v4, v16, 0x1

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$e;->t()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".["

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/google/protobuf/TextFormat$b$c;

    sget-object v15, Lcom/google/protobuf/TextFormat$b$c$a;->EXTENSION:Lcom/google/protobuf/TextFormat$b$c$a;

    invoke-direct {v4, v1, v15}, Lcom/google/protobuf/TextFormat$b$c;-><init>(Ljava/lang/String;Lcom/google/protobuf/TextFormat$b$c$a;)V

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, v2, Lcom/google/protobuf/b0$c;->a:Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$f;->q()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    if-ne v1, v6, :cond_3

    iget-object v4, v2, Lcom/google/protobuf/b0$c;->a:Lcom/google/protobuf/Descriptors$f;

    :goto_1
    invoke-virtual {v9, v14}, Lcom/google/protobuf/TextFormat$e;->c(Ljava/lang/String;)V

    move-object/from16 v17, v2

    move-object v14, v4

    goto/16 :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extension \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" does not extend message type \""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/protobuf/TextFormat$e;->A(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0

    :cond_4
    move-object/from16 v5, p2

    move-object/from16 v13, p3

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$e;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/protobuf/Descriptors$b;->j(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$f;

    move-result-object v4

    if-nez v4, :cond_5

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/google/protobuf/Descriptors$b;->j(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$f;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->A()Lcom/google/protobuf/Descriptors$f$c;

    move-result-object v14

    sget-object v15, Lcom/google/protobuf/Descriptors$f$c;->GROUP:Lcom/google/protobuf/Descriptors$f$c;

    if-eq v14, v15, :cond_5

    const/4 v4, 0x0

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->A()Lcom/google/protobuf/Descriptors$f$c;

    move-result-object v14

    sget-object v15, Lcom/google/protobuf/Descriptors$f$c;->GROUP:Lcom/google/protobuf/Descriptors$f$c;

    if-ne v14, v15, :cond_6

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->x()Lcom/google/protobuf/Descriptors$b;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    const/4 v4, 0x0

    :cond_6
    if-nez v4, :cond_7

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$e;->u()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$e;->t()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/protobuf/TextFormat$b$c;

    sget-object v14, Lcom/google/protobuf/TextFormat$b$c$a;->FIELD:Lcom/google/protobuf/TextFormat$b$c$a;

    invoke-direct {v2, v1, v14}, Lcom/google/protobuf/TextFormat$b$c;-><init>(Ljava/lang/String;Lcom/google/protobuf/TextFormat$b$c$a;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object v14, v4

    const/16 v17, 0x0

    :goto_2
    if-nez v14, :cond_8

    invoke-virtual {v8, v9, v6, v0}, Lcom/google/protobuf/TextFormat$b;->e(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/Descriptors$b;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v6}, Lcom/google/protobuf/TextFormat$b;->f(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/Descriptors$b;)V

    return-void

    :cond_8
    invoke-virtual {v14}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v0, v1, :cond_a

    invoke-virtual {v14}, Lcom/google/protobuf/Descriptors$f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v6, v0}, Lcom/google/protobuf/TextFormat$b;->e(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/Descriptors$b;Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Lcom/google/protobuf/TextFormat$e;->C(Ljava/lang/String;)Z

    if-eqz v10, :cond_9

    invoke-virtual {v10, v14}, Lcom/google/protobuf/d2$b;->b(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/d2$b;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v14

    move-object/from16 v5, v17

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/protobuf/TextFormat$b;->c(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/b0;Lcom/google/protobuf/f1$e;Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/b0$c;Lcom/google/protobuf/d2$b;Ljava/util/List;)V

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v14

    move-object/from16 v5, v17

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/protobuf/TextFormat$b;->c(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/b0;Lcom/google/protobuf/f1$e;Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/b0$c;Lcom/google/protobuf/d2$b;Ljava/util/List;)V

    goto :goto_3

    :cond_a
    invoke-virtual {v14}, Lcom/google/protobuf/Descriptors$f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v6, v0}, Lcom/google/protobuf/TextFormat$b;->e(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/Descriptors$b;Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Lcom/google/protobuf/TextFormat$e;->c(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v14

    move-object/from16 v5, v17

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/protobuf/TextFormat$b;->c(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/b0;Lcom/google/protobuf/f1$e;Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/b0$c;Lcom/google/protobuf/d2$b;Ljava/util/List;)V

    :goto_3
    if-eqz v10, :cond_b

    invoke-static {v11, v12}, Lcom/google/protobuf/e2;->a(II)Lcom/google/protobuf/e2;

    move-result-object v0

    invoke-virtual {v10, v14, v0}, Lcom/google/protobuf/d2$b;->c(Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/e2;)Lcom/google/protobuf/d2$b;

    :cond_b
    const-string v0, ";"

    invoke-virtual {v9, v0}, Lcom/google/protobuf/TextFormat$e;->C(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, ","

    invoke-virtual {v9, v0}, Lcom/google/protobuf/TextFormat$e;->C(Ljava/lang/String;)Z

    :cond_c
    return-void
.end method

.method public final m(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/b0;Lcom/google/protobuf/f1$e;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "tokenizer",
            "extensionRegistry",
            "target",
            "unknownFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/TextFormat$e;",
            "Lcom/google/protobuf/b0;",
            "Lcom/google/protobuf/f1$e;",
            "Ljava/util/List<",
            "Lcom/google/protobuf/TextFormat$b$c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    iget-object v4, p0, Lcom/google/protobuf/TextFormat$b;->f:Lcom/google/protobuf/d2$b;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/TextFormat$b;->l(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/b0;Lcom/google/protobuf/f1$e;Lcom/google/protobuf/d2$b;Ljava/util/List;)V

    return-void
.end method

.method public final o(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/Descriptors$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenizer",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/TextFormat$b;->d(Lcom/google/protobuf/TextFormat$e;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/TextFormat$b;->e(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/Descriptors$b;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/TextFormat$b;->f(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/Descriptors$b;)V

    const-string p2, ";"

    invoke-virtual {p1, p2}, Lcom/google/protobuf/TextFormat$e;->C(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, ","

    invoke-virtual {p1, p2}, Lcom/google/protobuf/TextFormat$e;->C(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public final p(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/Descriptors$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenizer",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    const-string v0, "<"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$e;->C(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "}"

    const-string v2, ">"

    if-eqz v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    const-string v0, "{"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$e;->c(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {p1, v2}, Lcom/google/protobuf/TextFormat$e;->w(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/TextFormat$e;->w(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/TextFormat$b;->o(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/Descriptors$b;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$e;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final q(Lcom/google/protobuf/TextFormat$e;ZLcom/google/protobuf/Descriptors$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenizer",
            "scalarAllowed",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    const-string v0, "["

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$e;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "]"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$e;->C(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    :goto_0
    const-string v1, "{"

    invoke-virtual {p1, v1}, Lcom/google/protobuf/TextFormat$e;->w(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "<"

    invoke-virtual {p1, v1}, Lcom/google/protobuf/TextFormat$e;->w(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/protobuf/TextFormat$b;->r(Lcom/google/protobuf/TextFormat$e;)V

    goto :goto_2

    :cond_2
    const-string p2, "Invalid repeated scalar field: missing \":\" before \"[\"."

    invoke-virtual {p1, p2}, Lcom/google/protobuf/TextFormat$e;->z(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/TextFormat$b;->p(Lcom/google/protobuf/TextFormat$e;Lcom/google/protobuf/Descriptors$b;)V

    :goto_2
    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$e;->C(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    const-string v1, ","

    invoke-virtual {p1, v1}, Lcom/google/protobuf/TextFormat$e;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method public final r(Lcom/google/protobuf/TextFormat$e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenizer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$e;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$e;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$e;->F()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$e;->G()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$e;->I()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$e;->D()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$e;->E()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid field value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/google/protobuf/TextFormat$e;->a(Lcom/google/protobuf/TextFormat$e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$e;->z(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    return-void
.end method
