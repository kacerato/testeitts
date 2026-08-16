.class public Lcom/google/android/gms/common/server/response/a$a;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LC0/a;
.end annotation

.annotation build LG0/F;
.end annotation

.annotation build LI0/c$a;
    creator = "FieldCreator"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/server/response/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "LI0/a;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/server/response/m;


# instance fields
.field public final b:I
    .annotation build LI0/c$h;
        getter = "getVersionCode"
        id = 0x1
    .end annotation
.end field

.field public final c:I
    .annotation build LI0/c$c;
        getter = "getTypeIn"
        id = 0x2
    .end annotation
.end field

.field public final d:Z
    .annotation build LI0/c$c;
        getter = "isTypeInArray"
        id = 0x3
    .end annotation
.end field

.field public final e:I
    .annotation build LI0/c$c;
        getter = "getTypeOut"
        id = 0x4
    .end annotation
.end field

.field public final f:Z
    .annotation build LI0/c$c;
        getter = "isTypeOutArray"
        id = 0x5
    .end annotation
.end field

.field public final g:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getOutputFieldName"
        id = 0x6
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final h:I
    .annotation build LI0/c$c;
        getter = "getSafeParcelableFieldId"
        id = 0x7
    .end annotation
.end field

.field public final i:Ljava/lang/Class;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final j:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getConcreteTypeName"
        id = 0x8
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public k:Lcom/google/android/gms/common/server/response/q;

.field public final l:Lcom/google/android/gms/common/server/response/a$b;
    .annotation build LI0/c$c;
        getter = "getWrappedConverter"
        id = 0x9
        type = "com.google.android.gms.common.server.converter.ConverterWrapper"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/server/response/m;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/a$a;->CREATOR:Lcom/google/android/gms/common/server/response/m;

    return-void
.end method

.method public constructor <init>(IIZIZLjava/lang/String;ILjava/lang/String;LP0/b;)V
    .locals 0
    .param p1    # I
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # I
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Z
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p4    # I
        .annotation build LI0/c$e;
            id = 0x4
        .end annotation
    .end param
    .param p5    # Z
        .annotation build LI0/c$e;
            id = 0x5
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x6
        .end annotation
    .end param
    .param p7    # I
        .annotation build LI0/c$e;
            id = 0x7
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x8
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # LP0/b;
        .annotation build LI0/c$e;
            id = 0x9
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    .line 1
    invoke-direct {p0}, LI0/a;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/server/response/a$a;->b:I

    iput p2, p0, Lcom/google/android/gms/common/server/response/a$a;->c:I

    iput-boolean p3, p0, Lcom/google/android/gms/common/server/response/a$a;->d:Z

    iput p4, p0, Lcom/google/android/gms/common/server/response/a$a;->e:I

    iput-boolean p5, p0, Lcom/google/android/gms/common/server/response/a$a;->f:Z

    iput-object p6, p0, Lcom/google/android/gms/common/server/response/a$a;->g:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/common/server/response/a$a;->h:I

    const/4 p1, 0x0

    if-nez p8, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/common/server/response/a$a;->i:Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/common/server/response/a$a;->j:Ljava/lang/String;

    goto :goto_0

    .line 2
    :cond_0
    const-class p2, Lcom/google/android/gms/common/server/response/c;

    iput-object p2, p0, Lcom/google/android/gms/common/server/response/a$a;->i:Ljava/lang/Class;

    iput-object p8, p0, Lcom/google/android/gms/common/server/response/a$a;->j:Ljava/lang/String;

    :goto_0
    if-nez p9, :cond_1

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/common/server/response/a$a;->l:Lcom/google/android/gms/common/server/response/a$b;

    return-void

    .line 4
    :cond_1
    invoke-virtual {p9}, LP0/b;->n()Lcom/google/android/gms/common/server/response/a$b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/server/response/a$a;->l:Lcom/google/android/gms/common/server/response/a$b;

    return-void
.end method

.method public constructor <init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/common/server/response/a$b;)V
    .locals 1
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/google/android/gms/common/server/response/a$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0}, LI0/a;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/server/response/a$a;->b:I

    iput p1, p0, Lcom/google/android/gms/common/server/response/a$a;->c:I

    iput-boolean p2, p0, Lcom/google/android/gms/common/server/response/a$a;->d:Z

    iput p3, p0, Lcom/google/android/gms/common/server/response/a$a;->e:I

    iput-boolean p4, p0, Lcom/google/android/gms/common/server/response/a$a;->f:Z

    iput-object p5, p0, Lcom/google/android/gms/common/server/response/a$a;->g:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/common/server/response/a$a;->h:I

    iput-object p7, p0, Lcom/google/android/gms/common/server/response/a$a;->i:Ljava/lang/Class;

    if-nez p7, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/server/response/a$a;->j:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/server/response/a$a;->j:Ljava/lang/String;

    .line 7
    :goto_0
    iput-object p8, p0, Lcom/google/android/gms/common/server/response/a$a;->l:Lcom/google/android/gms/common/server/response/a$b;

    return-void
