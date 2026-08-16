.class public final Lcom/google/protobuf/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/google/protobuf/B;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/j0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/protobuf/j0;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/reflect/Field;

.field public final c:Lcom/google/protobuf/p0;

.field public final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final e:I

.field public final f:Ljava/lang/reflect/Field;

.field public final g:I

.field public final h:Z

.field public final i:Z

.field public final j:Lcom/google/protobuf/t1;

.field public final k:Ljava/lang/reflect/Field;

.field public final l:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final m:Ljava/lang/Object;

.field public final n:Lcom/google/protobuf/D0$e;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/t1;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/D0$e;Ljava/lang/reflect/Field;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "field",
            "fieldNumber",
            "type",
            "messageClass",
            "presenceField",
            "presenceMask",
            "required",
            "enforceUtf8",
            "oneof",
            "oneofStoredType",
            "mapDefaultEntry",
            "enumVerifier",
            "cachedSizeField"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
            "Lcom/google/protobuf/p0;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            "IZZ",
            "Lcom/google/protobuf/t1;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/D0$e;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/j0;->b:Ljava/lang/reflect/Field;

    iput-object p3, p0, Lcom/google/protobuf/j0;->c:Lcom/google/protobuf/p0;

    iput-object p4, p0, Lcom/google/protobuf/j0;->d:Ljava/lang/Class;

    iput p2, p0, Lcom/google/protobuf/j0;->e:I

    iput-object p5, p0, Lcom/google/protobuf/j0;->f:Ljava/lang/reflect/Field;

    iput p6, p0, Lcom/google/protobuf/j0;->g:I

    iput-boolean p7, p0, Lcom/google/protobuf/j0;->h:Z

    iput-boolean p8, p0, Lcom/google/protobuf/j0;->i:Z

    iput-object p9, p0, Lcom/google/protobuf/j0;->j:Lcom/google/protobuf/t1;

    iput-object p10, p0, Lcom/google/protobuf/j0;->l:Ljava/lang/Class;

    iput-object p11, p0, Lcom/google/protobuf/j0;->m:Ljava/lang/Object;

    iput-object p12, p0, Lcom/google/protobuf/j0;->n:Lcom/google/protobuf/D0$e;

    iput-object p13, p0, Lcom/google/protobuf/j0;->k:Ljava/lang/reflect/Field;

    return-void
.end method

