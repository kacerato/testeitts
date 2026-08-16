.class public Lol/t$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lol/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lol/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(ZIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lol/t$c;->a:Z

    iput p2, p0, Lol/t$c;->b:I

    iput p3, p0, Lol/t$c;->c:I

    iput p4, p0, Lol/t$c;->d:I

    iput p5, p0, Lol/t$c;->e:I

    iput p6, p0, Lol/t$c;->f:I

    iput p7, p0, Lol/t$c;->g:I

    return-void
.end method


# virtual methods
.method public get()Lol/o;
    .locals 9

    new-instance v8, Lol/o$c;

    iget-boolean v1, p0, Lol/t$c;->a:Z

    iget v2, p0, Lol/t$c;->b:I

    iget v3, p0, Lol/t$c;->c:I

    iget v4, p0, Lol/t$c;->d:I

    iget v5, p0, Lol/t$c;->e:I

    iget v6, p0, Lol/t$c;->f:I

    iget v7, p0, Lol/t$c;->g:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lol/o$c;-><init>(ZIIIIII)V

    return-object v8
.end method

.method public getN()I
    .locals 1

    iget v0, p0, Lol/t$c;->b:I

    return v0
.end method