.end method

.method public static A0(Ljava/lang/String;ILcom/google/android/gms/common/server/response/a$b;Z)Lcom/google/android/gms/common/server/response/a$a;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/server/response/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gms/common/server/response/a$b<",
            "**>;Z)",
            "Lcom/google/android/gms/common/server/response/a$a;"
        }
    .end annotation

    new-instance v9, Lcom/google/android/gms/common/server/response/a$a;

    invoke-interface {p2}, Lcom/google/android/gms/common/server/response/a$b;->c()I

    invoke-interface {p2}, Lcom/google/android/gms/common/server/response/a$b;->d()I

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x7

    const/4 v3, 0x0

    move-object v0, v9

    move v2, p3

    move-object v5, p0

    move v6, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/server/response/a$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/common/server/response/a$b;)V

    return-object v9
.end method

.method public static bridge synthetic D0(Lcom/google/android/gms/common/server/response/a$a;)Lcom/google/android/gms/common/server/response/a$b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/server/response/a$a;->l:Lcom/google/android/gms/common/server/response/a$b;

    return-object p0
.end method

.method public static b(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/a$a;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/server/response/a$a<",
            "[B[B>;"
        }
    .end annotation

    new-instance v9, Lcom/google/android/gms/common/server/response/a$a;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v9

    move v1, v3

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/server/response/a$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/common/server/response/a$b;)V

    return-object v9
.end method

.method public static b0(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/a$a;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/server/response/a$a<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    new-instance v9, Lcom/google/android/gms/common/server/response/a$a;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    move-object v0, v9

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/server/response/a$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/common/server/response/a$b;)V

    return-object v9
.end method

.method public static n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/a$a;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/server/response/a$a<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v9, Lcom/google/android/gms/common/server/response/a$a;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x6

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v9

    move v1, v3

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/server/response/a$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/common/server/response/a$b;)V

    return-object v9
.end method

.method public static n0(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/a$a;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/server/response/a$a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v9, Lcom/google/android/gms/common/server/response/a$a;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object v0, v9

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/server/response/a$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/common/server/response/a$b;)V

    return-object v9
.end method

.method public static p(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/a$a;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/common/server/response/a;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/common/server/response/a$a<",
            "TT;TT;>;"
        }
    .end annotation

    new-instance v9, Lcom/google/android/gms/common/server/response/a$a;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/16 v3, 0xb

    const/4 v2, 0x0

    move-object v0, v9

    move v1, v3

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/server/response/a$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/common/server/response/a$b;)V

    return-object v9
.end method

.method public static t(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/a$a;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/common/server/response/a;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/common/server/response/a$a<",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/ArrayList<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v9, Lcom/google/android/gms/common/server/response/a$a;

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/16 v3, 0xb

    const/4 v2, 0x1

    move-object v0, v9

    move v1, v3

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/server/response/a$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/common/server/response/a$b;)V

    return-object v9
.end method

.method public static u0(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/a$a;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/server/response/a$a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v9, Lcom/google/android/gms/common/server/response/a$a;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v9

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/server/response/a$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/common/server/response/a$b;)V

    return-object v9
.end method

.method public static v0(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/a$a;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/server/response/a$a<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v9, Lcom/google/android/gms/common/server/response/a$a;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object v0, v9

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/server/response/a$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/common/server/response/a$b;)V

    return-object v9
.end method

.method public static w0(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/a$a;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/server/response/a$a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v9, Lcom/google/android/gms/common/server/response/a$a;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x7

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v9

    move v1, v3

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/server/response/a$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/common/server/response/a$b;)V

    return-object v9
.end method

.method public static x0(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/a$a;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/server/response/a$a<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v9, Lcom/google/android/gms/common/server/response/a$a;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v3, 0xa

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v9

    move v1, v3

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/server/response/a$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/common/server/response/a$b;)V

    return-object v9
.end method

.method public static y0(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/a$a;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/server/response/a$a<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v9, Lcom/google/android/gms/common/server/response/a$a;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x7

    const/4 v2, 0x1

    const/4 v4, 0x1

    move-object v0, v9

    move v1, v3

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/server/response/a$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/common/server/response/a$b;)V

    return-object v9
.end method


# virtual methods
.method public final B0()LP0/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/a$a;->l:Lcom/google/android/gms/common/server/response/a$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, LP0/b;->b(Lcom/google/android/gms/common/server/response/a$b;)LP0/b;

    move-result-object v0

    return-object v0
.end method

.method public final C0()Lcom/google/android/gms/common/server/response/a$a;
    .locals 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v10, Lcom/google/android/gms/common/server/response/a$a;

    iget v1, p0, Lcom/google/android/gms/common/server/response/a$a;->b:I

    iget v2, p0, Lcom/google/android/gms/common/server/response/a$a;->c:I

    iget-boolean v3, p0, Lcom/google/android/gms/common/server/response/a$a;->d:Z

    iget v4, p0, Lcom/google/android/gms/common/server/response/a$a;->e:I

    iget-boolean v5, p0, Lcom/google/android/gms/common/server/response/a$a;->f:Z

    iget-object v6, p0, Lcom/google/android/gms/common/server/response/a$a;->g:Ljava/lang/String;

    iget v7, p0, Lcom/google/android/gms/common/server/response/a$a;->h:I

    iget-object v8, p0, Lcom/google/android/gms/common/server/response/a$a;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/response/a$a;->B0()LP0/b;

    move-result-object v9

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/common/server/response/a$a;-><init>(IIZIZLjava/lang/String;ILjava/lang/String;LP0/b;)V

    return-object v10
