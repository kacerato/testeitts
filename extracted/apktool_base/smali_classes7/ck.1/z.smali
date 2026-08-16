.class public Lck/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field public final b:[C

.field public final c:[B

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>([C[BIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lck/z;->b:[C

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lck/z;->c:[B

    iput p3, p0, Lck/z;->d:I

    iput p4, p0, Lck/z;->e:I

    iput p5, p0, Lck/z;->f:I

    iput p6, p0, Lck/z;->g:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lck/z;->e:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lck/z;->d:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lck/z;->g:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lck/z;->f:I

    return v0
.end method

.method public e()[C
    .locals 1

    iget-object v0, p0, Lck/z;->b:[C

    return-object v0
.end method

.method public f()[B
    .locals 1

    iget-object v0, p0, Lck/z;->c:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method
