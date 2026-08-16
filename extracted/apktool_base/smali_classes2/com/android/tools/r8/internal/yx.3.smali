.class public abstract Lcom/android/tools/r8/internal/yx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Lcom/android/tools/r8/internal/vx;

.field public static final B:Lcom/android/tools/r8/internal/vx;

.field public static final C:Lcom/android/tools/r8/internal/vx;

.field public static final D:Lcom/android/tools/r8/internal/vx;

.field public static final E:Lcom/android/tools/r8/internal/vx;

.field public static final F:Lcom/android/tools/r8/internal/vx;

.field public static final G:Lcom/android/tools/r8/internal/vx;

.field public static final H:Lcom/android/tools/r8/internal/vx;

.field public static final I:Lcom/android/tools/r8/internal/vx;

.field public static final J:Lcom/android/tools/r8/internal/vx;

.field public static final K:Lcom/android/tools/r8/internal/vx;

.field public static final L:Lcom/android/tools/r8/internal/vx;

.field public static final M:Lcom/android/tools/r8/internal/vx;

.field public static final N:Lcom/android/tools/r8/internal/vx;

.field public static final O:Lcom/android/tools/r8/internal/vx;

.field public static final a:Lcom/android/tools/r8/internal/vx;

.field public static final b:Lcom/android/tools/r8/internal/vx;

.field public static final c:Lcom/android/tools/r8/internal/wx;

.field public static final d:Lcom/android/tools/r8/internal/wx;

.field public static final e:Lcom/android/tools/r8/internal/wx;

.field public static final f:Lcom/android/tools/r8/internal/vx;

.field public static final g:Lcom/android/tools/r8/internal/vx;

.field public static final h:Lcom/android/tools/r8/internal/vx;

.field public static final i:Lcom/android/tools/r8/internal/vx;

.field public static final j:Lcom/android/tools/r8/internal/vx;

.field public static final k:Lcom/android/tools/r8/internal/vx;

.field public static final l:Lcom/android/tools/r8/internal/vx;

.field public static final m:Lcom/android/tools/r8/internal/vx;

.field public static final n:Lcom/android/tools/r8/internal/vx;

.field public static final o:Lcom/android/tools/r8/internal/wx;

.field public static final p:Lcom/android/tools/r8/internal/vx;

.field public static final q:Lcom/android/tools/r8/internal/vx;

.field public static final r:Lcom/android/tools/r8/internal/vx;

.field public static final s:Lcom/android/tools/r8/internal/vx;

.field public static final t:Lcom/android/tools/r8/internal/vx;

.field public static final u:Lcom/android/tools/r8/internal/vx;

.field public static final v:Lcom/android/tools/r8/internal/vx;

.field public static final w:Lcom/android/tools/r8/internal/vx;

.field public static final x:Lcom/android/tools/r8/internal/vx;

.field public static final y:Lcom/android/tools/r8/internal/vx;

