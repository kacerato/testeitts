.class public Lz5/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz5/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lo4/f;
    .locals 1

    sget-object v0, Lz5/a;->n0:Lo4/f;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
