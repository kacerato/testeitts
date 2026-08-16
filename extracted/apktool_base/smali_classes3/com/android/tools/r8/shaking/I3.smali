.class public Lcom/android/tools/r8/shaking/I3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->a:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->b:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->c:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->d:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->e:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->f:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->g:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->h:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->i:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->j:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->k:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->l:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->m:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->n:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->o:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->p:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->q:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->r:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->s:Z

    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/android/tools/r8/shaking/I3;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/tools/r8/shaking/I3;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/android/tools/r8/shaking/I3;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/I3;-><init>()V

    .line 29
    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->a:Z

    const-string v2, "SourceFile"

    invoke-static {v1, v2, p0}, Lcom/android/tools/r8/shaking/I3;->a(ZLjava/lang/String;Ljava/util/List;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->a:Z

    .line 30
    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->b:Z

    const-string v2, "SourceDir"

    invoke-static {v1, v2, p0}, Lcom/android/tools/r8/shaking/I3;->a(ZLjava/lang/String;Ljava/util/List;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->b:Z

    .line 31
    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->c:Z

    const-string v2, "InnerClasses"

    invoke-static {v1, v2, p0}, Lcom/android/tools/r8/shaking/I3;->a(ZLjava/lang/String;Ljava/util/List;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->c:Z

    .line 32
    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->d:Z

    const-string v2, "EnclosingMethod"

    invoke-static {v1, v2, p0}, Lcom/android/tools/r8/shaking/I3;->a(ZLjava/lang/String;Ljava/util/List;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->d:Z

    .line 33
    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->h:Z

    const-string v2, "LocalVariableTypeTable"

    invoke-static {v1, v2, p0}, Lcom/android/tools/r8/shaking/I3;->a(ZLjava/lang/String;Ljava/util/List;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->h:Z

    .line 34
    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->f:Z

    const-string v2, "Exceptions"

    invoke-static {v1, v2, p0}, Lcom/android/tools/r8/shaking/I3;->a(ZLjava/lang/String;Ljava/util/List;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->f:Z

    .line 35
    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->i:Z

    const-string v2, "MethodParameters"

    invoke-static {v1, v2, p0}, Lcom/android/tools/r8/shaking/I3;->a(ZLjava/lang/String;Ljava/util/List;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->i:Z

    .line 36
    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->e:Z

    const-string v2, "Signature"

    invoke-static {v1, v2, p0}, Lcom/android/tools/r8/shaking/I3;->a(ZLjava/lang/String;Ljava/util/List;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->e:Z

    .line 37
    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->j:Z

    const-string v2, "SourceDebugExtension"

    invoke-static {v1, v2, p0}, Lcom/android/tools/r8/shaking/I3;->a(ZLjava/lang/String;Ljava/util/List;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->j:Z

    .line 38
    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->k:Z

    const-string v2, "RuntimeVisibleAnnotations"

    invoke-static {v1, v2, p0}, Lcom/android/tools/r8/shaking/I3;->a(ZLjava/lang/String;Ljava/util/List;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->k:Z

    .line 39
    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->l:Z

    const-string v2, "RuntimeInvisibleAnnotations"

    invoke-static {v1, v2, p0}, Lcom/android/tools/r8/shaking/I3;->a(ZLjava/lang/String;Ljava/util/List;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->l:Z

    .line 40
    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->m:Z

    const-string v2, "RuntimeVisibleParameterAnnotations"

    invoke-static {v1, v2, p0}, Lcom/android/tools/r8/shaking/I3;->a(ZLjava/lang/String;Ljava/util/List;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->m:Z

    .line 41
    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->n:Z

    const-string v2, "RuntimeInvisibleParameterAnnotations"

    invoke-static {v1, v2, p0}, Lcom/android/tools/r8/shaking/I3;->a(ZLjava/lang/String;Ljava/util/List;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->n:Z

    .line 42
    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->o:Z

    const-string v2, "RuntimeVisibleTypeAnnotations"

    invoke-static {v1, v2, p0}, Lcom/android/tools/r8/shaking/I3;->a(ZLjava/lang/String;Ljava/util/List;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->o:Z

    .line 43
    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->p:Z

    const-string v2, "RuntimeInvisibleTypeAnnotations"

    invoke-static {v1, v2, p0}, Lcom/android/tools/r8/shaking/I3;->a(ZLjava/lang/String;Ljava/util/List;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->p:Z

    .line 44
    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->q:Z

    const-string v2, "AnnotationDefault"

    invoke-static {v1, v2, p0}, Lcom/android/tools/r8/shaking/I3;->a(ZLjava/lang/String;Ljava/util/List;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->q:Z

    .line 45
    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->r:Z

    const-string v2, "StackMapTable"

    invoke-static {v1, v2, p0}, Lcom/android/tools/r8/shaking/I3;->a(ZLjava/lang/String;Ljava/util/List;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->r:Z

    .line 46
    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/I3;->s:Z

    const-string v2, "PermittedSubclasses"

    invoke-static {v1, v2, p0}, Lcom/android/tools/r8/shaking/I3;->a(ZLjava/lang/String;Ljava/util/List;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/tools/r8/shaking/I3;->s:Z

    return-object v0
.end method

.method public static a(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 21
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p0, v0, :cond_6

    add-int/lit8 v0, p0, 0x1

    .line 22
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v3, 0x2a

    if-ne p0, v3, :cond_3

    .line 23
    :goto_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p1, p0, :cond_1

    add-int/lit8 p0, p1, 0x1

    .line 24
    invoke-static {v0, p1, p2, p3}, Lcom/android/tools/r8/shaking/I3;->a(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    move p1, p0

    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-lt v0, p0, :cond_2

    return v2

    :cond_2
    return v1

    .line 26
    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_5

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, p0, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 p1, p1, 0x1

    move p0, v0

    goto :goto_0

    :cond_5
    :goto_2
    return v1

    .line 27
    :cond_6
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    if-ne p1, p0, :cond_7

    return v2

    :cond_7
    return v1
.end method

.method public static a(ZLjava/lang/String;Ljava/util/List;)Z
    .locals 5

    .line 17
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    return v1

    .line 18
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x21

    if-ne v2, v4, :cond_2

    .line 19
    invoke-static {v1, v3, v0, p1}, Lcom/android/tools/r8/shaking/I3;->a(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 20
    :cond_2
    invoke-static {v3, v3, v0, p1}, Lcom/android/tools/r8/shaking/I3;->a(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_3
    :goto_1
    return p0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/shaking/I3;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->a:Z

    .line 2
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->b:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->c:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->d:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->e:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->f:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->g:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->h:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->i:Z

    .line 10
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->j:Z

    .line 11
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->k:Z

    .line 12
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->m:Z

    .line 13
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->o:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->q:Z

    .line 15
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->r:Z

    .line 16
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->s:Z

    return-object p0
.end method

.method public final a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->a:Z

    if-eqz v1, :cond_0

    .line 49
    const-string v1, "SourceFile"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->b:Z

    if-eqz v1, :cond_1

    .line 51
    const-string v1, "SourceDir"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_1
    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->c:Z

    if-eqz v1, :cond_2

    .line 53
    const-string v1, "InnerClasses"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_2
    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->d:Z

    if-eqz v1, :cond_3

    .line 55
    const-string v1, "EnclosingMethod"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_3
    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->e:Z

    if-eqz v1, :cond_4

    .line 57
    const-string v1, "Signature"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_4
    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->f:Z

    if-eqz v1, :cond_5

    .line 59
    const-string v1, "Exceptions"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_5
    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->i:Z

    if-eqz v1, :cond_6

    .line 61
    const-string v1, "MethodParameters"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_6
    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->j:Z

    if-eqz v1, :cond_7

    .line 63
    const-string v1, "SourceDebugExtension"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_7
    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->k:Z

    if-eqz v1, :cond_8

    .line 65
    const-string v1, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_8
    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->l:Z

    if-eqz v1, :cond_9

    .line 67
    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_9
    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->m:Z

    if-eqz v1, :cond_a

    .line 69
    const-string v1, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_a
    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->n:Z

    if-eqz v1, :cond_b

    .line 71
    const-string v1, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_b
    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->o:Z

    if-eqz v1, :cond_c

    .line 73
    const-string v1, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_c
    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->p:Z

    if-eqz v1, :cond_d

    .line 75
    const-string v1, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_d
    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->q:Z

    if-eqz v1, :cond_e

    .line 77
    const-string v1, "AnnotationDefault"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_e
    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->r:Z

    if-eqz v1, :cond_f

    .line 79
    const-string v1, "StackMapTable"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_f
    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->s:Z

    if-eqz v1, :cond_10

    .line 81
    const-string v1, "PermittedSubclasses"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_11

    .line 83
    const-string v1, "-keepattributes "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, ","

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/shaking/I3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/shaking/I3;

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->a:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/shaking/I3;->a:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->b:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/shaking/I3;->b:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->c:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/shaking/I3;->c:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->d:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/shaking/I3;->d:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->e:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/shaking/I3;->e:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->f:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/shaking/I3;->f:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->i:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/shaking/I3;->i:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->j:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/shaking/I3;->j:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->k:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/shaking/I3;->k:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->l:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/shaking/I3;->l:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->m:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/shaking/I3;->m:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->n:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/shaking/I3;->n:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->o:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/shaking/I3;->o:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->p:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/shaking/I3;->p:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->q:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/shaking/I3;->q:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->r:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/shaking/I3;->r:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->s:Z

    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/I3;->s:Z

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/I3;->a:Z

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->b:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->c:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->d:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->e:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x10

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->f:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x20

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->j:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x40

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->k:Z

    if-eqz v1, :cond_6

    const/16 v1, 0x80

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->l:Z

    if-eqz v1, :cond_7

    const/16 v1, 0x100

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->m:Z

    if-eqz v1, :cond_8

    const/16 v1, 0x200

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->n:Z

    if-eqz v1, :cond_9

    const/16 v1, 0x400

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->o:Z

    if-eqz v1, :cond_a

    const/16 v1, 0x800

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->p:Z

    if-eqz v1, :cond_b

    const/16 v1, 0x1000

    goto :goto_b

    :cond_b
    move v1, v2

    :goto_b
    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->q:Z

    if-eqz v1, :cond_c

    const/16 v1, 0x2000

    goto :goto_c

    :cond_c
    move v1, v2

    :goto_c
    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->r:Z

    if-eqz v1, :cond_d

    const/16 v1, 0x4000

    goto :goto_d

    :cond_d
    move v1, v2

    :goto_d
    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->i:Z

    if-eqz v1, :cond_e

    const v1, 0x8000

    goto :goto_e

    :cond_e
    move v1, v2

    :goto_e
    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I3;->s:Z

    if-eqz v1, :cond_f

    const/high16 v2, 0x10000

    :cond_f
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/I3;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