.field public static final z:Lcom/android/tools/r8/internal/vx;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/android/tools/r8/internal/vx;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/internal/yx;->a:Lcom/android/tools/r8/internal/vx;

    new-instance v0, Lcom/android/tools/r8/internal/vx;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/internal/yx;->b:Lcom/android/tools/r8/internal/vx;

    sget-object v0, Lcom/android/tools/r8/internal/ia0;->c:[Lcom/android/tools/r8/internal/ia0;

    invoke-virtual {v0}, [Lcom/android/tools/r8/internal/ia0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/internal/ia0;

    new-instance v3, Lcom/android/tools/r8/internal/wx;

    invoke-direct {v3, v1, v0}, Lcom/android/tools/r8/internal/wx;-><init>(I[Lcom/android/tools/r8/internal/PI;)V

    sput-object v3, Lcom/android/tools/r8/internal/yx;->c:Lcom/android/tools/r8/internal/wx;

    sget-object v0, Lcom/android/tools/r8/internal/p90;->c:[Lcom/android/tools/r8/internal/p90;

    invoke-virtual {v0}, [Lcom/android/tools/r8/internal/p90;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/internal/p90;

    iget v4, v3, Lcom/android/tools/r8/internal/xx;->b:I

    add-int/2addr v4, v1

    new-instance v5, Lcom/android/tools/r8/internal/wx;

    invoke-direct {v5, v4, v0}, Lcom/android/tools/r8/internal/wx;-><init>(I[Lcom/android/tools/r8/internal/PI;)V

    sput-object v5, Lcom/android/tools/r8/internal/yx;->d:Lcom/android/tools/r8/internal/wx;

    sget-object v0, Lcom/android/tools/r8/internal/R80;->c:[Lcom/android/tools/r8/internal/R80;

    invoke-virtual {v0}, [Lcom/android/tools/r8/internal/R80;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/internal/R80;

    iget v6, v5, Lcom/android/tools/r8/internal/xx;->b:I

    add-int/2addr v6, v4

    new-instance v7, Lcom/android/tools/r8/internal/wx;

    invoke-direct {v7, v6, v0}, Lcom/android/tools/r8/internal/wx;-><init>(I[Lcom/android/tools/r8/internal/PI;)V

    sput-object v7, Lcom/android/tools/r8/internal/yx;->e:Lcom/android/tools/r8/internal/wx;

    iget v0, v7, Lcom/android/tools/r8/internal/xx;->b:I

    add-int/2addr v6, v0

    new-instance v0, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v0, v6}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/internal/yx;->f:Lcom/android/tools/r8/internal/vx;

    add-int/lit8 v0, v6, 0x1

    new-instance v7, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v7, v0}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v7, Lcom/android/tools/r8/internal/yx;->g:Lcom/android/tools/r8/internal/vx;

    add-int/lit8 v0, v6, 0x2

    new-instance v7, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v7, v0}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v7, Lcom/android/tools/r8/internal/yx;->h:Lcom/android/tools/r8/internal/vx;

    add-int/lit8 v0, v6, 0x3

    new-instance v7, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v7, v0}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v7, Lcom/android/tools/r8/internal/yx;->i:Lcom/android/tools/r8/internal/vx;

    add-int/lit8 v0, v6, 0x4

    new-instance v7, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v7, v0}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v7, Lcom/android/tools/r8/internal/yx;->j:Lcom/android/tools/r8/internal/vx;

    add-int/lit8 v0, v6, 0x5

    new-instance v7, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v7, v0}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v7, Lcom/android/tools/r8/internal/yx;->k:Lcom/android/tools/r8/internal/vx;

    add-int/lit8 v6, v6, 0x6

    new-instance v0, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v0, v6}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/internal/yx;->l:Lcom/android/tools/r8/internal/vx;

    iget v0, v3, Lcom/android/tools/r8/internal/xx;->b:I

    add-int/lit8 v3, v0, 0x1

    new-instance v6, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v6, v3}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v6, Lcom/android/tools/r8/internal/yx;->m:Lcom/android/tools/r8/internal/vx;

    const/4 v3, 0x2

    add-int/2addr v0, v3

    new-instance v6, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v6, v0}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v6, Lcom/android/tools/r8/internal/yx;->n:Lcom/android/tools/r8/internal/vx;

    sget-object v0, Lcom/android/tools/r8/internal/o90;->c:[Lcom/android/tools/r8/internal/o90;

    invoke-virtual {v0}, [Lcom/android/tools/r8/internal/o90;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/internal/o90;

    iget v6, v5, Lcom/android/tools/r8/internal/xx;->b:I

    add-int/2addr v6, v4

    new-instance v7, Lcom/android/tools/r8/internal/wx;

    invoke-direct {v7, v6, v0}, Lcom/android/tools/r8/internal/wx;-><init>(I[Lcom/android/tools/r8/internal/PI;)V

    sput-object v7, Lcom/android/tools/r8/internal/yx;->o:Lcom/android/tools/r8/internal/wx;

    iget v0, v7, Lcom/android/tools/r8/internal/xx;->b:I

    add-int/2addr v6, v0

    new-instance v0, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v0, v6}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/internal/yx;->p:Lcom/android/tools/r8/internal/vx;

    add-int/lit8 v0, v6, 0x1

    new-instance v7, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v7, v0}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v7, Lcom/android/tools/r8/internal/yx;->q:Lcom/android/tools/r8/internal/vx;

    add-int/lit8 v7, v6, 0x2

    new-instance v8, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v8, v7}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v8, Lcom/android/tools/r8/internal/yx;->r:Lcom/android/tools/r8/internal/vx;

    add-int/lit8 v8, v6, 0x3

    new-instance v9, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v9, v8}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v9, Lcom/android/tools/r8/internal/yx;->s:Lcom/android/tools/r8/internal/vx;

    add-int/lit8 v9, v6, 0x4

    new-instance v10, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v10, v9}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v10, Lcom/android/tools/r8/internal/yx;->t:Lcom/android/tools/r8/internal/vx;

    add-int/lit8 v10, v6, 0x5

    new-instance v11, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v11, v10}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v11, Lcom/android/tools/r8/internal/yx;->u:Lcom/android/tools/r8/internal/vx;

    add-int/lit8 v11, v6, 0x6

    new-instance v12, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v12, v11}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v12, Lcom/android/tools/r8/internal/yx;->v:Lcom/android/tools/r8/internal/vx;

    add-int/lit8 v12, v6, 0x7

    new-instance v13, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v13, v12}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v13, Lcom/android/tools/r8/internal/yx;->w:Lcom/android/tools/r8/internal/vx;

    new-instance v13, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v13, v6}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v13, Lcom/android/tools/r8/internal/yx;->x:Lcom/android/tools/r8/internal/vx;

    new-instance v13, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v13, v0}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v13, Lcom/android/tools/r8/internal/yx;->y:Lcom/android/tools/r8/internal/vx;

    new-instance v0, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v0, v7}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/internal/yx;->z:Lcom/android/tools/r8/internal/vx;

    new-instance v0, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v0, v8}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/internal/yx;->A:Lcom/android/tools/r8/internal/vx;

    new-instance v0, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v0, v9}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/internal/yx;->B:Lcom/android/tools/r8/internal/vx;

    new-instance v0, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v0, v10}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/internal/yx;->C:Lcom/android/tools/r8/internal/vx;

    new-instance v0, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v0, v11}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/internal/yx;->D:Lcom/android/tools/r8/internal/vx;

    new-instance v0, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v0, v12}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/internal/yx;->E:Lcom/android/tools/r8/internal/vx;

    add-int/lit8 v6, v6, 0x8

    new-instance v0, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v0, v6}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/internal/yx;->F:Lcom/android/tools/r8/internal/vx;

    new-instance v0, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/internal/yx;->G:Lcom/android/tools/r8/internal/vx;

    new-instance v0, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v0, v3}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/internal/yx;->H:Lcom/android/tools/r8/internal/vx;

    new-instance v0, Lcom/android/tools/r8/internal/vx;

    const/4 v6, 0x3

    invoke-direct {v0, v6}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/internal/yx;->I:Lcom/android/tools/r8/internal/vx;

    iget v0, v5, Lcom/android/tools/r8/internal/xx;->b:I

    add-int/2addr v4, v0

    new-instance v0, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v0, v4}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/internal/yx;->J:Lcom/android/tools/r8/internal/vx;

    add-int/lit8 v0, v4, 0x1

    new-instance v5, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v5, v0}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v5, Lcom/android/tools/r8/internal/yx;->K:Lcom/android/tools/r8/internal/vx;

    add-int/2addr v4, v3

    new-instance v0, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v0, v4}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/internal/yx;->L:Lcom/android/tools/r8/internal/vx;

    new-instance v0, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/internal/yx;->M:Lcom/android/tools/r8/internal/vx;

    new-instance v0, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/internal/yx;->N:Lcom/android/tools/r8/internal/vx;

    new-instance v0, Lcom/android/tools/r8/internal/vx;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/internal/yx;->O:Lcom/android/tools/r8/internal/vx;

    return-void
