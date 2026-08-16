.class public final Lcom/android/tools/r8/internal/ug;
.super Lcom/android/tools/r8/internal/yg;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public e:Lcom/android/tools/r8/internal/F1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/F1;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/yg;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ug;->e:Lcom/android/tools/r8/internal/F1;

    sget-boolean p1, Lcom/android/tools/r8/internal/ug;->f:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yg;->u()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Must use BottomPrimitiveTypeParameterState instead"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/tools/r8/internal/ug;->e:Lcom/android/tools/r8/internal/F1;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Must use UnknownParameterState instead"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/Q00;
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object p0, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object p0

    .line 4
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/ug;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/ug;-><init>(Lcom/android/tools/r8/internal/F1;Ljava/util/Set;)V

    return-object v1
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/F1;
    .locals 0

    .line 6
    iget-object p1, p0, Lcom/android/tools/r8/internal/ug;->e:Lcom/android/tools/r8/internal/F1;

    return-object p1
.end method

.method public final a(Ljava/util/function/Supplier;)Lcom/android/tools/r8/internal/yg;
    .locals 2

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/ug;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ug;->e:Lcom/android/tools/r8/internal/F1;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/ug;-><init>(Lcom/android/tools/r8/internal/F1;Ljava/util/Set;)V

    return-object v0
.end method

.method public final e()Lcom/android/tools/r8/internal/ug;
    .locals 0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/ug;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/ug;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ug;->e:Lcom/android/tools/r8/internal/F1;

    iget-object v3, p1, Lcom/android/tools/r8/internal/ug;->e:Lcom/android/tools/r8/internal/F1;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/F1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yg;->s()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/yg;->s()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/ug;->e:Lcom/android/tools/r8/internal/F1;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yg;->s()Ljava/util/Set;

    move-result-object v1

    const-class v2, Lcom/android/tools/r8/internal/ug;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final q()Lcom/android/tools/r8/internal/B7;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/x7;->b:Lcom/android/tools/r8/internal/x7;

    return-object v0
.end method

.method public final r()Lcom/android/tools/r8/internal/iw0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/hw0;->b:Lcom/android/tools/r8/internal/hw0;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/ug;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yg;->t()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ug;->e:Lcom/android/tools/r8/internal/F1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrimitiveState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ug;->e:Lcom/android/tools/r8/internal/F1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/internal/A7;

    return v0
.end method

.method public final w()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ug;->e:Lcom/android/tools/r8/internal/F1;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v0

    return v0
.end method
