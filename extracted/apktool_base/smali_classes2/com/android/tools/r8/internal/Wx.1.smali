.class public abstract Lcom/android/tools/r8/internal/Wx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/EnumMap;

.field public static final b:Ljava/util/EnumMap;

.field public static final synthetic c:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/tools/r8/internal/lg0;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/android/tools/r8/internal/Wx;->a:Ljava/util/EnumMap;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/tools/r8/internal/Qf0;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/android/tools/r8/internal/Wx;->b:Ljava/util/EnumMap;

    sget-object v0, Lcom/android/tools/r8/internal/lg0;->e:Lcom/android/tools/r8/internal/lg0;

    sget-object v1, Lcom/android/tools/r8/internal/Qf0;->c:Lcom/android/tools/r8/internal/Qf0;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    sget-object v0, Lcom/android/tools/r8/internal/lg0;->f:Lcom/android/tools/r8/internal/lg0;

    sget-object v1, Lcom/android/tools/r8/internal/Qf0;->d:Lcom/android/tools/r8/internal/Qf0;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    sget-object v0, Lcom/android/tools/r8/internal/lg0;->j:Lcom/android/tools/r8/internal/lg0;

    sget-object v1, Lcom/android/tools/r8/internal/Qf0;->e:Lcom/android/tools/r8/internal/Qf0;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    sget-object v1, Lcom/android/tools/r8/internal/lg0;->l:Lcom/android/tools/r8/internal/lg0;

    sget-object v2, Lcom/android/tools/r8/internal/Qf0;->f:Lcom/android/tools/r8/internal/Qf0;

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    sget-object v3, Lcom/android/tools/r8/internal/lg0;->m:Lcom/android/tools/r8/internal/lg0;

    sget-object v4, Lcom/android/tools/r8/internal/Qf0;->g:Lcom/android/tools/r8/internal/Qf0;

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    sget-object v3, Lcom/android/tools/r8/internal/lg0;->q:Lcom/android/tools/r8/internal/lg0;

    sget-object v4, Lcom/android/tools/r8/internal/Qf0;->h:Lcom/android/tools/r8/internal/Qf0;

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    sget-object v3, Lcom/android/tools/r8/internal/lg0;->r:Lcom/android/tools/r8/internal/lg0;

    sget-object v4, Lcom/android/tools/r8/internal/Qf0;->i:Lcom/android/tools/r8/internal/Qf0;

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    sget-object v3, Lcom/android/tools/r8/internal/lg0;->s:Lcom/android/tools/r8/internal/lg0;

    sget-object v5, Lcom/android/tools/r8/internal/Qf0;->j:Lcom/android/tools/r8/internal/Qf0;

    invoke-static {v3, v5}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    sget-object v3, Lcom/android/tools/r8/internal/lg0;->t:Lcom/android/tools/r8/internal/lg0;

    sget-object v6, Lcom/android/tools/r8/internal/Qf0;->k:Lcom/android/tools/r8/internal/Qf0;

    invoke-static {v3, v6}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    sget-object v3, Lcom/android/tools/r8/internal/lg0;->w:Lcom/android/tools/r8/internal/lg0;

    sget-object v6, Lcom/android/tools/r8/internal/Qf0;->m:Lcom/android/tools/r8/internal/Qf0;

    invoke-static {v3, v6}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    sget-object v3, Lcom/android/tools/r8/internal/lg0;->A:Lcom/android/tools/r8/internal/lg0;

    sget-object v6, Lcom/android/tools/r8/internal/Qf0;->n:Lcom/android/tools/r8/internal/Qf0;

    invoke-static {v3, v6}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    sget-object v3, Lcom/android/tools/r8/internal/lg0;->B:Lcom/android/tools/r8/internal/lg0;

    sget-object v7, Lcom/android/tools/r8/internal/Qf0;->p:Lcom/android/tools/r8/internal/Qf0;

    invoke-static {v3, v7}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    sget-object v3, Lcom/android/tools/r8/internal/lg0;->u:Lcom/android/tools/r8/internal/lg0;

    sget-object v8, Lcom/android/tools/r8/internal/Qf0;->l:Lcom/android/tools/r8/internal/Qf0;

    invoke-static {v3, v8}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    sget-object v3, Lcom/android/tools/r8/internal/lg0;->g:Lcom/android/tools/r8/internal/lg0;

    sget-object v9, Lcom/android/tools/r8/internal/Qf0;->o:Lcom/android/tools/r8/internal/Qf0;

    invoke-static {v3, v9}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    sget-object v3, Lcom/android/tools/r8/internal/lg0;->h:Lcom/android/tools/r8/internal/lg0;

    invoke-static {v3, v9}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    sget-object v3, Lcom/android/tools/r8/internal/lg0;->i:Lcom/android/tools/r8/internal/lg0;

    invoke-static {v3, v9}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    invoke-static {v0, v9}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    sget-object v0, Lcom/android/tools/r8/internal/lg0;->k:Lcom/android/tools/r8/internal/lg0;

    invoke-static {v0, v9}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    invoke-static {v1, v9}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    sget-object v0, Lcom/android/tools/r8/internal/lg0;->n:Lcom/android/tools/r8/internal/lg0;

    invoke-static {v0, v9}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    sget-object v0, Lcom/android/tools/r8/internal/lg0;->o:Lcom/android/tools/r8/internal/lg0;

    invoke-static {v0, v9}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    sget-object v1, Lcom/android/tools/r8/internal/lg0;->p:Lcom/android/tools/r8/internal/lg0;

    invoke-static {v1, v9}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    sget-object v1, Lcom/android/tools/r8/internal/lg0;->H:Lcom/android/tools/r8/internal/lg0;

    invoke-static {v1, v9}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    sget-object v1, Lcom/android/tools/r8/internal/lg0;->v:Lcom/android/tools/r8/internal/lg0;

    invoke-static {v1, v9}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    sget-object v1, Lcom/android/tools/r8/internal/lg0;->C:Lcom/android/tools/r8/internal/lg0;

    invoke-static {v1, v9}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    sget-object v1, Lcom/android/tools/r8/internal/lg0;->x:Lcom/android/tools/r8/internal/lg0;

    invoke-static {v1, v9}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    sget-object v1, Lcom/android/tools/r8/internal/lg0;->y:Lcom/android/tools/r8/internal/lg0;

    invoke-static {v1, v9}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    sget-object v1, Lcom/android/tools/r8/internal/lg0;->F:Lcom/android/tools/r8/internal/lg0;

    invoke-static {v1, v9}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    sget-object v1, Lcom/android/tools/r8/internal/lg0;->z:Lcom/android/tools/r8/internal/lg0;

    invoke-static {v1, v9}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    invoke-static {v0, v4}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    invoke-static {v0, v5}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    invoke-static {v0, v8}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    invoke-static {v0, v6}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    invoke-static {v0, v7}, Lcom/android/tools/r8/internal/Wx;->a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V

    invoke-static {}, Lcom/android/tools/r8/internal/lg0;->values()[Lcom/android/tools/r8/internal/lg0;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    sget-object v5, Lcom/android/tools/r8/internal/Wx;->a:Ljava/util/EnumMap;

    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_2

    sget-boolean v7, Lcom/android/tools/r8/internal/Wx;->c:Z

    if-nez v7, :cond_1

    sget-object v7, Lcom/android/tools/r8/internal/lg0;->o:Lcom/android/tools/r8/internal/lg0;

    if-eq v4, v7, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-gt v7, v8, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_1
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/tools/r8/internal/Qf0;->values()[Lcom/android/tools/r8/internal/Qf0;

    move-result-object v0

    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    sget-object v4, Lcom/android/tools/r8/internal/Wx;->b:Ljava/util/EnumMap;

    invoke-virtual {v4, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_4

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/android/tools/r8/internal/Qf0;->i:Lcom/android/tools/r8/internal/Qf0;

    sget-object v1, Lcom/android/tools/r8/internal/Qf0;->j:Lcom/android/tools/r8/internal/Qf0;

    sget-object v2, Lcom/android/tools/r8/internal/Qf0;->f:Lcom/android/tools/r8/internal/Qf0;

    sget-object v3, Lcom/android/tools/r8/internal/Qf0;->p:Lcom/android/tools/r8/internal/Qf0;

    sget-object v4, Lcom/android/tools/r8/internal/Qf0;->n:Lcom/android/tools/r8/internal/Qf0;

    sget-object v5, Lcom/android/tools/r8/internal/Qf0;->l:Lcom/android/tools/r8/internal/Qf0;

    filled-new-array {v1, v2, v3, v4, v5}, [Lcom/android/tools/r8/internal/Qf0;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/lg0;Lcom/android/tools/r8/internal/Qf0;)V
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/Wx;->a:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, Lcom/android/tools/r8/internal/Wx;->b:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v2, :cond_3

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method
