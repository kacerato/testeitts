.class public final Lql/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final d:J = 0x1L


# instance fields
.field public final b:I

.field public final c:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lql/E;->b:I

    iput-object p2, p0, Lql/E;->c:[B

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lql/E;->b:I

    return v0
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lql/E;->c:[B

    invoke-static {v0}, Lql/O;->d([B)[B

    move-result-object v0

    return-object v0
.end method