.end method

.method public static synthetic a(I)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq p0, v1, :cond_2

    if-eq p0, v3, :cond_1

    const/4 v4, 0x5

    if-eq p0, v4, :cond_2

    const/4 v4, 0x6

    if-eq p0, v4, :cond_0

    const/16 v4, 0x8

    if-eq p0, v4, :cond_2

    const/16 v4, 0x9

    if-eq p0, v4, :cond_0

    const/16 v4, 0xb

    if-eq p0, v4, :cond_2

    const-string v4, "visibility"

    aput-object v4, v0, v2

    goto :goto_0

    :cond_0
    const-string v4, "memberKind"

    aput-object v4, v0, v2

    goto :goto_0

    :cond_1
    const-string v4, "kind"

    aput-object v4, v0, v2

    goto :goto_0

    :cond_2
    const-string v4, "modality"

    aput-object v4, v0, v2

    :goto_0
    const-string v2, "kotlin/metadata/internal/metadata/deserialization/Flags"

    aput-object v2, v0, v1

    packed-switch p0, :pswitch_data_0

    const-string p0, "getClassFlags"

    aput-object p0, v0, v3

    goto :goto_1

    :pswitch_0
    const-string p0, "getAccessorFlags"

    aput-object p0, v0, v3

    goto :goto_1

    :pswitch_1
    const-string p0, "getPropertyFlags"

    aput-object p0, v0, v3

    goto :goto_1

    :pswitch_2
    const-string p0, "getFunctionFlags"

    aput-object p0, v0, v3

    goto :goto_1

    :pswitch_3
    const-string p0, "getConstructorFlags"

    aput-object p0, v0, v3

    :goto_1
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
