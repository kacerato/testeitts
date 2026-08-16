.class public final Lcom/android/tools/r8/internal/VL;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/util/List;

.field public static final e:Ljava/util/LinkedHashMap;


# instance fields
.field public final a:[Ljava/lang/String;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 46

    const/16 v0, 0x6b

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v0, 0x6f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v0, 0x74

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/16 v0, 0x6c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v0, 0x69

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    const/16 v0, 0x6e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Character;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/bf;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    const/16 v6, 0x3e

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/tools/r8/internal/Ze;->a(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/ny;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/Any"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "/Nothing"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "/Unit"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "/Throwable"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "/Number"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "/Byte"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "/Double"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "/Float"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "/Int"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "/Long"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "/Short"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v1, "/Boolean"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v1, "/Char"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v1, "/CharSequence"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v1, "/String"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v1, "/Comparable"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v1, "/Enum"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v1, "/Array"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v1, "/ByteArray"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v1, "/DoubleArray"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v1, "/FloatArray"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v1, "/IntArray"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v1, "/LongArray"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v1, "/ShortArray"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v1, "/BooleanArray"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v1, "/CharArray"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v1, "/Cloneable"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v1, "/Annotation"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v1, "/collections/Iterable"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v1, "/collections/MutableIterable"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v1, "/collections/Collection"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v1, "/collections/MutableCollection"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v1, "/collections/List"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v1, "/collections/MutableList"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v1, "/collections/Set"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string v1, "/collections/MutableSet"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v1, "/collections/Map"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const-string v1, "/collections/MutableMap"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const-string v1, "/collections/Map.Entry"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const-string v1, "/collections/MutableMap.MutableEntry"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    const-string v1, "/collections/Iterator"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    const-string v1, "/collections/MutableIterator"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    const-string v1, "/collections/ListIterator"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    const-string v1, "/collections/MutableListIterator"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    filled-new-array/range {v2 .. v45}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/bf;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/VL;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/android/tools/r8/internal/Ze;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/pD;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/uV;->a(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pD;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v1, v0

    check-cast v1, Lcom/android/tools/r8/internal/qD;

    iget-object v3, v1, Lcom/android/tools/r8/internal/qD;->b:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/qD;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/oD;

    iget-object v3, v1, Lcom/android/tools/r8/internal/oD;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v1, v1, Lcom/android/tools/r8/internal/oD;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sput-object v2, Lcom/android/tools/r8/internal/VL;->e:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nM;[Ljava/lang/String;)V
    .locals 6

    iget-object v0, p1, Lcom/android/tools/r8/internal/nM;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/Yt;->b:Lcom/android/tools/r8/internal/Yt;

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/uV;->a(I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "singleton(...)"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/android/tools/r8/internal/Yt;->b:Lcom/android/tools/r8/internal/Yt;

    :goto_1
    iget-object p1, p1, Lcom/android/tools/r8/internal/nM;->c:Ljava/util/List;

    const-string v1, "getRecordList(...)"

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/mM;

    iget v4, v3, Lcom/android/tools/r8/internal/mM;->d:I

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/VL;->a:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/tools/r8/internal/VL;->b:Ljava/util/Set;

    iput-object v1, p0, Lcom/android/tools/r8/internal/VL;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/android/tools/r8/internal/VL;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/mM;

    iget v1, v0, Lcom/android/tools/r8/internal/mM;->c:I

    and-int/lit8 v2, v1, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    iget-object p1, v0, Lcom/android/tools/r8/internal/mM;->f:Ljava/lang/Object;

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/l8;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/l8;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v1, v0, Lcom/android/tools/r8/internal/mM;->f:Ljava/lang/Object;

    :cond_1
    move-object p1, v1

    goto :goto_0

    :cond_2
    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    sget-object v1, Lcom/android/tools/r8/internal/VL;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    iget v4, v0, Lcom/android/tools/r8/internal/mM;->e:I

    if-ltz v4, :cond_3

    if-ge v4, v2, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/VL;->a:[Ljava/lang/String;

    aget-object p1, v1, p1

    :goto_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/mM;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "substring(...)"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lt v1, v3, :cond_4

    iget-object v1, v0, Lcom/android/tools/r8/internal/mM;->h:Ljava/util/List;

    invoke-static {v1}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ltz v7, :cond_4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gt v7, v8, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v7, v8, :cond_4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    iget-object v1, v0, Lcom/android/tools/r8/internal/mM;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v3, :cond_5

    iget-object v1, v0, Lcom/android/tools/r8/internal/mM;->j:Ljava/util/List;

    invoke-static {v1}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-char v1, v1

    invoke-static {p1, v4, v1}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p1

    :cond_5
    iget-object v0, v0, Lcom/android/tools/r8/internal/mM;->g:Lcom/android/tools/r8/internal/lM;

    if-nez v0, :cond_6

    sget-object v0, Lcom/android/tools/r8/internal/lM;->c:Lcom/android/tools/r8/internal/lM;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_a

    const/16 v1, 0x2e

    const/16 v4, 0x24

    if-eq v0, v5, :cond_9

    if-ne v0, v3, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v3, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    invoke-static {p1, v4, v1}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_8
    new-instance p1, Lcom/android/tools/r8/internal/C00;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/C00;-><init>()V

    throw p1

    :cond_9
    invoke-static {p1}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-static {p1, v4, v1}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p1

    :cond_a
    :goto_1
    invoke-static {p1}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    return-object p1
.end method