.end method

.method public final E0()Lcom/google/android/gms/common/server/response/a;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/a$a;->i:Ljava/lang/Class;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/a$a;->i:Ljava/lang/Class;

    const-class v1, Lcom/google/android/gms/common/server/response/c;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/a$a;->j:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/a$a;->k:Lcom/google/android/gms/common/server/response/q;

    const-string v1, "The field mapping dictionary must be set if the concrete type is a SafeParcelResponse object."

    invoke-static {v0, v1}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/server/response/c;

    iget-object v1, p0, Lcom/google/android/gms/common/server/response/a$a;->k:Lcom/google/android/gms/common/server/response/q;

    iget-object v2, p0, Lcom/google/android/gms/common/server/response/a$a;->j:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/server/response/c;-><init>(Lcom/google/android/gms/common/server/response/q;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/response/a;

    return-object v0
.end method

.method public final F0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/a$a;->l:Lcom/google/android/gms/common/server/response/a$b;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/a$a;->l:Lcom/google/android/gms/common/server/response/a$b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/server/response/a$b;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final G0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/a$a;->l:Lcom/google/android/gms/common/server/response/a$b;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/a$a;->l:Lcom/google/android/gms/common/server/response/a$b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/server/response/a$b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final H0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/a$a;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public final I0()Ljava/util/Map;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/a$a;->j:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/a$a;->k:Lcom/google/android/gms/common/server/response/q;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/a$a;->k:Lcom/google/android/gms/common/server/response/q;

    iget-object v1, p0, Lcom/google/android/gms/common/server/response/a$a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/server/response/q;->p(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public final J0(Lcom/google/android/gms/common/server/response/q;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/server/response/a$a;->k:Lcom/google/android/gms/common/server/response/q;

    return-void
.end method

.method public final M0()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/a$a;->l:Lcom/google/android/gms/common/server/response/a$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, LG0/y;->d(Ljava/lang/Object;)LG0/y$a;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/server/response/a$a;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "versionCode"

    invoke-virtual {v0, v2, v1}, LG0/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)LG0/y$a;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/server/response/a$a;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "typeIn"

    invoke-virtual {v0, v2, v1}, LG0/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)LG0/y$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/common/server/response/a$a;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "typeInArray"

    invoke-virtual {v0, v2, v1}, LG0/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)LG0/y$a;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/server/response/a$a;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "typeOut"

    invoke-virtual {v0, v2, v1}, LG0/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)LG0/y$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/common/server/response/a$a;->f:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "typeOutArray"

    invoke-virtual {v0, v2, v1}, LG0/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)LG0/y$a;

    move-result-object v0

    const-string v1, "outputFieldName"

    iget-object v2, p0, Lcom/google/android/gms/common/server/response/a$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LG0/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)LG0/y$a;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/server/response/a$a;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "safeParcelFieldId"

    invoke-virtual {v0, v2, v1}, LG0/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)LG0/y$a;

    move-result-object v0

    const-string v1, "concreteTypeName"

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/response/a$a;->H0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LG0/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)LG0/y$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/server/response/a$a;->i:Ljava/lang/Class;

    if-eqz v1, :cond_0

    const-string v2, "concreteType.class"

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, LG0/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)LG0/y$a;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/a$a;->l:Lcom/google/android/gms/common/server/response/a$b;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "converterName"

    invoke-virtual {v0, v2, v1}, LG0/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)LG0/y$a;

    :cond_1
    invoke-virtual {v0}, LG0/y$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/google/android/gms/common/server/response/a$a;->b:I

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v0}, LI0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    iget v2, p0, Lcom/google/android/gms/common/server/response/a$a;->c:I

    invoke-static {p1, v0, v2}, LI0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/common/server/response/a$a;->d:Z

    invoke-static {p1, v0, v2}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x4

    iget v2, p0, Lcom/google/android/gms/common/server/response/a$a;->e:I

    invoke-static {p1, v0, v2}, LI0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/common/server/response/a$a;->f:Z

    invoke-static {p1, v0, v2}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/a$a;->g:Ljava/lang/String;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/response/a$a;->z0()I

    move-result v2

    invoke-static {p1, v0, v2}, LI0/b;->F(Landroid/os/Parcel;II)V

    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/response/a$a;->H0()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2, v3}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/response/a$a;->B0()LP0/b;

    move-result-object v2

    invoke-static {p1, v0, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v1}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public z0()I
    .locals 1
    .annotation build LC0/a;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/common/server/response/a$a;->h:I

    return v0
.end method