.method public static C(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static F()Lcom/google/protobuf/j0$b;
    .locals 2

    new-instance v0, Lcom/google/protobuf/j0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/j0$b;-><init>(Lcom/google/protobuf/j0$a;)V

    return-object v0
.end method

.method public static a(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fieldNumber"
        }
    .end annotation

    if-lez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fieldNumber must be positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Z)Lcom/google/protobuf/j0;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "field",
            "fieldNumber",
            "fieldType",
            "enforceUtf8"
        }
    .end annotation

    move-object/from16 v3, p2

    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/j0;->a(I)V

    const-string v0, "field"

    move-object v1, p0

    invoke-static {p0, v0}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fieldType"

    invoke-static {v3, v0}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lcom/google/protobuf/p0;->MESSAGE_LIST:Lcom/google/protobuf/p0;

    if-eq v3, v0, :cond_0

    sget-object v0, Lcom/google/protobuf/p0;->GROUP_LIST:Lcom/google/protobuf/p0;

    if-eq v3, v0, :cond_0

    new-instance v14, Lcom/google/protobuf/j0;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v8, p3

    invoke-direct/range {v0 .. v13}, Lcom/google/protobuf/j0;-><init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/t1;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/D0$e;Ljava/lang/reflect/Field;)V

    return-object v14

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t be called for repeated message fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Lcom/google/protobuf/D0$e;)Lcom/google/protobuf/j0;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "field",
            "fieldNumber",
            "fieldType",
            "enumVerifier"
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/j0;->a(I)V

    const-string v0, "field"

    move-object v2, p0

    invoke-static {p0, v0}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/google/protobuf/j0;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    invoke-direct/range {v1 .. v14}, Lcom/google/protobuf/j0;-><init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/t1;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/D0$e;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public static e(Ljava/lang/reflect/Field;ILjava/lang/Object;Lcom/google/protobuf/D0$e;)Lcom/google/protobuf/j0;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "field",
            "fieldNumber",
            "mapDefaultEntry",
            "enumVerifier"
        }
    .end annotation

    const-string v0, "mapDefaultEntry"

    move-object/from16 v12, p2

    invoke-static {v12, v0}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/j0;->a(I)V

    const-string v0, "field"

    move-object v2, p0

    invoke-static {p0, v0}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/google/protobuf/j0;

    sget-object v4, Lcom/google/protobuf/p0;->MAP:Lcom/google/protobuf/p0;

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v1, v0

    move/from16 v3, p1

    move-object/from16 v13, p3

    invoke-direct/range {v1 .. v14}, Lcom/google/protobuf/j0;-><init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/t1;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/D0$e;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public static g(ILcom/google/protobuf/p0;Lcom/google/protobuf/t1;Ljava/lang/Class;ZLcom/google/protobuf/D0$e;)Lcom/google/protobuf/j0;
    .locals 15
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
            "fieldNumber",
            "fieldType",
            "oneof",
            "oneofStoredType",
            "enforceUtf8",
            "enumVerifier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/protobuf/p0;",
            "Lcom/google/protobuf/t1;",
            "Ljava/lang/Class<",
            "*>;Z",
            "Lcom/google/protobuf/D0$e;",
            ")",
            "Lcom/google/protobuf/j0;"
        }
    .end annotation

    move-object/from16 v3, p1

    invoke-static {p0}, Lcom/google/protobuf/j0;->a(I)V

    const-string v0, "fieldType"

    invoke-static {v3, v0}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "oneof"

    move-object/from16 v9, p2

    invoke-static {v9, v0}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "oneofStoredType"

    move-object/from16 v10, p3

    invoke-static {v10, v0}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/p0;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v14, Lcom/google/protobuf/j0;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v14

    move v2, p0

    move-object/from16 v3, p1

    move/from16 v8, p4

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p5

    invoke-direct/range {v0 .. v13}, Lcom/google/protobuf/j0;-><init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/t1;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/D0$e;Ljava/lang/reflect/Field;)V

    return-object v14

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oneof is only supported for scalar fields. Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static h(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Ljava/lang/reflect/Field;)Lcom/google/protobuf/j0;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "field",
            "fieldNumber",
            "fieldType",
            "cachedSizeField"
        }
    .end annotation

    move-object/from16 v3, p2

    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/j0;->a(I)V

    const-string v0, "field"

    move-object v1, p0

    invoke-static {p0, v0}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fieldType"

    invoke-static {v3, v0}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lcom/google/protobuf/p0;->MESSAGE_LIST:Lcom/google/protobuf/p0;

    if-eq v3, v0, :cond_0

    sget-object v0, Lcom/google/protobuf/p0;->GROUP_LIST:Lcom/google/protobuf/p0;

    if-eq v3, v0, :cond_0

    new-instance v14, Lcom/google/protobuf/j0;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v13, p3

    invoke-direct/range {v0 .. v13}, Lcom/google/protobuf/j0;-><init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/t1;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/D0$e;Ljava/lang/reflect/Field;)V

    return-object v14

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t be called for repeated message fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static i(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Lcom/google/protobuf/D0$e;Ljava/lang/reflect/Field;)Lcom/google/protobuf/j0;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "field",
            "fieldNumber",
            "fieldType",
            "enumVerifier",
            "cachedSizeField"
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/j0;->a(I)V

    const-string v0, "field"

    move-object v2, p0

    invoke-static {p0, v0}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/google/protobuf/j0;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-direct/range {v1 .. v14}, Lcom/google/protobuf/j0;-><init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/t1;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/D0$e;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public static j(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Ljava/lang/reflect/Field;IZLcom/google/protobuf/D0$e;)Lcom/google/protobuf/j0;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "field",
            "fieldNumber",
            "fieldType",
            "presenceField",
            "presenceMask",
            "enforceUtf8",
            "enumVerifier"
        }
    .end annotation

    move-object/from16 v5, p3

    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/j0;->a(I)V

    const-string v0, "field"

    move-object v1, p0

    invoke-static {p0, v0}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fieldType"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "presenceField"

    invoke-static {v5, v0}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz v5, :cond_0

    invoke-static/range {p4 .. p4}, Lcom/google/protobuf/j0;->C(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move/from16 v6, p4

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "presenceMask must have exactly one bit set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    new-instance v14, Lcom/google/protobuf/j0;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v13}, Lcom/google/protobuf/j0;-><init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/t1;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/D0$e;Ljava/lang/reflect/Field;)V

    return-object v14
.end method

.method public static k(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Ljava/lang/reflect/Field;IZLcom/google/protobuf/D0$e;)Lcom/google/protobuf/j0;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "field",
            "fieldNumber",
            "fieldType",
            "presenceField",
            "presenceMask",
            "enforceUtf8",
            "enumVerifier"
        }
    .end annotation

    move-object/from16 v5, p3

    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/j0;->a(I)V

    const-string v0, "field"

    move-object v1, p0

    invoke-static {p0, v0}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fieldType"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "presenceField"

    invoke-static {v5, v0}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz v5, :cond_0

    invoke-static/range {p4 .. p4}, Lcom/google/protobuf/j0;->C(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move/from16 v6, p4

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "presenceMask must have exactly one bit set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    new-instance v14, Lcom/google/protobuf/j0;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v13}, Lcom/google/protobuf/j0;-><init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/t1;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/D0$e;Ljava/lang/reflect/Field;)V

    return-object v14
.end method

.method public static m(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Ljava/lang/Class;)Lcom/google/protobuf/j0;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "field",
            "fieldNumber",
            "fieldType",
            "messageClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
            "Lcom/google/protobuf/p0;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/protobuf/j0;"
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/j0;->a(I)V

    const-string v0, "field"

    move-object v2, p0

    invoke-static {p0, v0}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fieldType"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "messageClass"

    move-object/from16 v5, p3

    invoke-static {v5, v0}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/google/protobuf/j0;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v0

    move/from16 v3, p1

    invoke-direct/range {v1 .. v14}, Lcom/google/protobuf/j0;-><init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/t1;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/D0$e;Ljava/lang/reflect/Field;)V

    return-object v0
