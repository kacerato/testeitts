.class public final Lcom/android/tools/r8/internal/Tb0;
.super Lcom/android/tools/r8/internal/Zb0;
.source "SourceFile"


# static fields
.field public static final synthetic H:Z = true


# instance fields
.field public final E:Lcom/android/tools/r8/graph/l1;

.field public final F:I

.field public final G:Lcom/android/tools/r8/graph/l1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/graph/l1;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Zb0;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/tools/r8/internal/Tb0;->E:Lcom/android/tools/r8/graph/l1;

    .line 11
    iput p1, p0, Lcom/android/tools/r8/internal/Tb0;->F:I

    .line 12
    iput-object p2, p0, Lcom/android/tools/r8/internal/Tb0;->G:Lcom/android/tools/r8/graph/l1;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/l1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Zb0;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/tools/r8/internal/Tb0;->E:Lcom/android/tools/r8/graph/l1;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/Tb0;->F:I

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/internal/Tb0;->G:Lcom/android/tools/r8/graph/l1;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Zb0;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/android/tools/r8/internal/Tb0;->E:Lcom/android/tools/r8/graph/l1;

    const/4 p2, -0x1

    .line 7
    iput p2, p0, Lcom/android/tools/r8/internal/Tb0;->F:I

    .line 8
    iput-object p1, p0, Lcom/android/tools/r8/internal/Tb0;->G:Lcom/android/tools/r8/graph/l1;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    const-class v0, Lcom/android/tools/r8/internal/Tb0;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tb0;->E:Lcom/android/tools/r8/graph/l1;

    const-string v1, ", instance field="

    const-string v2, ")"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->j0()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/tools/r8/internal/Tb0;->G:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/l1;->j0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MissingInstanceFieldValueForEnumInstance(enum field="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/Tb0;->F:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tb0;->G:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->j0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MissingInstanceFieldValueForEnumInstance(Cannot resolve instance field="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    sget-boolean v3, Lcom/android/tools/r8/internal/Tb0;->H:Z

    if-nez v3, :cond_3

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/Tb0;->G:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/l1;->j0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MissingInstanceFieldValueForEnumInstance(ordinal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
