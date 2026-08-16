.class public Lkl/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkl/l$a;,
        Lkl/l$b;,
        Lkl/l$c;
    }
.end annotation


# static fields
.field public static final d:Lkl/l;

.field public static final e:Lkl/l;

.field public static final f:Lkl/l;

.field public static final g:Lkl/l;

.field public static final h:Lkl/l;

.field public static final i:Lkl/l;

.field public static final j:Lkl/l;

.field public static final k:Lkl/l;

.field public static final l:Lkl/l;

.field public static final m:Lkl/l;

.field public static final n:Lkl/l;

.field public static final o:Lkl/l;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkl/l;

    const-string v1, "picnicl1fs"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkl/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkl/l;->d:Lkl/l;

    new-instance v0, Lkl/l;

    const-string v1, "picnicl1ur"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lkl/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkl/l;->e:Lkl/l;

    new-instance v0, Lkl/l;

    const-string v1, "picnicl3fs"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lkl/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkl/l;->f:Lkl/l;

    new-instance v0, Lkl/l;

    const-string v1, "picnicl3ur"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lkl/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkl/l;->g:Lkl/l;

    new-instance v0, Lkl/l;

    const-string v1, "picnicl5fs"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lkl/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkl/l;->h:Lkl/l;

    new-instance v0, Lkl/l;

    const-string v1, "picnicl5ur"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lkl/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkl/l;->i:Lkl/l;

    new-instance v0, Lkl/l;

    const-string v1, "picnic3l1"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lkl/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkl/l;->j:Lkl/l;

    new-instance v0, Lkl/l;

    const-string v1, "picnic3l3"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lkl/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkl/l;->k:Lkl/l;

    new-instance v0, Lkl/l;

    const-string v1, "picnic3l5"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lkl/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkl/l;->l:Lkl/l;

    new-instance v0, Lkl/l;

    const-string v1, "picnicl1full"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lkl/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkl/l;->m:Lkl/l;

    new-instance v0, Lkl/l;

    const-string v1, "picnicl3full"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lkl/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkl/l;->n:Lkl/l;

    new-instance v0, Lkl/l;

    const-string v1, "picnicl5full"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lkl/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkl/l;->o:Lkl/l;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkl/l;->b:Ljava/lang/String;

    iput p2, p0, Lkl/l;->c:I

    return-void
.end method


# virtual methods
.method public a()Lkl/h;
    .locals 3

    iget v0, p0, Lkl/l;->c:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    new-instance v0, Lkl/h;

    iget v1, p0, Lkl/l;->c:I

    sget-object v2, Lkl/l$c;->a:Lkl/f;

    invoke-direct {v0, v1, v2}, Lkl/h;-><init>(ILkl/c;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lkl/h;

    iget v1, p0, Lkl/l;->c:I

    sget-object v2, Lkl/l$b;->a:Lkl/e;

    invoke-direct {v0, v1, v2}, Lkl/h;-><init>(ILkl/c;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lkl/h;

    iget v1, p0, Lkl/l;->c:I

    sget-object v2, Lkl/l$a;->a:Lkl/d;

    invoke-direct {v0, v1, v2}, Lkl/h;-><init>(ILkl/c;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkl/l;->b:Ljava/lang/String;

    return-object v0
.end method