.end method


# virtual methods
.method public A()Lcom/google/protobuf/p0;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/j0;->c:Lcom/google/protobuf/p0;

    return-object v0
.end method

.method public B()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/j0;->i:Z

    return v0
.end method

.method public D()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/j0;->h:Z

    return v0
.end method

.method public b(Lcom/google/protobuf/j0;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/j0;->e:I

    iget p1, p1, Lcom/google/protobuf/j0;->e:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "o"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/j0;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/j0;->b(Lcom/google/protobuf/j0;)I

    move-result p1

    return p1
.end method

.method public o()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/j0;->k:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public q()Lcom/google/protobuf/D0$e;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/j0;->n:Lcom/google/protobuf/D0$e;

    return-object v0
.end method

.method public r()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/j0;->b:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/j0;->e:I

    return v0
.end method

.method public t()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j0;->d:Ljava/lang/Class;

    return-object v0
.end method

.method public u()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/j0;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public v()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/j0$a;->a:[I

    iget-object v1, p0, Lcom/google/protobuf/j0;->c:Lcom/google/protobuf/p0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/j0;->d:Ljava/lang/Class;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/j0;->b:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/j0;->l:Ljava/lang/Class;

    :goto_0
    return-object v0
.end method

.method public w()Lcom/google/protobuf/t1;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/j0;->j:Lcom/google/protobuf/t1;

    return-object v0
.end method

.method public x()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j0;->l:Ljava/lang/Class;

    return-object v0
.end method

.method public y()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/j0;->f:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/j0;->g:I

    return v0
.end method
