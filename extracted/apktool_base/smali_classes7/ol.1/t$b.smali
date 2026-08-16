.class public Lol/t$b;
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
    name = "b"
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

    iput-boolean p1, p0, Lol/t$b;->a:Z

    iput p2, p0, Lol/t$b;->b:I

    iput p3, p0, Lol/t$b;->c:I

    iput p4, p0, Lol/t$b;->d:I

    iput p5, p0, Lol/t$b;->e:I

    iput p6, p0, Lol/t$b;->f:I

    iput p7, p0, Lol/t$b;->g:I

    return-void
.end method


# virtual methods
.method public get()Lol/o;
    .locals 9

    new-instance v8, Lol/o$b;

    iget-boolean v1, p0, Lol/t$b;->a:Z

    iget v2, p0, Lol/t$b;->b:I

    iget v3, p0, Lol/t$b;->c:I

    iget v4, p0, Lol/t$b;->d:I

    iget v5, p0, Lol/t$b;->e:I

    iget v6, p0, Lol/t$b;->f:I

    iget v7, p0, Lol/t$b;->g:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lol/o$b;-><init>(ZIIIIII)V

    return-object v8
.end method

.method public getN()I
    .locals 1

    iget v0, p0, Lol/t$b;->b:I

    return v0
.end method
