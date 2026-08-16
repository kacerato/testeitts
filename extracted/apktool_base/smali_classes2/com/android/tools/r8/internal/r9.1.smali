.class public Lcom/android/tools/r8/internal/r9;
.super Lcom/android/tools/r8/internal/Va;
.source "SourceFile"


# static fields
.field public static final synthetic s:Z = true


# instance fields
.field public final j:Ljava/util/HashSet;

.field public final k:Ljava/util/ArrayList;

.field public final l:Ljava/util/HashSet;

.field public final m:Ljava/util/HashSet;

.field public n:Ljava/util/ArrayList;

.field public o:Lcom/android/tools/r8/internal/qd0;

.field public p:Z

.field public q:Ljava/lang/StringBuilder;

.field public final r:Lcom/android/tools/r8/internal/nC;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Va;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/r9;->j:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/r9;->k:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/r9;->l:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/r9;->m:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/r9;->n:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/tools/r8/internal/r9;->o:Lcom/android/tools/r8/internal/qd0;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/r9;->p:Z

    iput-object v0, p0, Lcom/android/tools/r8/internal/r9;->q:Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/tools/r8/internal/kC;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    const-string v1, "Z"

    const-string v2, "booleanType"

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object v0

    const-string v1, "B"

    const-string v2, "byteType"

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object v0

    const-string v1, "C"

    const-string v2, "charType"

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object v0

    const-string v1, "D"

    const-string v2, "doubleType"

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object v0

    const-string v1, "F"

    const-string v2, "floatType"

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object v0

    const-string v1, "I"

    const-string v2, "intType"

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object v0

    const-string v1, "J"

    const-string v2, "longType"

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object v0

    const-string v1, "S"

    const-string v2, "shortType"

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object v0

    const-string v1, "V"

    const-string v2, "voidType"

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object v0

    const-string v1, "[Z"

    const-string v2, "booleanArrayType"

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object v0

    const-string v1, "[B"

    const-string v2, "byteArrayType"

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object v0

    const-string v1, "[C"

    const-string v2, "charArrayType"

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object v0

    const-string v1, "[D"

    const-string v2, "doubleArrayType"

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object v0

    const-string v1, "[F"

    const-string v2, "floatArrayType"

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object v0

    const-string v1, "[I"

    const-string v2, "intArrayType"

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object v0

    const-string v1, "[J"

    const-string v2, "longArrayType"

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object v0

    const-string v1, "[S"

    const-string v2, "shortArrayType"

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object v0

    const-string v1, "Ljava/lang/Object;"

    const-string v2, "objectType"

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object v0

    const-string v1, "Ljava/lang/Class;"

    const-string v2, "classType"

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object v0

    const-string v1, "Ljava/lang/Throwable;"

    const-string v2, "throwableType"

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object v0

    const-string v1, "Ljava/lang/String;"

    const-string v2, "stringType"

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object v0

    const-string v1, "Ljava/lang/Character;"

    const-string v2, "boxedCharType"

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object v0

    const-string v1, "Ljava/lang/CharSequence;"

    const-string v2, "charSequenceType"

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object v0

    const-string v1, "Ljava/lang/StringBuilder;"

    const-string v2, "stringBuilderType"

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object v0

    const-string v1, "Ljava/lang/AutoCloseable;"

    const-string v2, "autoCloseableType"

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kC;->a()Lcom/android/tools/r8/internal/nC;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/r9;->r:Lcom/android/tools/r8/internal/nC;

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 2

    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v0, p0

    if-gez v0, :cond_0

    goto :goto_1

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "L"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static a(Lcom/android/tools/r8/graph/L2;)Ljava/lang/String;
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/r9;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "factory.createString("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;)Z
    .locals 1

    .line 84
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)Ljava/lang/String;
    .locals 7

    .line 92
    iget-object v0, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/r9;->c(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "factory.createProto("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    iget-object v3, v1, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/r9;->c(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v1, v1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    const-string v5, ", "

    if-ge v4, v3, :cond_0

    aget-object v6, v1, v4

    .line 97
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/r9;->c(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 98
    :cond_0
    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    .line 100
    invoke-static {p1}, Lcom/android/tools/r8/internal/r9;->a(Lcom/android/tools/r8/graph/L2;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "factory.createMethod("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)Ljava/lang/String;
    .locals 4

    .line 101
    iget-object v0, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/r9;->c(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    .line 103
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/r9;->c(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    .line 104
    invoke-static {p1}, Lcom/android/tools/r8/internal/r9;->a(Lcom/android/tools/r8/graph/L2;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "factory.createField("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/NB;)Ljava/lang/String;
    .locals 2

    .line 87
    const-string v0, "ir"

    const-string v1, "code"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    const-string v1, "IfType"

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/T10;)Ljava/lang/String;
    .locals 2

    .line 85
    const-string v0, "ir"

    const-string v1, "code"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    const-string v1, "NumericType"

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/XX;)Ljava/lang/String;
    .locals 2

    .line 89
    const-string v0, "ir"

    const-string v1, "code"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    const-string v1, "MonitorType"

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/android/tools/r8/internal/hC;)Ljava/lang/String;
    .locals 3

    .line 81
    sget-boolean v0, Lcom/android/tools/r8/internal/r9;->s:Z

    const-string v1, "."

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 82
    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/internal/rr1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/rr1;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 83
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/r9;->j:Ljava/util/HashSet;

    invoke-static {v1, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 5

    .line 193
    new-instance v0, Lcom/android/tools/r8/internal/eC;

    .line 194
    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 195
    const-string v1, "tools"

    const-string v2, "r8"

    const-string v3, "com"

    const-string v4, "android"

    invoke-static {v3, v4, v1, v2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 196
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/eC;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object p2

    .line 197
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/hC;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/A9;)V
    .locals 1

    .line 146
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/A9;->V()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/r9;->a(Lcom/android/tools/r8/graph/L2;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "CfConstString"

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Ba;)V
    .locals 1

    .line 141
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ba;->c:Lcom/android/tools/r8/internal/T10;

    .line 142
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/r9;->a(Lcom/android/tools/r8/internal/T10;)Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object p1, p1, Lcom/android/tools/r8/internal/Ba;->d:Lcom/android/tools/r8/internal/T10;

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r9;->a(Lcom/android/tools/r8/internal/T10;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    .line 145
    const-string v0, "CfNumberConversion"

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Bb;)V
    .locals 1

    .line 179
    new-instance v0, Lcom/android/tools/r8/internal/av0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/av0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/E9;)V
    .locals 1

    .line 147
    new-instance p1, Lcom/android/tools/r8/internal/av0;

    const-class v0, Lcom/android/tools/r8/internal/E9;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/av0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/F9;)V
    .locals 1

    .line 159
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->B()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 160
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    .line 161
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r9;->a(Lcom/android/tools/r8/graph/l1;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "CfInstanceFieldWrite"

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 162
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r9;->a(Lcom/android/tools/r8/graph/l1;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "CfInstanceFieldRead"

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 163
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r9;->a(Lcom/android/tools/r8/graph/l1;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "CfStaticFieldWrite"

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 164
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r9;->a(Lcom/android/tools/r8/graph/l1;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "CfStaticFieldRead"

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/internal/G9;)V
    .locals 4

    .line 66
    iget-object v0, p1, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    .line 67
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v1, "code"

    const-string v2, "cf"

    const-string v3, "CfFrame"

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p1, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    .line 69
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 71
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 72
    :cond_0
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r9;->c(Lcom/android/tools/r8/internal/G9;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 74
    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    .line 75
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r9;->b(Lcom/android/tools/r8/internal/G9;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 78
    :cond_2
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r9;->b(Lcom/android/tools/r8/internal/G9;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r9;->c(Lcom/android/tools/r8/internal/G9;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/M9;)V
    .locals 1

    .line 169
    iget-object p1, p1, Lcom/android/tools/r8/internal/M9;->c:Lcom/android/tools/r8/internal/ka;

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r9;->c(Lcom/android/tools/r8/internal/ka;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "CfGoto"

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Ma;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/O9;)V
    .locals 2

    .line 171
    iget-object v0, p1, Lcom/android/tools/r8/internal/s9;->c:Lcom/android/tools/r8/internal/NB;

    .line 172
    iget-object v1, p1, Lcom/android/tools/r8/internal/s9;->d:Lcom/android/tools/r8/internal/Kw0;

    .line 173
    iget-object p1, p1, Lcom/android/tools/r8/internal/s9;->e:Lcom/android/tools/r8/internal/ka;

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/r9;->a(Lcom/android/tools/r8/internal/NB;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/r9;->b(Lcom/android/tools/r8/internal/Kw0;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r9;->c(Lcom/android/tools/r8/internal/ka;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, v1, p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "CfIf"

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Q9;)V
    .locals 2

    .line 175
    iget-object v0, p1, Lcom/android/tools/r8/internal/s9;->c:Lcom/android/tools/r8/internal/NB;

    .line 176
    iget-object v1, p1, Lcom/android/tools/r8/internal/s9;->d:Lcom/android/tools/r8/internal/Kw0;

    .line 177
    iget-object p1, p1, Lcom/android/tools/r8/internal/s9;->e:Lcom/android/tools/r8/internal/ka;

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/r9;->a(Lcom/android/tools/r8/internal/NB;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/r9;->b(Lcom/android/tools/r8/internal/Kw0;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r9;->c(Lcom/android/tools/r8/internal/ka;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, v1, p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "CfIfCmp"

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/R9;)V
    .locals 1

    .line 186
    iget v0, p1, Lcom/android/tools/r8/internal/R9;->c:I

    .line 187
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    iget p1, p1, Lcom/android/tools/r8/internal/R9;->d:I

    .line 189
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    .line 190
    const-string v0, "CfIinc"

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/V8;)V
    .locals 4

    .line 124
    const-string v0, "cf"

    const-string v1, "code"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    const-string v1, "CfArithmeticBinop"

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/V8;->V()Lcom/android/tools/r8/internal/V8$a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".Opcode."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/V8;->W()Lcom/android/tools/r8/internal/T10;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r9;->a(Lcom/android/tools/r8/internal/T10;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/V9;)V
    .locals 1

    .line 157
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/V9;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r9;->c(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "CfInstanceOf"

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/X8;)V
    .locals 1

    .line 148
    iget-object p1, p1, Lcom/android/tools/r8/internal/Y8;->c:Lcom/android/tools/r8/internal/YV;

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r9;->b(Lcom/android/tools/r8/internal/YV;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "CfArrayLoad"

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Z8;)V
    .locals 1

    .line 150
    iget-object p1, p1, Lcom/android/tools/r8/internal/Y8;->c:Lcom/android/tools/r8/internal/YV;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r9;->b(Lcom/android/tools/r8/internal/YV;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "CfArrayStore"

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ab;)V
    .locals 1

    .line 122
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ab;->W()Lcom/android/tools/r8/internal/Kw0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r9;->b(Lcom/android/tools/r8/internal/Kw0;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "CfReturn"

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ga;)V
    .locals 2

    .line 152
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->W()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/r9;->a(Lcom/android/tools/r8/graph/A2;)Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->X()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, v1, p1}, [Ljava/lang/String;

    move-result-object p1

    .line 155
    const-string v0, "CfInvoke"

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ha;)V
    .locals 1

    .line 156
    new-instance v0, Lcom/android/tools/r8/internal/av0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/av0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/i9;)V
    .locals 1

    .line 158
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/i9;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r9;->c(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "CfCheckCast"

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/kb;)V
    .locals 3

    .line 113
    const-string v0, "cf"

    const-string v1, "code"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    const-string v1, "CfStackInstruction"

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kb;->V()Lcom/android/tools/r8/internal/kb$a;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".Opcode."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/pa;)V
    .locals 2

    .line 180
    iget-object v0, p1, Lcom/android/tools/r8/internal/pa;->d:Lcom/android/tools/r8/internal/Kw0;

    .line 181
    iget p1, p1, Lcom/android/tools/r8/internal/pa;->c:I

    .line 182
    const-string v1, "CfLoad"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Kw0;I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/q9;)V
    .locals 3

    .line 128
    const-string v0, "ir"

    const-string v1, "code"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    const-string v1, "Cmp"

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v1, p1, Lcom/android/tools/r8/internal/q9;->c:Lcom/android/tools/r8/internal/re;

    .line 130
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".Bias."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    iget-object p1, p1, Lcom/android/tools/r8/internal/q9;->d:Lcom/android/tools/r8/internal/T10;

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r9;->a(Lcom/android/tools/r8/internal/T10;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    .line 133
    const-string v0, "CfCmp"

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ra;)V
    .locals 4

    .line 134
    const-string v0, "cf"

    const-string v1, "code"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    const-string v1, "CfLogicalBinop"

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 135
    iget-object v2, p1, Lcom/android/tools/r8/internal/ra;->c:Lcom/android/tools/r8/internal/qa;

    .line 136
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".Opcode."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ra;->V()Lcom/android/tools/r8/internal/T10;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r9;->a(Lcom/android/tools/r8/internal/T10;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/sa;)V
    .locals 1

    .line 123
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/sa;->V()Lcom/android/tools/r8/internal/XX;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r9;->a(Lcom/android/tools/r8/internal/XX;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "CfMonitor"

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/t9;)V
    .locals 1

    .line 120
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/t9;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r9;->c(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "CfConstClass"

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ta;)V
    .locals 1

    .line 168
    new-instance p1, Lcom/android/tools/r8/internal/av0;

    const-class v0, Lcom/android/tools/r8/internal/ta;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/av0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/u9;)V
    .locals 1

    .line 121
    new-instance p1, Lcom/android/tools/r8/internal/av0;

    const-class v0, Lcom/android/tools/r8/internal/u9;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/av0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/v9;)V
    .locals 1

    .line 191
    new-instance p1, Lcom/android/tools/r8/internal/av0;

    const-class v0, Lcom/android/tools/r8/internal/v9;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/av0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/va;)V
    .locals 1

    .line 139
    iget-object p1, p1, Lcom/android/tools/r8/internal/va;->c:Lcom/android/tools/r8/internal/T10;

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r9;->a(Lcom/android/tools/r8/internal/T10;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "CfNeg"

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/w9;)V
    .locals 1

    .line 192
    new-instance p1, Lcom/android/tools/r8/internal/av0;

    const-class v0, Lcom/android/tools/r8/internal/w9;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/av0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/wa;)V
    .locals 1

    .line 165
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/wa;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r9;->c(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "CfNew"

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/xa;)V
    .locals 1

    .line 166
    iget-object p1, p1, Lcom/android/tools/r8/internal/xa;->c:Lcom/android/tools/r8/graph/M2;

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r9;->c(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "CfNewArray"

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/yb;)V
    .locals 2

    .line 183
    iget-object v0, p1, Lcom/android/tools/r8/internal/yb;->d:Lcom/android/tools/r8/internal/Kw0;

    .line 184
    iget p1, p1, Lcom/android/tools/r8/internal/yb;->c:I

    .line 185
    const-string v1, "CfStore"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Kw0;I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/z9;)V
    .locals 2

    .line 116
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/z9;->V()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/r9;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object p1, p1, Lcom/android/tools/r8/internal/z9;->d:Lcom/android/tools/r8/internal/Kw0;

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r9;->b(Lcom/android/tools/r8/internal/Kw0;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    .line 119
    const-string v0, "CfConstNumber"

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/android/tools/r8/graph/G;)V
    .locals 13

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/r9;->l:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/qd0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qd0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/r9;->o:Lcom/android/tools/r8/internal/qd0;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/r9;->n:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/r9;->p:Z

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    const-string v2, "public static "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    const-string v2, "graph"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "CfCode"

    invoke-virtual {p0, v4, v3}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v3, "DexItemFactory"

    .line 14
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v3, " factory, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "DexMethod"

    .line 17
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v3, " method) {"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v1, p0, Lcom/android/tools/r8/internal/r9;->q:Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W9;

    .line 21
    instance-of v5, v3, Lcom/android/tools/r8/internal/ka;

    if-eqz v5, :cond_0

    .line 22
    check-cast v3, Lcom/android/tools/r8/internal/ka;

    .line 23
    iget-object v5, p0, Lcom/android/tools/r8/internal/r9;->o:Lcom/android/tools/r8/internal/qd0;

    iget-object v6, p0, Lcom/android/tools/r8/internal/r9;->n:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6, v3}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    .line 24
    iget-object v5, p0, Lcom/android/tools/r8/internal/r9;->n:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v5, p0, Lcom/android/tools/r8/internal/r9;->q:Ljava/lang/StringBuilder;

    .line 26
    const-string v6, "CfLabel "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/r9;->c(Lcom/android/tools/r8/internal/ka;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string v3, "cf"

    const-string v6, "code"

    invoke-static {v3, v6}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v3

    const-string v6, "CfLabel"

    invoke-virtual {p0, v6, v3}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 29
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " = new "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "();"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/r9;->q:Ljava/lang/StringBuilder;

    .line 31
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "return new "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string p1, "method.holder,"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget p1, p2, Lcom/android/tools/r8/graph/G;->g:I

    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G;->G0()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string p1, "com"

    const-string v2, "google"

    const-string v3, "common"

    const-string v4, "collect"

    invoke-static {p1, v2, v3, v4}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v5

    const-string v6, "ImmutableList"

    invoke-virtual {p0, v6, v5}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/hC;)Ljava/lang/String;

    move-result-object v5

    .line 40
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v5, ".of("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/W9;

    .line 43
    invoke-virtual {v7, p0}, Lcom/android/tools/r8/internal/W9;->a(Lcom/android/tools/r8/internal/Va;)V

    goto :goto_1

    .line 44
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/r9;->q:Ljava/lang/StringBuilder;

    const-string v7, "),"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-static {p1, v2, v3, v4}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v8

    invoke-virtual {p0, v6, v8}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/hC;)Ljava/lang/String;

    move-result-object v8

    .line 46
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/r9;->p:Z

    .line 48
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G;->I0()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Db;

    .line 49
    iget-object v1, v0, Lcom/android/tools/r8/internal/Db;->c:Ljava/util/List;

    .line 50
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v8, Lcom/android/tools/r8/internal/sr1;

    invoke-direct {v8, p0}, Lcom/android/tools/r8/internal/sr1;-><init>(Lcom/android/tools/r8/internal/r9;)V

    invoke-interface {v1, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v8, ", "

    invoke-static {v8}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 51
    iget-object v9, v0, Lcom/android/tools/r8/internal/Db;->d:Ljava/util/List;

    .line 52
    invoke-interface {v9}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v10, Lcom/android/tools/r8/internal/tr1;

    invoke-direct {v10, p0}, Lcom/android/tools/r8/internal/tr1;-><init>(Lcom/android/tools/r8/internal/r9;)V

    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v9

    invoke-static {v8}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 53
    iget-object v9, v0, Lcom/android/tools/r8/internal/Db;->a:Lcom/android/tools/r8/internal/ka;

    .line 54
    invoke-virtual {p0, v9}, Lcom/android/tools/r8/internal/r9;->c(Lcom/android/tools/r8/internal/ka;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, v0, Lcom/android/tools/r8/internal/Db;->b:Lcom/android/tools/r8/internal/ka;

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/r9;->c(Lcom/android/tools/r8/internal/ka;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {p1, v2, v3, v4}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v10

    invoke-virtual {p0, v6, v10}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/hC;)Ljava/lang/String;

    move-result-object v10

    .line 57
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 58
    invoke-static {p1, v2, v3, v4}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v11

    invoke-virtual {p0, v6, v11}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/hC;)Ljava/lang/String;

    move-result-object v11

    .line 59
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v9, v0, v10, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 60
    const-string v1, "CfTryCatch"

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 61
    :cond_3
    iget-object p2, p0, Lcom/android/tools/r8/internal/r9;->q:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-static {p1, v2, v3, v4}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    invoke-virtual {p0, v6, p1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/hC;)Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".of());"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object p1, p0, Lcom/android/tools/r8/internal/r9;->k:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/tools/r8/internal/r9;->q:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 65
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid attempt to visit the same method twice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final a(Ljava/lang/String;Lcom/android/tools/r8/internal/Kw0;I)V
    .locals 1

    .line 112
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/r9;->b(Lcom/android/tools/r8/internal/Kw0;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 105
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/r9;->p:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/tools/r8/internal/r9;->q:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/r9;->p:Z

    .line 108
    iget-object v0, p0, Lcom/android/tools/r8/internal/r9;->q:Ljava/lang/StringBuilder;

    const-string v1, "new "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, "cf"

    const-string v2, "code"

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object p1, p0, Lcom/android/tools/r8/internal/r9;->q:Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    sget-object v0, Lcom/android/tools/r8/internal/zq0$a;->b:Lcom/android/tools/r8/internal/zq0$a;

    const-string v1, ", "

    invoke-static {p1, p2, v1, v0}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;Lcom/android/tools/r8/internal/zq0$a;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/G9;)Ljava/lang/String;
    .locals 6

    .line 10
    iget-object v0, p1, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    .line 11
    invoke-interface {v0}, Lcom/android/tools/r8/internal/jG;->keySet()Lcom/android/tools/r8/internal/qI;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object p1, p1, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    .line 13
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jG;->values()Lcom/android/tools/r8/internal/w30;

    move-result-object p1

    new-instance v2, Lcom/android/tools/r8/internal/vr1;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/vr1;-><init>(Lcom/android/tools/r8/internal/r9;)V

    invoke-static {v1, p1, v2}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/lang/Iterable;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object p1

    .line 14
    const-string v1, "fastutil"

    const-string v2, "ints"

    const-string v3, "it"

    const-string v4, "unimi"

    const-string v5, "dsi"

    invoke-static {v3, v4, v5, v1, v2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    const-string v2, "Int2ObjectAVLTreeMap"

    invoke-virtual {p0, v2, v1}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/hC;)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/r9;->i()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<>(new int[] {"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "},new "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[] { "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " })"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/Kw0;)Ljava/lang/String;
    .locals 2

    .line 2
    const-string v0, "ir"

    const-string v1, "code"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    const-string v1, "ValueType"

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/YV;)Ljava/lang/String;
    .locals 2

    .line 4
    const-string v0, "ir"

    const-string v1, "code"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    const-string v1, "MemberType"

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/jy;)Ljava/lang/String;
    .locals 3

    .line 16
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/r9;->i()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".oneWord()"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 18
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/r9;->i()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".twoWord()"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 20
    :cond_1
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/r9;->i()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".uninitializedThis()"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 22
    :cond_2
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->y()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/r9;->i()Ljava/lang/String;

    move-result-object p1

    .line 24
    const-string v0, "cf"

    const-string v1, "code"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    const-string v1, "CfLabel"

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".uninitializedNew(new "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "())"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 26
    :cond_3
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 27
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->r()Z

    move-result v0

    const-string v1, "."

    if-eqz v0, :cond_4

    .line 28
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/r9;->i()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->e()Lcom/android/tools/r8/internal/Gx0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Gx0;->J()Lcom/android/tools/r8/internal/Gx0;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/z70;->getTypeName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "HighType()"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 30
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/r9;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->asPrimitive()Lcom/android/tools/r8/internal/z70;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/z70;->getTypeName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Type()"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 31
    :cond_5
    sget-boolean v0, Lcom/android/tools/r8/internal/r9;->s:Z

    if-nez v0, :cond_7

    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->F()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_0
    if-nez v0, :cond_9

    .line 32
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->B()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unexpected InitializedNonNullReferenceTypeWithInterfaces in CfFrame"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 33
    :cond_9
    :goto_1
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->d()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 34
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/r9;->i()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".nullType()"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a
    if-nez v0, :cond_c

    .line 35
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->m()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 36
    :cond_c
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/r9;->i()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->b()Lcom/android/tools/r8/internal/DD;

    move-result-object p1

    .line 38
    iget-object p1, p1, Lcom/android/tools/r8/internal/DD;->c:Lcom/android/tools/r8/graph/M2;

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r9;->c(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".initializedNonNullReference("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/ka;)V
    .locals 2

    .line 6
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/r9;->p:Z

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/r9;->q:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/r9;->p:Z

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/r9;->q:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/r9;->c(Lcom/android/tools/r8/internal/ka;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/r9;->r:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "factory."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/r9;->m:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {p1}, Lcom/android/tools/r8/internal/r9;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "factory.createType("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/internal/G9;)Ljava/lang/String;
    .locals 4

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/ur1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/ur1;-><init>(Lcom/android/tools/r8/internal/r9;)V

    const-string v1, ","

    invoke-static {v1, p1, v0}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/lang/Iterable;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object p1

    .line 9
    const-string v0, "java"

    const-string v1, "util"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    const-string v3, "ArrayDeque"

    invoke-virtual {p0, v3, v2}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/hC;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    const-string v1, "Arrays"

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/hC;)Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<>("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".asList("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "))"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/internal/ka;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/r9;->o:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "label"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CfThrow"

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final f()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CfConstNull"

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final g()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CfReturnVoid"

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final h()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CfArrayLength"

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    const-string v0, "code"

    const-string v1, "frame"

    const-string v2, "cf"

    invoke-static {v2, v0, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    const-string v1, "FrameType"

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/r9;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/r9;->j:Ljava/util/HashSet;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/r9;->j:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/android/tools/r8/internal/Jo1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Jo1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/r9;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public m()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/r9;->m:Ljava/util/HashSet;

    return-object v0
.end method
