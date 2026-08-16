.class public Lwd/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/c;


# instance fields
.field public a:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    iput p1, p0, Lwd/a;->a:F

    return-void
.end method

.method public get()F
    .locals 1

    iget v0, p0, Lwd/a;->a:F

    return v0
.end method
