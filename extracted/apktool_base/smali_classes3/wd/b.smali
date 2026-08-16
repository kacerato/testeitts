.class public Lwd/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lwd/b;->a:I

    return-void
.end method

.method public get()I
    .locals 1

    iget v0, p0, Lwd/b;->a:I

    return v0
.end method
