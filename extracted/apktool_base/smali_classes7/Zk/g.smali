.class public LZk/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYk/e;


# static fields
.field public static final k:LZk/g;

.field public static final l:LZk/g;

.field public static final m:LZk/g;


# instance fields
.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public final i:I

.field public j:LZk/a;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v9, LZk/g;

    const/4 v7, 0x3

    const/16 v8, 0x80

    const-string v1, "bike128"

    const/16 v2, 0x3023

    const/16 v3, 0x8e

    const/16 v4, 0x86

    const/16 v5, 0x100

    const/4 v6, 0x5

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, LZk/g;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v9, LZk/g;->k:LZk/g;

    new-instance v0, LZk/g;

    const/16 v17, 0x3

    const/16 v18, 0xc0

    const-string v11, "bike192"

    const/16 v12, 0x6053

    const/16 v13, 0xce

    const/16 v14, 0xc7

    const/16 v15, 0x100

    const/16 v16, 0x5

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, LZk/g;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, LZk/g;->l:LZk/g;

    new-instance v0, LZk/g;

    const/4 v8, 0x3

    const/16 v9, 0x100

    const-string v2, "bike256"

    const v3, 0xa00d

    const/16 v4, 0x112

    const/16 v5, 0x108

    const/16 v6, 0x100

    const/4 v7, 0x5

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, LZk/g;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, LZk/g;->m:LZk/g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIII)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZk/g;->b:Ljava/lang/String;

    iput p2, p0, LZk/g;->c:I

    iput p3, p0, LZk/g;->d:I

    iput p4, p0, LZk/g;->e:I

    iput p5, p0, LZk/g;->f:I

    iput p6, p0, LZk/g;->g:I

    iput p7, p0, LZk/g;->h:I

    iput p8, p0, LZk/g;->i:I

    new-instance p1, LZk/a;

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, LZk/a;-><init>(IIIIII)V

    iput-object p1, p0, LZk/g;->j:LZk/a;

    return-void
.end method


# virtual methods
.method public a()LZk/a;
    .locals 1

    iget-object v0, p0, LZk/g;->j:LZk/a;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LZk/g;->f:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, LZk/g;->f:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LZk/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, LZk/g;->g:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, LZk/g;->c:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, LZk/g;->c:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, LZk/g;->i:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, LZk/g;->e:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, LZk/g;->h:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, LZk/g;->d:I

    return v0
.end method
