.class public LJAVARuntime/OHString;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/SumOperator;
.implements LJAVARuntime/SubOperator;
.implements LJAVARuntime/DivOperator;
.implements LJAVARuntime/SumEqualOperator;
.implements LJAVARuntime/SubEqualOperator;
.implements LJAVARuntime/DivEqualOperator;
.implements LJAVARuntime/EqualsComparator;
.implements LJAVARuntime/GreaterThanComparator;
.implements LJAVARuntime/LessThanComparator;
.implements LJAVARuntime/RemoveRemoveOperator;


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Buffers"
    }
.end annotation


# instance fields
.field public transient ohString:LAc/b;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, LAc/b;

    invoke-direct {v0}, LAc/b;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/OHString;-><init>(LAc/b;)V

    return-void
.end method

.method public constructor <init>(LAc/b;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ohString"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    .line 4
    invoke-virtual {p1, p0}, LAc/b;->y0(LJAVARuntime/OHString;)V

    return-void
.end method

.method public constructor <init>(LJAVARuntime/OHString;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 8
    new-instance v0, LAc/b;

    iget-object p1, p1, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-direct {v0, p1}, LAc/b;-><init>(LAc/b;)V

    invoke-direct {p0, v0}, LJAVARuntime/OHString;-><init>(LAc/b;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 6
    new-instance v0, LAc/b;

    invoke-direct {v0, p1}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, LJAVARuntime/OHString;-><init>(LAc/b;)V

    return-void
.end method

.method public constructor <init>([C)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 7
    new-instance v0, LAc/b;

    invoke-direct {v0, p1}, LAc/b;-><init>([C)V

    invoke-direct {p0, v0}, LJAVARuntime/OHString;-><init>(LAc/b;)V

    return-void
.end method

.method public static isNull(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public concat(LJAVARuntime/OHString;)LJAVARuntime/OHString;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    iget-object p1, p1, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1}, LAc/b;->L(LAc/b;)LAc/b;

    move-result-object p1

    invoke-virtual {p1}, LAc/b;->J0()LJAVARuntime/OHString;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "str can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public concat(Ljava/lang/String;)LJAVARuntime/OHString;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1}, LAc/b;->M(Ljava/lang/String;)LAc/b;

    move-result-object p1

    invoke-virtual {p1}, LAc/b;->J0()LJAVARuntime/OHString;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "str can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public concatAtStart(LJAVARuntime/OHString;)LJAVARuntime/OHString;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    iget-object p1, p1, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1}, LAc/b;->N(LAc/b;)LAc/b;

    move-result-object p1

    invoke-virtual {p1}, LAc/b;->J0()LJAVARuntime/OHString;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "str can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public concatAtStart(Ljava/lang/String;)LJAVARuntime/OHString;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1}, LAc/b;->O(Ljava/lang/String;)LAc/b;

    move-result-object p1

    invoke-virtual {p1}, LAc/b;->J0()LJAVARuntime/OHString;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "str can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public concatLocal(LJAVARuntime/OHString;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    iget-object p1, p1, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1}, LAc/b;->P(LAc/b;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "str can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public concatLocal(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1}, LAc/b;->Q(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "str can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public concatLocalAtStart(LJAVARuntime/OHString;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    iget-object p1, p1, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1}, LAc/b;->S(LAc/b;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "str can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public concatLocalAtStart(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1}, LAc/b;->T(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "str can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public contains(LJAVARuntime/OHString;)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    iget-object p1, p1, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1}, LAc/b;->U(LAc/b;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "str can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1}, LAc/b;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "str can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copy()LJAVARuntime/OHString;
    .locals 1

    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0}, LAc/b;->I()LAc/b;

    move-result-object v0

    invoke-virtual {v0}, LAc/b;->J0()LJAVARuntime/OHString;

    move-result-object v0

    return-object v0
.end method

.method public div(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    instance-of v0, p1, LJAVARuntime/OHString;

    if-eqz v0, :cond_0

    check-cast p1, LJAVARuntime/OHString;

    invoke-virtual {p0, p1}, LJAVARuntime/OHString;->split(LJAVARuntime/OHString;)[LJAVARuntime/OHString;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LJAVARuntime/OHString;->split(Ljava/lang/String;)[LJAVARuntime/OHString;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator / is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public divEqual(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    new-instance p1, LJAVARuntime/IllegalOperatorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The operator /= is undefined for the type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(LJAVARuntime/OHString;)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    iget-object p1, p1, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1}, LAc/b;->W(LAc/b;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    .line 3
    instance-of v0, p1, LJAVARuntime/OHString;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, LJAVARuntime/OHString;

    .line 5
    invoke-virtual {p0, p1}, LJAVARuntime/OHString;->equals(LJAVARuntime/OHString;)Z

    move-result p1

    return p1

    .line 6
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    invoke-virtual {p0, p1}, LJAVARuntime/OHString;->equals(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 9
    :cond_1
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator == is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1}, LAc/b;->X(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public equalsIgnoreCase(LJAVARuntime/OHString;)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    iget-object p1, p1, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1}, LAc/b;->Y(LAc/b;)Z

    move-result p1

    return p1
.end method

.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1}, LAc/b;->Z(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public greaterOrEqualsThan(D)Z
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, LJAVARuntime/OHString;->length()I

    move-result v0

    int-to-double v0, v0

    cmpl-double p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public greaterOrEqualsThan(F)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, LJAVARuntime/OHString;->length()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public greaterOrEqualsThan(I)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, LJAVARuntime/OHString;->length()I

    move-result v0

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public greaterOrEqualsThan(J)Z
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, LJAVARuntime/OHString;->length()I

    move-result v0

    int-to-long v0, v0

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public greaterOrEqualsThan(Ljava/lang/Object;)Z
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    .line 1
    instance-of v0, p1, LJAVARuntime/OHString;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, LJAVARuntime/OHString;

    .line 3
    invoke-virtual {p0}, LJAVARuntime/OHString;->length()I

    move-result v0

    invoke-virtual {p1}, LJAVARuntime/OHString;->length()I

    move-result p1

    if-lt v0, p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 4
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, LJAVARuntime/OHString;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lt v0, p1, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 7
    :cond_3
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator >= is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greaterThan(D)Z
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, LJAVARuntime/OHString;->length()I

    move-result v0

    int-to-double v0, v0

    cmpl-double p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public greaterThan(F)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, LJAVARuntime/OHString;->length()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public greaterThan(I)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, LJAVARuntime/OHString;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public greaterThan(J)Z
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, LJAVARuntime/OHString;->length()I

    move-result v0

    int-to-long v0, v0

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public greaterThan(Ljava/lang/Object;)Z
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    .line 1
    instance-of v0, p1, LJAVARuntime/OHString;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, LJAVARuntime/OHString;

    .line 3
    invoke-virtual {p0}, LJAVARuntime/OHString;->length()I

    move-result v0

    invoke-virtual {p1}, LJAVARuntime/OHString;->length()I

    move-result p1

    if-le v0, p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 4
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, LJAVARuntime/OHString;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le v0, p1, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 7
    :cond_3
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator > is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0}, LAc/b;->g0()Z

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0}, Lvc/i;->capacity()I

    move-result v0

    return v0
.end method

.method public lessOrEqualsThan(D)Z
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, LJAVARuntime/OHString;->length()I

    move-result v0

    int-to-double v0, v0

    cmpg-double p1, v0, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public lessOrEqualsThan(F)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, LJAVARuntime/OHString;->length()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public lessOrEqualsThan(I)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, LJAVARuntime/OHString;->length()I

    move-result v0

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public lessOrEqualsThan(J)Z
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, LJAVARuntime/OHString;->length()I

    move-result v0

    int-to-long v0, v0

    cmp-long p1, v0, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public lessOrEqualsThan(Ljava/lang/Object;)Z
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    .line 1
    instance-of v0, p1, LJAVARuntime/OHString;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, LJAVARuntime/OHString;

    .line 3
    invoke-virtual {p0}, LJAVARuntime/OHString;->length()I

    move-result v0

    invoke-virtual {p1}, LJAVARuntime/OHString;->length()I

    move-result p1

    if-gt v0, p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 4
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, LJAVARuntime/OHString;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gt v0, p1, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 7
    :cond_3
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator <= is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lessThan(D)Z
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, LJAVARuntime/OHString;->length()I

    move-result v0

    int-to-double v0, v0

    cmpg-double p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public lessThan(F)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, LJAVARuntime/OHString;->length()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public lessThan(I)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, LJAVARuntime/OHString;->length()I

    move-result v0

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public lessThan(J)Z
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, LJAVARuntime/OHString;->length()I

    move-result v0

    int-to-long v0, v0

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public lessThan(Ljava/lang/Object;)Z
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    .line 1
    instance-of v0, p1, LJAVARuntime/OHString;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, LJAVARuntime/OHString;

    .line 3
    invoke-virtual {p0}, LJAVARuntime/OHString;->length()I

    move-result v0

    invoke-virtual {p1}, LJAVARuntime/OHString;->length()I

    move-result p1

    if-ge v0, p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 4
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, LJAVARuntime/OHString;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v0, p1, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 7
    :cond_3
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator < is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notEquals(Ljava/lang/Object;)Z
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    instance-of v0, p1, LJAVARuntime/OHString;

    if-eqz v0, :cond_0

    check-cast p1, LJAVARuntime/OHString;

    invoke-virtual {p0, p1}, LJAVARuntime/OHString;->equals(LJAVARuntime/OHString;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LJAVARuntime/OHString;->equals(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator != is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pointerEquals(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeRemove()V
    .locals 2

    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0}, Lvc/i;->capacity()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0}, Lvc/i;->capacity()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, LJAVARuntime/OHString;->subString(II)LJAVARuntime/OHString;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Can\'t -- on a empty string"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public replace(LJAVARuntime/OHString;LJAVARuntime/OHString;)LJAVARuntime/OHString;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str",
            "replacement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "replacement"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 4
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    iget-object p1, p1, LJAVARuntime/OHString;->ohString:LAc/b;

    iget-object p2, p2, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1, p2}, LAc/b;->j0(LAc/b;LAc/b;)LAc/b;

    move-result-object p1

    invoke-virtual {p1}, LAc/b;->J0()LJAVARuntime/OHString;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "replacement can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "str can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;)LJAVARuntime/OHString;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str",
            "replacement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "replacement"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1, p2}, LAc/b;->k0(Ljava/lang/String;Ljava/lang/String;)LAc/b;

    move-result-object p1

    invoke-virtual {p1}, LAc/b;->J0()LJAVARuntime/OHString;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "replacement can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "str can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public replaceLocal(LJAVARuntime/OHString;LJAVARuntime/OHString;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str",
            "replacement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "replacement"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 4
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    iget-object p1, p1, LJAVARuntime/OHString;->ohString:LAc/b;

    iget-object p2, p2, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1, p2}, LAc/b;->l0(LAc/b;LAc/b;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "replacement can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "str can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public replaceLocal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str",
            "replacement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "replacement"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1, p2}, LAc/b;->m0(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "replacement can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "str can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(C)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 11
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1}, LAc/b;->o0(C)V

    return-void
.end method

.method public set(D)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 8
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1, p2}, LAc/b;->p0(D)V

    return-void
.end method

.method public set(F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 5
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1}, LAc/b;->q0(F)V

    return-void
.end method

.method public set(I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 6
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1}, LAc/b;->r0(I)V

    return-void
.end method

.method public set(J)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 9
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1, p2}, LAc/b;->s0(J)V

    return-void
.end method

.method public set(LJAVARuntime/OHString;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    iget-object p1, p1, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1}, LAc/b;->t0(LAc/b;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "str can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1}, LAc/b;->u0(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "str can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(S)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 10
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1}, LAc/b;->v0(S)V

    return-void
.end method

.method public set(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 7
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1}, LAc/b;->w0(Z)V

    return-void
.end method

.method public set([CII)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "chars",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "chars",
            "offset",
            "length"
        }
    .end annotation

    .line 12
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1, p2, p3}, LAc/b;->x0([CII)V

    return-void
.end method

.method public split(LJAVARuntime/OHString;)[LJAVARuntime/OHString;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    iget-object p1, p1, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1}, LAc/b;->C0(LAc/b;)[LJAVARuntime/OHString;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "str can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public split(Ljava/lang/String;)[LJAVARuntime/OHString;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1}, LAc/b;->D0(Ljava/lang/String;)[LJAVARuntime/OHString;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "str can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startsWith(LJAVARuntime/OHString;)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    iget-object p1, p1, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1}, LAc/b;->F0(LAc/b;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "str can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1}, LAc/b;->G0(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "str can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sub(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    instance-of v0, p1, LJAVARuntime/OHString;

    if-eqz v0, :cond_0

    check-cast p1, LJAVARuntime/OHString;

    new-instance v0, LJAVARuntime/OHString;

    invoke-direct {v0}, LJAVARuntime/OHString;-><init>()V

    invoke-virtual {p0, p1, v0}, LJAVARuntime/OHString;->replace(LJAVARuntime/OHString;LJAVARuntime/OHString;)LJAVARuntime/OHString;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, LJAVARuntime/OHString;->replace(Ljava/lang/String;Ljava/lang/String;)LJAVARuntime/OHString;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator - is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public subEqual(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    instance-of v0, p1, LJAVARuntime/OHString;

    if-eqz v0, :cond_0

    check-cast p1, LJAVARuntime/OHString;

    new-instance v0, LJAVARuntime/OHString;

    invoke-direct {v0}, LJAVARuntime/OHString;-><init>()V

    invoke-virtual {p0, p1, v0}, LJAVARuntime/OHString;->replaceLocal(LJAVARuntime/OHString;LJAVARuntime/OHString;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, LJAVARuntime/OHString;->replaceLocal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator -= is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public subString(I)LJAVARuntime/OHString;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "startIdx"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startIdx"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1}, LAc/b;->H0(I)LAc/b;

    move-result-object p1

    invoke-virtual {p1}, LAc/b;->J0()LJAVARuntime/OHString;

    move-result-object p1

    return-object p1
.end method

.method public subString(II)LJAVARuntime/OHString;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "startIdx",
            "endIdx"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startIdx",
            "endIndex"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1, p2}, LAc/b;->I0(II)LAc/b;

    move-result-object p1

    invoke-virtual {p1}, LAc/b;->J0()LJAVARuntime/OHString;

    move-result-object p1

    return-object p1
.end method

.method public subStringLocal(I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "startIdx"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startIdx"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1}, LAc/b;->D(I)V

    return-void
.end method

.method public subStringLocal(II)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "startIdx",
            "endIdx"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startIdx",
            "endIndex"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0, p1, p2}, LAc/b;->E(II)V

    return-void
.end method

.method public sum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    instance-of v0, p1, LJAVARuntime/OHString;

    if-eqz v0, :cond_0

    check-cast p1, LJAVARuntime/OHString;

    invoke-virtual {p0, p1}, LJAVARuntime/OHString;->concat(LJAVARuntime/OHString;)LJAVARuntime/OHString;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LJAVARuntime/OHString;->concat(Ljava/lang/String;)LJAVARuntime/OHString;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator + is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sumEqual(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    instance-of v0, p1, LJAVARuntime/OHString;

    if-eqz v0, :cond_0

    check-cast p1, LJAVARuntime/OHString;

    invoke-virtual {p0, p1}, LJAVARuntime/OHString;->concatLocal(LJAVARuntime/OHString;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LJAVARuntime/OHString;->concatLocal(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator += is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trim()LJAVARuntime/OHString;
    .locals 1

    iget-object v0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    invoke-virtual {v0}, LAc/b;->L0()LAc/b;

    move-result-object v0

    invoke-virtual {v0}, LAc/b;->J0()LJAVARuntime/OHString;

    move-result-object v0

    return-object v0
.end method
